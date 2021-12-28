CREATE PROCEDURE [dbo].[spDeleteEMP]
	@empid int
AS
	BEGIN
	DELETE FROM dbo.Employee 
        WHERE Employee_Id = @empid;
	END
