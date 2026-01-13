CREATE DATABASE DentalDB;
GO

USE DentalDB;
GO

CREATE SCHEMA dental;
GO

CREATE TABLE dental.Patients
(
	PatientNo VARCHAR(10) NOT NULL,
	PatientName VARCHAR(50) NOT NULL,

	PRIMARY KEY (PatientNo)
);
GO

CREATE TABLE dental.Dentists
(
	StaffNo VARCHAR(10) NOT NULL,
	DentistName VARCHAR(50) NOT NULL,

	PRIMARY KEY(StaffNo)
);
GO

CREATE TABLE dental.Appointments
(
	StaffNo VARCHAR(10) NOT NULL,
	AppointmentDate DATE NOT NULL,
	AppointmentTime TIME NOT NULL,
	PatientNo VARCHAR(10) NOT NULL

	PRIMARY KEY(StaffNo, AppointmentDate, AppointmentTime),
	FOREIGN KEY(StaffNo) REFERENCES dental.Dentists(StaffNo),
	FOREIGN KEY(PatientNo) REFERENCES dental.Patients(PatientNo)
);
GO

CREATE TABLE dental.Surgeries
(
	StaffNo VARCHAR(10) NOT NULL,
	AppointmentDate DATE NOT NULL,
	SurgeryNo VARCHAR(10) NOT NULL,

	PRIMARY KEY(StaffNo, AppointmentDate),
	FOREIGN KEY(StaffNo) REFERENCES dental.Dentists(StaffNo) 
);
GO