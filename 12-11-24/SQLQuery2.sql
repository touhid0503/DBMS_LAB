--01--
CREATE PROCEDURE SPdetails
AS
BEGIN
	select Acc_holder_name,
	Amount,
	(select Branch_Name from Branch where Branch.Br_Id=Account_Detail.Branch_Id) as Branch_Name,
	(select Name from Zone where Zone.Zone_Id=Account_Detail.Zone_Id) as Zone_Name
	from
	Account_Detail
END;

EXEC SPdetails;



--02--
CREATE PROCEDURE SPaverage
	@BranchName varchar(50),
	@Amount int
AS
BEGIN
    select
	(select Branch_Name from Branch where Branch.Br_Id=Account_Detail.Branch_Id) as Branch_Name,
	Amount
	from 
	Account_Detail
	where Branch_Id=(select Br_Id from Branch where Branch_Name = @BranchName) and Amount>@Amount;
END;

EXEC SPaverage @BranchName='Bonani' , @Amount=17000 ;



--03--
Create procedure SPbalance
	@ZoneName varchar(50)
As
Begin
	Declare @Amount int;

	select Top 1 @Amount = Amount 
	from
	Account_Detail 
	where Zone_Id=(select Zone_Id from Zone where Name=@ZoneName);

	return @Amount;
End;

Declare @Result int;

Exec @Result=SPbalance @ZoneName='Dhaka';

print @Result




--04--
Create procedure SPamount
As
Begin	
	select 
	Acc_holder_name, 
	(select Branch_Name from Branch where Branch.Br_Id=Account_Detail.Branch_Id) as Branch_Name,
	(select Name from Zone where Zone.Zone_Id=Account_Detail.Zone_Id) as Zone_Name
	from
	Account_Detail 
	where 
	 Acc_holder_name like '%Mr.%' and Amount < (select max(Amount) from Account_Detail);

End;

exec SPamount



--05--
Create procedure SPdetailsInfo
	@ZoneName varchar(50),
	@Count int output
As
Begin
		
	select @Count=COUNT(*) from Account_Detail
	where Zone_Id=(select Zone_Id from Zone where Name=@ZoneName);
End;

declare @Count int
exec SPdetailsInfo @ZoneName='Dhaka',@Count=@Count output
print @Count
