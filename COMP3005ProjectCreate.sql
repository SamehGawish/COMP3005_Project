
CREATE TABLE member (
    MemberID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    DateOfBirth DATE,
    FitnessGoals TEXT,
    Weight DECIMAL(5,2),
    Loyalty INT
);

CREATE TABLE Trainer (
    TrainerID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255)
);

CREATE TABLE LoyaltyProgram (
    MemberID INT PRIMARY KEY,
    TotalPoints INT,
    PointsPerTransaction INT,
    Redeemed INT,
    FOREIGN KEY (MemberID) REFERENCES member(MemberID)
);

CREATE TABLE BillingAndPayment (
    TransactionID INT PRIMARY KEY,
    MemberID INT,
    Amount DECIMAL(10,2),
    Date DATE,
    PaymentMethod VARCHAR(50),
    Service VARCHAR(255),
    FOREIGN KEY (MemberID) REFERENCES member(MemberID)
);

CREATE TABLE FitnessClass (
    ClassID INT PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT,
    Capacity INT,
    Location VARCHAR(255)
);

CREATE TABLE Equipment (
    EquipmentID INT PRIMARY KEY,
    Kind VARCHAR(255),
    Location VARCHAR(255),
    MaintenanceSchedule DATE
);

CREATE TABLE Room (
    RoomID INT PRIMARY KEY,
    Name VARCHAR(255),
    Capacity INT,
    RoomAvailable INT
);

CREATE TABLE AdministrativeStaff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Role VARCHAR(255),
    WorkSchedule TEXT
);

CREATE TABLE PersonalTrainingSession (
    SessionID INT PRIMARY KEY,
    Duration INT,
    Day DATE,
    Time TIME,
    MemberID INT,
    TrainerID INT,
    FOREIGN KEY (MemberID) REFERENCES member(MemberID),
    FOREIGN KEY (TrainerID) REFERENCES Trainer(TrainerID)
);

CREATE TABLE Register (
    MemberID INT,
    ClassID INT,
    PRIMARY KEY (MemberID, ClassID),
    FOREIGN KEY (MemberID) REFERENCES member(MemberID),
    FOREIGN KEY (ClassID) REFERENCES FitnessClass(ClassID)
);

