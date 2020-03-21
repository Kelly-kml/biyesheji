CREATE TRIGGER [TriggerBASE]
	ON [dbo].[BASE]
	FOR DELETE, INSERT, UPDATE
	AS
	BEGIN
		insert BASE_TJ
		select * from BASE
		where BASE.Sstate ='1'
	END




