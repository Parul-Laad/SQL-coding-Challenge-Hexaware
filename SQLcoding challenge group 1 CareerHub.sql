DROP DATABASE IF EXISTS CareerHub;
CREATE DATABASE CareerHub;
USE CareerHub;

DROP TABLE IF EXISTS Companies;
DROP TABLE IF EXISTS Jobs;
DROP TABLE IF EXISTS Applicants;
DROP TABLE IF EXISTS Applications;


-- Companies Table
CREATE TABLE Companies (
    CompanyID INT PRIMARY KEY,
    CompanyName VARCHAR(255),
    Location VARCHAR(255)
);


-- Jobs Table
CREATE TABLE Jobs (
    JobID INT PRIMARY KEY,
    CompanyID INT,
    JobTitle VARCHAR(255),
    JobDescription TEXT,
    JobLocation VARCHAR(255),
    Salary DECIMAL(10, 2),
    JobType VARCHAR(50),
    PostedDate DATETIME,
    FOREIGN KEY (CompanyID) REFERENCES Companies(CompanyID)
);


-- Applicants Table
CREATE TABLE Applicants (
    ApplicantID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(20),
    Resume TEXT
);


-- Applications Table
CREATE TABLE Applications (
    ApplicationID INT PRIMARY KEY,
    JobID INT,
    ApplicantID INT,
    ApplicationDate DATETIME,
    CoverLetter TEXT,
    FOREIGN KEY (JobID) REFERENCES Jobs(JobID),
    FOREIGN KEY (ApplicantID) REFERENCES Applicants(ApplicantID)
);


-- Inserting sample data into Companies table
INSERT INTO Companies (CompanyID, CompanyName, Location) 
VALUES
		(1, 'Hexaware Technologies', 'Mumbai'),
		(2, 'Tata Consultancy Services', 'Mumbai'),
		(3, 'Infosys', 'Bangalore'),
		(4, 'Wipro Limited', 'Bangalore'),
		(5, 'Tech Mahindra', 'Pune'),
		(6, 'HCL Technologies', 'Noida'),
		(7, 'IBM India', 'Bangalore'),
		(8, 'Accenture', 'Mumbai'),
		(9, 'Cognizant', 'Chennai'),
		(10, 'Capgemini', 'Pune'),
		(11, 'Microsoft Corporation', 'Hyderabad'),
		(12, 'Amazon Development Centre', 'Bangalore'),
		(13, 'Google India', 'Hyderabad');
      
      
-- Inserting sample data into Jobs table
INSERT INTO Jobs (JobID, CompanyID, JobTitle, JobDescription, JobLocation, Salary, JobType, PostedDate) 
VALUES
		(101, 1, 'Software Engineer', 'Develop and maintain software applications', 'Mumbai', 80000, 'Full-time', '2024-04-01'),
		(102, 1, 'Web Developer', 'Design and develop web applications', 'Bangalore', 75000, 'Full-time', '2024-04-03'),
		(103, 6, 'System Administrator', 'Manage and maintain IT systems', 'Noida', 65000, 'Full-time', '2024-04-06'),
		(104, 8, 'Project Manager', 'Manage projects and client relationships', 'Mumbai', 90000, 'Part-time', '2024-04-08'),
		(105, 11, 'Cloud Engineer', 'Manage and deploy cloud infrastructure', 'Hyderabad', 85000, 'Full-time', '2024-04-11'),
		(106, 13, 'Machine Learning Engineer', 'Develop machine learning models and algorithms', 'Hyderabad', 95000, 'Full-time', '2024-04-13'),
		(107, 2, 'Data Analyst', 'Analyze data and generate insights', 'Mumbai', 70000, 'Contract', '2024-04-02'),
		(108, 4, 'Business Analyst', 'Analyze business processes and requirements', 'Bangalore', 75000, 'Full-time', '2024-04-04'),
		(109, 7, 'Software Developer', 'Develop software solutions for clients', 'Bangalore', 80000, 'Part-time', '2024-04-07'),
		(110, 9, 'Quality Assurance Analyst', 'Test software applications for quality assurance', 'Chennai', 70000, 'Full-time', '2024-04-09'),
		(111, 10, 'UI/UX Designer', 'Design user interfaces and experiences', 'Pune', 75000, 'Full-time', '2024-04-10'),
		(112, 12, 'Data Scientist', 'Analyze and interpret complex data sets', 'Bangalore', 90000, 'Full-time', '2024-04-12'),
		(113, 5, 'Network Engineer', 'Design and manage network infrastructure', 'Pune', 70000, 'Contract', '2024-04-05'),
		(114, 1, 'Database Administrator', 'Manage and optimize database systems', 'Mumbai', 85000, 'Full-time', '2024-04-15');
      
      
-- Inserting sample data into Applicants table
INSERT INTO Applicants (ApplicantID, FirstName, LastName, Email, Phone, Resume) 
VALUES
		(201, 'Amit', 'Sharma', 'amit.sharma@example.com', '9876543210', 'Resume_Amit.pdf'),
		(202, 'Priya', 'Patel', 'priya.patel@example.com', '8765432109', 'Resume_Priya.pdf'),
		(203, 'Rahul', 'Singh', 'rahul.singh@example.com', '7654321098', 'Resume_Rahul.pdf'),
		(204, 'Sneha', 'Desai', 'sneha.desai@example.com', '6543210987', 'Resume_Sneha.pdf'),
		(205, 'Rohit', 'Gupta', 'rohit.gupta@example.com', '5432109876', 'Resume_Rohit.pdf'),
		(206, 'Neha', 'Verma', 'neha.verma@example.com', '4321098765', 'Resume_Neha.pdf'),
		(207, 'Saurabh', 'Singh', 'saurabh.singh@example.com', '3210987654', 'Resume_Saurabh.pdf'),
		(208, 'Anjali', 'Yadav', 'anjali.yadav@example.com', '2109876543', 'Resume_Anjali.pdf'),
		(209, 'Manish', 'Mishra', 'manish.mishra@example.com', '1098765432', 'Resume_Manish.pdf'),
		(210, 'Pooja', 'Shah', 'pooja.shah@example.com', '0987654321', 'Resume_Pooja.pdf'),
		(211, 'Rakesh', 'Kumar', 'rakesh.kumar@example.com', '9876543210', 'Resume_Rakesh.pdf'),
		(212, 'Divya', 'Singh', 'divya.singh@example.com', '8765432109', 'Resume_Divya.pdf'),
		(213, 'Kunal', 'Joshi', 'kunal.joshi@example.com', '7654321098', 'Resume_Kunal.pdf');


-- Inserting sample data into Applications table
INSERT INTO Applications (ApplicationID, JobID, ApplicantID, ApplicationDate, CoverLetter)
VALUES
		(301, 101, 201, '2024-04-10 09:00:00', 'Cover Letter for Software Engineer position at Hexaware'),
		(302, 102, 204, '2024-04-11 10:00:00', 'Cover Letter for Web Developer position at Infosys'),
		(303, 103, 205, '2024-04-12 11:00:00', 'Cover Letter for System Administrator position at HCL Technologies'),
		(304, 101, 206, '2024-04-13 12:00:00', 'Cover Letter for Project Manager position at Accenture'),
		(305, 105, 207, '2024-04-14 13:00:00', 'Cover Letter for Cloud Engineer position at Microsoft Corporation'),
		(306, 106, 208, '2024-04-15 14:00:00', 'Cover Letter for Machine Learning Engineer position at Google India'),
		(307, 102, 209, '2024-04-16 15:00:00', 'Cover Letter for Data Analyst position at TCS'),
		(308, 103, 210, '2024-04-17 16:00:00', 'Cover Letter for Business Analyst position at Wipro'),
		(309, 109, 211, '2024-04-18 17:00:00', 'Cover Letter for Software Developer position at IBM India'),
		(310, 110, 211, '2024-04-19 18:00:00', 'Cover Letter for Quality Assurance Analyst position at Cognizant'),
		(311, 111, 212, '2024-04-20 19:00:00', 'Cover Letter for UI/UX Designer position at Capgemini'),
		(312, 111, 213, '2024-04-21 20:00:00', 'Cover Letter for Data Scientist position at Amazon Development Centre'),
		(313, 112, 212, '2024-04-22 21:00:00', 'Cover Letter for Network Engineer position at Tech Mahindra');
        

-- 1. Provide a SQL script that initializes the database for the Job Board scenario “CareerHub”.  
-- 2. Create tables for Companies, Jobs, Applicants and Applications.  
-- 3. Define appropriate primary keys, foreign keys, and constraints.  
-- 4. Ensure the script handles potential errors, such as if the database or tables already exist. 
-- These 4 questions are done above while creating tables and inserting values

-- 5. Write an SQL query to count the number of applications received for each job listing in the 
-- "Jobs" table. Display the job title and the corresponding application count. Ensure that it lists all 
-- jobs, even if they have no applications.
SELECT J.JobTitle, COUNT(Ap.ApplicationID) AS ApplicationCount
FROM Jobs J
LEFT JOIN Applications Ap ON J.JobID = Ap.JobID
GROUP BY J.JobID;


-- 6. Develop an SQL query that retrieves job listings from the "Jobs" table within a specified salary 
-- range. Allow parameters for the minimum and maximum salary values. Display the job title, 
-- company name, location, and salary for each matching job.
SELECT J.JobTitle, C.CompanyName, J.JobLocation, J.Salary
FROM Jobs J
INNER JOIN Companies C ON J.CompanyID = C.CompanyID
WHERE J.Salary BETWEEN 80000 AND 100000;


-- 7. Write an SQL query that retrieves the job application history for a specific applicant. Allow a 
-- parameter for the ApplicantID, and return a result set with the job titles, company names, and 
-- application dates for all the jobs the applicant has applied to.
SELECT Jobs.JobTitle, Companies.CompanyName, Applications.ApplicationDate
FROM Jobs
INNER JOIN Applications ON Jobs.JobID = Applications.JobID
INNER JOIN Companies ON Jobs.CompanyID = Companies.CompanyID
WHERE Applications.ApplicantID = 201;


-- 8. Create an SQL query that calculates and displays the average salary offered by all companies for 
-- job listings in the "Jobs" table. Ensure that the query filters out jobs with a salary of zero.
SELECT AVG(Salary) AS AverageSalary
FROM Jobs
WHERE Salary > 0;

-- 9. Write an SQL query to identify the company that has posted the most job listings. Display the 
-- company name along with the count of job listings they have posted. Handle ties if multiple 
-- companies have the same maximum count.
SELECT Companies.CompanyName, COUNT(*) AS JobCount
FROM Jobs
INNER JOIN Companies ON Jobs.CompanyID = Companies.CompanyID
GROUP BY Jobs.CompanyID
HAVING COUNT(*) = (
    SELECT MAX(JobCounts.Count)
    FROM (
        SELECT COUNT(*) AS Count
        FROM Jobs
        GROUP BY CompanyID
    ) AS JobCounts
);


-- 10. Find the applicants who have applied for positions in companies located in 'CityX' and have at 
-- least 3 years of experience.
-- asked to leave by sir


-- 11. Retrieve a list of distinct job titles with salaries between $60,000 and $80,000.
SELECT DISTINCT JobTitle
FROM Jobs
WHERE Salary BETWEEN 60000 AND 80000;


-- 12. Find the jobs that have not received any applications.
SELECT *
FROM Jobs
WHERE JobID NOT IN (SELECT DISTINCT JobID FROM Applications);


-- 13. Retrieve a list of job applicants along with the companies they have applied to and the positions they have applied for.
SELECT A.FirstName, A.LastName, C.CompanyName, J.JobTitle
FROM Applicants A
INNER JOIN Applications Ap ON A.ApplicantID = Ap.ApplicantID
INNER JOIN Jobs J ON Ap.JobID = J.JobID
INNER JOIN Companies C ON J.CompanyID = C.CompanyID;


-- 14. Retrieve a list of companies along with the count of jobs they have posted, even if they have not received any applications.
SELECT C.CompanyName,COUNT(J.JobID) AS JobCount
FROM Companies C
LEFT JOIN Jobs J ON C.CompanyID = J.CompanyID
GROUP BY C.CompanyName;


-- 15. List all applicants along with the companies and positions they have applied for, including those who have not applied.
SELECT A.FirstName, A.LastName, C.CompanyName, J.JobTitle
FROM Applicants A
LEFT JOIN Applications Ap ON A.ApplicantID = Ap.ApplicantID
LEFT JOIN Jobs J ON Ap.JobID = J.JobID
LEFT JOIN Companies C ON J.CompanyID = C.CompanyID;


-- 16. Find companies that have posted jobs with a salary higher than the average salary of all jobs.
SELECT DISTINCT C.CompanyName
FROM Companies C
INNER JOIN Jobs J ON C.CompanyID = J.CompanyID
WHERE J.Salary > (SELECT AVG(Salary) FROM Jobs);


-- 17. Display a list of applicants with their names and a concatenated string of their city and state.
ALTER TABLE Applicants
ADD COLUMN City VARCHAR(255),
ADD COLUMN State VARCHAR(255);

UPDATE Applicants
SET City = CASE
              WHEN ApplicantID = 201 THEN 'Mumbai'
              WHEN ApplicantID = 202 THEN 'Indore'
              WHEN ApplicantID = 203 THEN 'Bangalore'
              WHEN ApplicantID = 204 THEN 'Pune'
              WHEN ApplicantID = 205 THEN 'Chennai'
              WHEN ApplicantID = 206 THEN 'Noida'
              WHEN ApplicantID = 207 THEN 'Bangalore'
              WHEN ApplicantID = 208 THEN 'Chennai'
              WHEN ApplicantID = 209 THEN 'Chennai'
              WHEN ApplicantID = 210 THEN 'Visakhapatnam'
              WHEN ApplicantID = 211 THEN 'Bangalore'
              WHEN ApplicantID = 212 THEN 'Visakhapatnam'
              WHEN ApplicantID = 213 THEN 'Madurai'
          END,
    State = CASE
			  WHEN ApplicantID IN (201, 204, 208) THEN 'Maharashtra'
			  WHEN ApplicantID IN (203, 207, 211) THEN 'Karnataka'
			  WHEN ApplicantID IN (202, 208) THEN 'Madhya Pradesh'
			  WHEN ApplicantID IN (205, 209, 213) THEN 'Tamil Nadu'
			  WHEN ApplicantID IN (206) THEN 'Uttar Pradesh'
			  WHEN ApplicantID IN (210, 212) THEN 'Telangana'
		   END;

SELECT 
    CONCAT(FirstName, ' ', LastName) AS FullName,
    CONCAT(City, ', ', State) AS CityAndState
FROM 
    Applicants;


-- 18. Retrieve a list of jobs with titles containing either 'Developer' or 'Engineer'.
-- since no specific columns are specified therefore retrieving all columns
SELECT *
FROM Jobs
WHERE JobTitle LIKE '%Developer%' OR JobTitle LIKE '%Engineer%';


-- 19. Retrieve a list of applicants and the jobs they have applied for, including those who have not applied and jobs without applicants.
SELECT A.FirstName, A.LastName, J.JobTitle AS JobTitle
FROM Applicants A
LEFT JOIN Applications Ap ON A.ApplicantID = Ap.ApplicantID
LEFT JOIN Jobs J ON Ap.JobID = J.JobID
UNION
SELECT NULL AS FirstName, NULL AS LastName, JobTitle
FROM Jobs
WHERE JobID NOT IN (SELECT DISTINCT JobID FROM Applications);


-- 20. List all combinations of applicants and companies where the company is in a specific city and the applicant has more than 2 years of experience. For example: city=Chennai
-- Asked to leave by sir




        

        

