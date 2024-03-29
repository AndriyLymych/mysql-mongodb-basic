# #  CТВОРЕННЯ БАЗИ І ЗАВДАННЯ ПІСЛЯ ЦЬОГО: 
#
# SET SQL_MODE = '';
#
#
# CREATE SCHEMA IF NOT EXISTS `bank` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
# USE `bank` ;
#
# -- -----------------------------------------------------
# -- Table `mydb`.`Department`
# -- -----------------------------------------------------
# CREATE TABLE IF NOT EXISTS `bank`.`department` (
#   `idDepartment` INT NOT NULL,
#   `DepartmentCity` VARCHAR(45) NULL,
#   `CountOfWorkers` INT NULL,
#   PRIMARY KEY (`idDepartment`))
# ENGINE = InnoDB;
#
#
# -- -----------------------------------------------------
# -- Table `mydb`.`Client`
# -- -----------------------------------------------------
# CREATE TABLE IF NOT EXISTS `bank`.`client` (
#   `idClient` INT NOT NULL,
#   `FirstName` VARCHAR(45) NULL,
#   `LastName` VARCHAR(45) NULL,
#   `Education` VARCHAR(45) NULL,
#   `Passport` VARCHAR(45) NULL,
#   `City` VARCHAR(45) NULL,
#   `Age` VARCHAR(45) NULL,
#   `Department_idDepartment` INT NOT NULL,
#   PRIMARY KEY (`idClient`),
#   INDEX `fk_Client_Department_idx` (`Department_idDepartment` ASC),
#   CONSTRAINT `fk_Client_Department`
#     FOREIGN KEY (`Department_idDepartment`)
#     REFERENCES `bank`.`department` (`idDepartment`)
#     ON DELETE NO ACTION
#     ON UPDATE NO ACTION)
# ENGINE = InnoDB;
#
#
# -- -----------------------------------------------------
# -- Table `mydb`.`Application`
# -- -----------------------------------------------------
# CREATE TABLE IF NOT EXISTS `bank`.`application` (
#   `idApplication` INT NOT NULL,
#   `Sum` INT NULL,
#   `CreditState` VARCHAR(45) NULL,
#   `Currency` VARCHAR(45) NULL,
#   `Client_idClient` INT NOT NULL,
#   PRIMARY KEY (`idApplication`),
#   INDEX `fk_Application_Client1_idx` (`Client_idClient` ASC),
#   CONSTRAINT `fk_Application_Client1`
#     FOREIGN KEY (`Client_idClient`)
#     REFERENCES `bank`.`client` (`idClient`)
#     ON DELETE NO ACTION
#     ON UPDATE NO ACTION)
# ENGINE = InnoDB;
#
#
#
#
#
# INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('1', 'Kyiv', '12');
# INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('2', 'Lviv', '15');
# INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('3', 'Rivne', '8');
# INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('4', 'Kyiv', '16');
# INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('5', 'Lviv', '10');
#
# INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('1', 'Roman', 'Beregulak', 'high', 'KC249584', 'Lviv', '25', '2');
# INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('2', 'Mariya', 'Pehnyk', 'high', 'KC350156', 'Stryi', '29', '2');
# INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('3', 'Olena', 'Fedychkanych', 'middle', 'KC850145', 'Krasne', '19', '1');
# INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('4', 'Igor', 'Petriv', 'technic', 'KC853952', 'Kyiv', '21', '4');
# INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('5', 'Volodymyr', 'Gryniv', 'high', 'KC849153', 'Skvyra', '35', '4');
# INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('6', 'Oleg', 'Fedyshyn', 'high', 'KC012412', 'Lviv', '42', '5');
# INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('7', 'Taras', 'Sobko', 'middle', 'KC249504', 'Rivne', '20', '3');
# INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('8', 'Viktor', 'Spas', 'technic', 'KC823412', 'Kyiv', '22', '2');
# INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('9', 'Julia', 'Mokina', 'technic', 'KC908295', 'Kyiv', '21', '1');
# INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('10', 'Oksana', 'Indusiva', 'high', 'KC723532', 'Sambir', '32', '1');
#
# INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('1', '4000', 'Returned', 'Dollar', '1');
# INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('2', '5000', 'Not returned', 'Dollar', '4');
# INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('3', '7500', 'Returned', 'Euro', '6');
# INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('4', '3200', 'Not returned', 'Gryvnia', '2');
# INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('5', '3700', 'Returned', 'Gryvnia', '3');
# INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('6', '4100', 'Returned', 'Dollar', '1');
# INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('7', '15100', 'Not returned', 'Gryvnia', '9');
# INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('8', '25600', 'Not returned', 'Dollar', '10');
# INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('9', '12300', 'Not returned', 'Gryvnia', '8');
# INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('10', '9700', 'Returned', 'Dollar', '5');
# INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('11', '9000', 'Not returned', 'Gryvnia', '7');
# INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('12', '8100', 'Not returned', 'Dollar', '3');
# INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('13', '4400', 'Not returned', 'Euro', '8');
# INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('14', '2700', 'Returned', 'Dollar', '10');
# INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('15', '6600', 'Not returned', 'Euro', '3');


# 1.Вибрати усіх клієнтів, чиє ім'я має менше ніж 6 символів:
select FirstName
from client
where length(FirstName) < 6;


# 2.Вибрати львівські відділення банку:
select *
from department
where DepartmentCity = 'Lviv';


# 3.Вибрати клієнтів з вищою освітою та посортувати по прізвищ:
select *
from client
where Education = 'high'
order by LastName;


# 4.Виконати сортування у зворотньому порядку над таблицею Заявка і вивести 5 останніх елементів:

select CreditState, idClient, FirstName, LastName
from application
         join client c on application.Client_idClient = c.idClient
order by idClient desc
limit 5;

# 5.Вивести усіх клієнтів, чиє прізвище закінчується на IV чи IVA:
select *
from client
where LastName like '%iv'
   or LastName like '%iva';


# 6.Вивести клієнтів банку, які обслуговуються київськими відділеннями:
select FirstName, LastName
from client
         join department on client.Department_idDepartment = department.idDepartment
where DepartmentCity = 'Kyiv';


# 7.Вивести кількість id та міста, погрупувавши їх за містами:
select COUNT(idClient), City
from client
group by City;


# 8.Вивести дані про клієнтів, які мають кредит більше ніж на 5000 тисяч гривень:
select *
from client
         join application on client.idClient = application.Client_idClient
where Sum > 5000
  and Currency = 'gryvnia'
  and CreditState = 'not returned';


# 9.Порахувати кількість клієнтів усіх відділень та лише львівських відділень:
select COUNT(idClient) as countId, DepartmentCity
from client
         join department on client.Department_idDepartment = department.idDepartment
group by DepartmentCity;


select COUNT(idClient) as countId, DepartmentCity
from client
         join department on client.Department_idDepartment = department.idDepartment
where DepartmentCity = 'lviv'
group by DepartmentCity;


# 10.Знайти кредити, які мають найбільшу суму для кожного клієнта окремо:
select MAX(Sum) as maxSum, FirstName, LastName
from client
         join application a on client.idClient = a.Client_idClient
group by FirstName, LastName;

# 11.Визначити кількість заявок на крдеит для кожного клієнта:

select COUNT(CreditState) countOfState, idClient id, FirstName name, LastName surname
from client
         join application a on client.idClient = a.Client_idClient
group by idClient, FirstName, LastName;


# 12.Визначити найбільший та найменший кредити:

select MIN(Sum), MAX(Sum)
from application;


# 13.Порахувати кількість кредитів для клієнтів,які мають вищу освіту:
select count(Sum) countOfCredits, FirstName, LastName
from client
         join application a on client.idClient = a.Client_idClient
where Education = 'high'
group by FirstName, LastName;

# 14. Вивести дані про клієнта, в якого середня сума кредитів найвища:
select idClient, FirstName, LastName
from client
         join application a on client.idClient = a.Client_idClient
group by idClient, FirstName, LastName
order by avg(Sum) desc
limit 1;


# 15.Вивести відділення, яке видало в кредити найбільше грошей:

select idDepartment, DepartmentCity
from department
         join client c on department.idDepartment = c.Department_idDepartment
         join application a on c.idClient = a.Client_idClient
group by idDepartment, DepartmentCity
order by sum(Sum) desc
limit 1;


# 16.Вивести відділення, яке видало найбільший кредит:

select idDepartment, DepartmentCity
from department
         join client c on department.idDepartment = c.Department_idDepartment
         join application a on c.idClient = a.Client_idClient

group by idDepartment, DepartmentCity
order by MAX(Sum) desc
limit 1;


# # 17.Усім клієнтам, які мають вищу освіту, встановити усі їхні кредити у розмірі 6000 грн:
#
# # update application join client c on application.Client_idClient = c.idClient
# # set Sum = 6000
# # where Education = 'high';
#
# # 18. Усіх клієнтів київських відділень пересилити до Києва:
#
#
# # update client join department d on client.Department_idDepartment = d.idDepartment
# # set City = 'Kyiv'
# # where DepartmentCity = 'Kyiv';
#
# # # 19.Видалити усі кредити, які є повернені:
# # delete
# # from application
# # where CreditState = 'returned';
#
#
# # 20.Видалити кредити клієнтів, в яких друга літера прізвища є голосною:
#
# # delete application
# # from application
# #          join client c on application.Client_idClient = c.idClient
# # where LastName like '_a%' or LastName like '_o%' or LastName like '_u%' or LastName like '_e%' or LastName like '_i%';
#
#
# 21.Знайти львівські відділення, які видали кредитів на загальну суму більше ніж 5000:


select Sum(Sum) sum, idDepartment, DepartmentCity
from department
         join client c on department.idDepartment = c.Department_idDepartment
         join application a on c.idClient = a.Client_idClient
where DepartmentCity = 'Lviv'
group by idDepartment, DepartmentCity
order by sum;

# 22.Знайти клієнтів, які повністю погасили кредити на суму більше ніж 5000: !!!!!!


select Sum(Sum), idClient, FirstName, LastName
from client
         join application a on client.idClient = a.Client_idClient
where CreditState = 'returned'
group by idClient, FirstName, LastName
order by Sum(Sum) desc
limit 3;


# 23.Знайти максимальний неповернений кредит:

select max(Sum)
from application
where CreditState = 'not returned';

# 24.Знайти клієнта, сума кредиту якого найменша:

select FirstName, LastName
from client
         join application a on client.idClient = a.Client_idClient
group by FirstName, LastName
order by min(Sum)
limit 1;

# 25.Знайти кредити, сума яких більша за середнє значення усіх кредитів:

select *
from application
where Sum > (select avg(Sum) from application);

# 26.Знайти клієнтів, які є з того самого міста, що і клієнт, який взяв найбільшу кількість кредитів:
select idClient, FirstName, LastName
from client
where City = (select City
              from client
                       join application a on client.idClient = a.Client_idClient
              group by idClient
              order by count(CreditState) desc
              limit 1
);


# 27. Знайти місто клієнта який набрав найбільше кредитів:
select City
from client
         join application on client.idClient = application.Client_idClient
group by idClient, City
order by COUNT(CreditState) desc
limit 1;

