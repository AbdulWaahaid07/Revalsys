CREATE PROCEDURE [dbo].[spaddEMP]
	@Employee_Name varchar(255),
	@Employee_Designation varchar(20),
	@Employee_Salary money,
	@Employee_Email varchar(255),
	@Employee_Mobile varchar(15),
	@Employee_Qualification varchar(20),
	@Manager varchar(20)
AS
	BEGIN
		
		
		INSERT INTO dbo.Employee(Employee_Name, Employee_Designation, Employee_Salary, Employee_Email, Employee_Mobile, Employee_Qualification, Manager) 
        
        VALUES(@Employee_Name, @Employee_Designation, @Employee_Salary, @Employee_Email, @Employee_Mobile, @Employee_Qualification, @Manager);
         

	END 
