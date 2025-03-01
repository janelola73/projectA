create database auto_sales;

use auto_sales;

create table auto_details(
ID  int(11) not null primary key auto_increment,
customer_name text(60) not null,
customer_email varchar(70) not null unique,
customer_age int(30) not null,
gender text(40) not null,
color text(40) not null,
auto_brand varchar(60) not null,
auto_price decimal(50)not null
);

show tables;
describe auto_details;
show columns from auto_details;

insert into auto_details(customer_name,customer_email,
customer_age,gender,color,auto_brand,auto_price)values
('omolade', 'omoladejunaid@gmail.com','23','male','blue', 'toyota camry','5,000,000'),
('tayo', 'tayokehinde@gmail.com','25','female','pink','hyundai','4,000,000'),
('Ebuka','ebukaobi@gmail.com','27','male','black',' mercedes benz g wagon','40,000,000'),
('jasper','jasperolawale@gmail.com','30','male','green','range rover','100,000,000'),
('charles','charlestope@gmail.com','35','male','black','audi','30,000,000'),
('ife','ifeoluwa@gmail.com','28','female','red','bmw','20,000,000');
 
 select * from auto_details;
select gender,count(color) from auto_details where color ='black';

-- Create accounts table
CREATE TABLE accounts (
    account_id INTEGER PRIMARY KEY,
    customer_name TEXT NOT NULL,
    account_number TEXT NOT NULL UNIQUE,
    account_type TEXT NOT NULL,
    balance REAL NOT NULL,
    currency_code TEXT NOT NULL,
    created_at DATETIME NOT NULL
);

INSERT INTO accounts (account_id, customer_name, account_number, 
account_type, balance, currency_code, created_at)
VALUES
(1, 'Devon Parker', 'EHVV70723487195285', 'Checking', 3087.19, 'USD', '2024-09-22 21:23:51'),
(2, 'Mindy Reynolds', 'JVPS92751196070899', 'Checking', 7761.90, 'JPY', '2024-10-05 04:57:22'),
(3, 'Katherine Hernandez', 'BMCM76649346813991', 'Loan', 8743.09, 'EUR', '2024-07-01 21:36:00'),
(4, 'Caitlin Terry', 'SCFM99565321193558', 'Savings', 5748.42, 'EUR', '2024-07-04 18:36:02'),
(5, 'Tyler Singh', 'WHZD93963438448722', 'Loan', 5383.76, 'USD', '2024-05-04 01:31:29');

select * from accounts;

-- create transactions table
create table transactions (
transaction_id int(11) not null primary key auto_increment,
account_id int(11) not null,
amount real not null,
transaction_type text(20) not null,
transaction_date datetime(6) not null,
currency_code text(20) not null
-- foreign key(account_id) Reference account(account_id)
);

 describe transactions;
 show tables;
 insert into transactions(account_id,amount,
 transaction_type,transaction_date,currency_code) values
 (7, 596.20, 'Deposit', '2024-11-01 13:12:48', 'JPY'),
(9, -220.32, 'Deposit', '2024-11-01 18:15:56', 'USD'),
(3, 918.59, 'Withdrawal', '2024-11-10 13:38:20', 'USD'),
(4, 433.33, 'Deposit', '2024-11-09 18:43:33', 'GBP'),
(5, 1568.31, 'Transfer', '2024-11-10 12:36:59', 'EUR'),
(8, 777.53,'cash','2024-11-11 17:45:33','USD'),
(2, 3452.67,'transfer','2024-11-12 18:16:43','JPY');

 
 SELECT * from transactions;
 
 -- Create exchange_rates table
CREATE TABLE exchange_rates (
	id int(11) not null auto_increment,
    currency_from TEXT(30) NOT NULL,
    currency_to TEXT(30) NOT NULL,
    rate REAL NOT NULL,
    effective_date DATE NOT NULL,
    PRIMARY KEY (id)
);

 DROP TABLE exchange_rates;
INSERT INTO exchange_rates (currency_from, currency_to, rate, effective_date)
VALUES
('USD', 'GBP', 1.442078, '2024-03-23'),
('EUR', 'USD', 1.139074, '2024-04-07'),
('JPY', 'GBP', 1.140853, '2024-05-26'),
('USD', 'EUR', 1.189790, '2024-11-11'),
('GBP', 'JPY', 1.319374, '2024-06-06');

select * from exchange_rates;