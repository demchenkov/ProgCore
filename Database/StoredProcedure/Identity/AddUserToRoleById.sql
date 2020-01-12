CREATE PROCEDURE [dbo].[AddUserToRoleById]
	@UserId int,
	@RoleId int
AS
	BEGIN 
		IF NOT EXISTS( SELECT * FROM UserRole WHERE UserId = @UserId AND RoleId = @RoleId)
			INSERT INTO UserRole(UserId, RoleId) VALUES(@UserId, @RoleId)
	END
