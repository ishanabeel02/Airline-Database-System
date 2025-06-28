-- --------------------------------------------------------
--
--                        Triggers 
--
-- --------------------------------------------------------


-- Trigger to auto-update Is_available to 0 when pilot age is updated to over 60
CREATE TRIGGER trg_PilotRetireCheck
ON Pilot
AFTER UPDATE
AS
BEGIN
    UPDATE Pilot
    SET Is_available = 0
    WHERE Age >= 60
    AND Pilot_id IN (SELECT Pilot_id FROM inserted);
END;
GO

--Trigger to auto-assign a default Rating on new pilot insert
CREATE TRIGGER trg_DefaultPilotRating
ON Pilot
AFTER INSERT
AS
BEGIN
    UPDATE Pilot
    SET Rating = 3
    WHERE Rating IS NULL AND Pilot_id IN (SELECT Pilot_id FROM inserted);
END;
go
--Trigger to prevent salary drop
CREATE TRIGGER trg_PreventSalaryReduction
ON Pilot
FOR UPDATE
AS
BEGIN
    IF EXISTS 
	(
        SELECT * FROM inserted i
        JOIN deleted d ON i.Pilot_id = d.Pilot_id
        WHERE i.Salary < d.Salary
    )
    BEGIN
        RAISERROR ('You cannot reduce a pilot''s salary.', 16, 1);
        ROLLBACK;
    END
END;