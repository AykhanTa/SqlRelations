CREATE TABLE Teachers
(
Id int PRIMARY KEY IDENTITY,
FullName nvarchar(255),
Age int,
Email nvarchar(255),
[Address] nvarchar(255),
IsDeleted bit
)

CREATE TABLE Educations
(
Id int PRIMARY KEY IDENTITY,
[Name] nvarchar(255),
)

--Butun userlerin siyahisini cixarsin.
SELECT * FROM Users

--Yashi 20 den kicik olan userlerin siyahisini cixarsin.
SELECT * FROM Users WHERE Age<20

--Userlerin sayini gosterin.
SELECT COUNT(*) FROM Users

--IsDeleted true olan muellimlerin FullName, Age, Address-ni gosterin.
SELECT FullName, Age,Address FROM Teachers WHERE IsDeleted='True'


--Yashi 30-dan yuxari olan muellimlerin sayini gosterin.
SELECT COUNT(*) FROM Teachers WHERE Age>30

CREATE TABLE Employee
(
Id int PRIMARY KEY IDENTITY,
FullName nvarchar(255) NOT NULL,
Age int CHECK(Age>0) NOT NULL,
Email nvarchar(255) NOT NULL UNIQUE,
Salary decimal(18,2) CHECK(Salary>300 AND Salary<2000) NOT NULL 
)

INSERT INTO Employee (FullName,Age,Email,Salary) 
VALUES 
('Aykhan',20,'aykhanft@code.edu.az',1000),
('Islam',35,'islam@code.edu.az',1500),
('Kamran',26,'kamrannb@code.edu.az',500)

SELECT * FROM Employee

CREATE TABLE TeacherEducation
(
Id int PRIMARY KEY IDENTITY,
TeacherId int FOREIGN KEY REFERENCES Teachers(Id),
EducationId int FOREIGN KEY REFERENCES Educations(Id)
)
