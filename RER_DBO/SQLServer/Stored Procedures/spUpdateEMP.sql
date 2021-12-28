CREATE PROCEDURE [dbo].[spUpdateEMP]
	@empid int,
	@Employee_Name varchar(255), 
	@Employee_Designation varchar(20) ,
	@Employee_Salary money ,
	@Employee_Email varchar(255) ,
	@Employee_Mobile varchar(15) ,
	@Employee_Qualification varchar(20), 
	@Manager varchar(20) 
AS
	BEGIN 

	UPDATE dbo.Employee
        SET 
			Employee_Name = @Employee_Name,
            Employee_Designation = @Employee_Designation,
            Employee_Salary = @Employee_Salary,
            Employee_Email = @Employee_Email,
            Employee_Mobile = @Employee_Mobile,
            Employee_Qualification = @Employee_Qualification,
            Manager = @Manager
            
         WHERE Employee_Id = @empid; 

	END

