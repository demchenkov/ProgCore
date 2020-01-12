CREATE PROCEDURE [dbo].[AddUserToRoleByName]
	@UserId int,
	@RoleName nvarchar(100)
AS
	DECLARE @RoleId int = (SELECT TOP(1) Id FROM ApplicationRole WHERE Name = @RoleName)
	BEGIN
		IF COUNT(@RoleId) > 0
			EXEC AddUserToRoleById @UserId, @Roleid
	END
