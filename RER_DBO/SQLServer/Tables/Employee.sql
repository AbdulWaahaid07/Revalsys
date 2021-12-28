
CREATE TABLE [dbo].[Employee]
(
	[Employee_Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Employee_Name] NCHAR(225) NOT NULL, 
    [Employee_Designation] NCHAR(20) NULL, 
    [Employee_Salary] MONEY NOT NULL, 
    [Employee_Email] NCHAR(255) NOT NULL, 
    [Employee_Mobile] NCHAR(15) NOT NULL, 
    [Employee_Qualification] NCHAR(20) NULL, 
    [Manager] NCHAR(20) NULL
)
