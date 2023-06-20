CREATE PROCEDURE ProracunProsecneOcene
@Proseko decimal (10, 3) OUTPUT AS 
select @Proseko=avg(Ocena) from Ispit;
GO
DECLARE @Rezultat decimal(10, 3);
EXEC ProracunProsecneOcene @Prosek = @Rezultat OUTPUT;
PRINT 'Prosecna ocena studenta je: ' + CAST(@Rezultat AS VARCHAR(10));
GO