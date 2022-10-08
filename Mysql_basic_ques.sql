show databases;
use ineuron_fsda;

select * from bank_details;

Q1-with this data try to fine out sum of balance 
select sum(balance) from bank_details;

Q2-Try to find out avarage of balance 
select avg(balance) from bank_details;

Q3-try to find out who is having a min balance 
select * from bank_details where balance=(select min(balance) from bank_details);
select * from bank_details order by balance limit 1;

Q4-try to find out who is having a max balance 
select * from bank_details where balance=(select max(balance) from bank_details);
select * from bank_details order by  balance desc limit 1;

Q5-try to prepare a list of all the person who is having loan 
select * from bank_details where loan ='yes';

Q6-try to find out average balance for all the people whose job role is admin
select avg(balance) from bank_details where job='admin.';

Q7-try to find out a record  without job whose age is below 45 
select * from bank_details where job='unknow' and age<45;

Q8-try to find out a record where education is primarty and person is jobless
select * from bank_details where job='unknow' and education='primary';

Q9-try to find of a record whose bank account is having a negative balance 
select * from bank_details where balance like '-%';
select * from bank_details where balance <0;

Q10-try to find our a record who is not having house at all along with there balance
select * from bank_details where housing='no' and balance is not null;
select balance,housing from bank_details where housing='no' ;


