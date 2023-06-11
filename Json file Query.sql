Use Lowes

/** select * from openrowset
(
   BULK 'C:\JSON\Test.json' , SINGLE_CLOB
)  as DATASOURCE

**/

declare @json_data varchar(max)

select @json_data = Bulkcolumn from openrowset
(
   BULK 'C:\JSON\Test.json' , SINGLE_CLOB
)  as DATASOURCE

--print @json_data
Insert into NCDOT (DOT_NAME , DOT_Address,Phone,Age,Gender)
select Name, Address,phone,Age,Gender from openjson(@json_data)
with
(
    Name varchar(20),
	Address varchar(20),
	phone varchar (20),
	Age int,
	Gender varchar(20)
)

select * from NCDOT