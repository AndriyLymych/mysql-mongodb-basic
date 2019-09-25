insert into family (name, age, gender, status)
    VALUE ('Andriy', 25, 'male', 'son');
insert into family(name, age, gender, status)
    value ('Anastasia', 25, 'female', 'girlfriend');
insert into family(name, age, gender, status)
    value ('Maria', 49, 'female', 'mother');
insert into family(name, age, gender, status)
    value ('Vasyl', 19, 'male', 'son');
insert into family(name, age, gender, status)
    value ('Igor', 50, 'male', 'stepfather');
insert into family(name, age, gender, status)
    value ('Volodymyr', 33, 'male', 'uncle');
insert into family(name, age, gender, status)
    value ('Ivan', 12, 'male', 'nephew')


select *
from family
where name like '_a%';



select name
from family
where age between 10 and 15;

update family
set age=20
where id in (1);

# delete
# from family
# where status = 'nephew';
#
#
# drop table family;
#
# drop database home;
