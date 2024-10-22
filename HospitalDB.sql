
-- إنشاء قاعدة البيانات
CREATE DATABASE HospitalDB;
USE HospitalDB;

-- جدول المرضى
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender ENUM('Male', 'Female'),
    Phone VARCHAR(15),
    Email VARCHAR(50),
    Address VARCHAR(100)
);

-- جدول الأطباء
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Specialty VARCHAR(50),
    Phone VARCHAR(15),
    Email VARCHAR(50)
);

-- جدول الأقسام
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(50),
    Location VARCHAR(100)
);

-- جدول المواعيد
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    DoctorID INT,
    DepartmentID INT,
    AppointmentDate DATETIME,
    Status ENUM('Scheduled', 'Completed', 'Cancelled'),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- جدول السجلات الطبية
CREATE TABLE MedicalRecords (
    RecordID INT PRIMARY KEY AUTO_INCREMENT,
    PatientID INT,
    DoctorID INT,
    VisitDate DATE,
    Diagnosis TEXT,
    Treatment TEXT,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- إدخال بيانات افتراضية
INSERT INTO Departments (DepartmentName, Location) VALUES 
('Cardiology', 'Building A'),
('Neurology', 'Building B'),
('Orthopedics', 'Building C');

INSERT INTO Doctors (FirstName, LastName, Specialty, Phone, Email) VALUES
('Ahmed', 'Khalil', 'Cardiologist', '0591234567', 'ahmed.khalil@example.com'),
('Nour', 'Salem', 'Neurologist', '0592345678', 'nour.salem@example.com'),
('Yaser', 'Ali', 'Orthopedic', '0593456789', 'yaser.ali@example.com');

INSERT INTO Patients (FirstName, LastName, DateOfBirth, Gender, Phone, Email, Address) VALUES
('Rahaf', 'Salman', '1990-05-20', 'Female', '0599876543', 'rahaf.salman@example.com', 'Ramallah'),
('Omar', 'Hassan', '1985-09-15', 'Male', '0598765432', 'omar.hassan@example.com', 'Nablus');
