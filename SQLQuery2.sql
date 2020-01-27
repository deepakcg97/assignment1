
create procedure calculate
   @FirstNumber int=0,
   @SecondNumber int=0,
   @Operator varchar(2)=Null
as
begin
     set nocount on;

     if @Operator='+'
     begin
        insert into arithmeticTable (inputParameter1,operator,inputParameter2,result) values (@FirstNumber,@Operator,@SecondNumber,@FirstNumber+@SecondNumber)
     end

     if @Operator='-'
     begin
        insert into arithmeticTable (inputParameter1,operator,inputParameter2,result) values (@FirstNumber,@Operator,@SecondNumber,@FirstNumber-@SecondNumber)
     end
     if @Operator='*'
     begin
        insert into arithmeticTable (inputParameter1,operator,inputParameter2,result) values (@FirstNumber,@Operator,@SecondNumber,@FirstNumber*@SecondNumber)
     end
     if @Operator='/'
     begin
        if @SecondNumber=0
            print 'Divisor cant be Zero'
        else
            insert into arithmeticTable (inputParameter1,operator,inputParameter2,result) values (@FirstNumber,@Operator,@SecondNumber,@FirstNumber+@SecondNumber)
     end
end
exec calculate @FirstNumber =2,@SecondNumber =2 ,@Operator='+';