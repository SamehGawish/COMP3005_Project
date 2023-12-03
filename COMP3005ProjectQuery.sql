
-- 1. Select all members
SELECT * FROM member;

-- 2. Insert a new member
INSERT INTO member (MemberID, Name, Email, DateOfBirth, FitnessGoals, Weight, Loyalty)
VALUES (1, 'John Doe', 'john.doe@example.com', '1990-01-01', 'Lose weight, build muscle', 80, 1);

-- 3. Update a member's weight
UPDATE member SET Weight = 78 WHERE MemberID = 1;

-- 4. Select all trainers
SELECT * FROM Trainer;

-- 5. Insert a new trainer
INSERT INTO Trainer (TrainerID, Name, Email)
VALUES (1, 'Jane Smith', 'jane.smith@example.com');

-- 6. Update a trainer's email
UPDATE Trainer SET Email = 'jane.smith@fitness.com' WHERE TrainerID = 1;

-- 7. Select all rooms with capacity more than 10
SELECT * FROM Room WHERE Capacity > 10;

-- 8. Insert a new fitness class
INSERT INTO FitnessClass (ClassID, Name, Description, Capacity, Location)
VALUES (1, 'Yoga Basics', 'Beginner yoga class', 15, 'Studio 1');

-- 9. Update the capacity for a fitness class
UPDATE FitnessClass SET Capacity = 20 WHERE ClassID = 1;

-- 10. Select all personal training sessions for a specific member
SELECT * FROM PersonalTrainingSession WHERE MemberID = 1;

