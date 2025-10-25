-- Create a table under your schema called planned_makes.
--- planned makesID, Project ID, Project Name, Description, date_created, 

CREATE TABLE Sep2025JunkDB.bhoomika_mahajan.planned_makes 
(
    PlannedmakeID INT IDENTITY (1,1) PRIMARY KEY,
    Project_name VARCHAR(255),
    Description VARCHAR(255),
    Date_created DATE
);
---Add three rows to your table that are your planned makes.

INSERT INTO Sep2025JunkDB.bhoomika_mahajan.planned_makes 
VALUES ('Tesla', 'External Parts', '2024-01-01'),
        ('Honda', 'Interiors', '2025-01-01'),
        ('Kia', 'Speakers', '2023-01-01');


--Change different values in one of your three rows.
UPDATE Sep2025JunkDB.bhoomika_mahajan.planned_makes
SET [Description] = 'Paint'
WHERE PlannedmakeID = 1;

SELECT * FROM Sep2025JunkDB.bhoomika_mahajan.planned_makes

DELETE Sep2025JunkDB.bhoomika_mahajan.planned_makes
where PlannedmakeID = 2;

DROP TABLE Sep2025JunkDB.bhoomika_mahajan.planned_makes;