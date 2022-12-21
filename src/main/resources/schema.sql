


-- 1) создания таблицы со следующими параметрами: название таблицы - CUSTOMERS содержит в себе 5 столбцов - id, name,
-- surname, age, phone_number первичным ключом будет поле id, который инкрементируется каждый раз, при создании пользователя
create table customers
(
    id           int primary key auto_increment,
    name         varchar(30) not null,
    surname      varchar(30) not null,
    age          int check (0 <= age <= 140),
    phone_number varchar(11) not null
);

-- 2) скрипт создания таблицы со следующими параметрами: название таблицы - ORDERS. Cодержит в себе 4 столбца - id, date,
-- customer_id,product_name, amount, первичным ключом будет поле id, который инкрементируется каждый раз, при создании заказа
-- внешним ключом на поле id таблицы пользователей будет customer_idcreate table 'orders'
create table orders
(
    id           int primary key auto_increment,
    date         date         not null,
    customer_id  int          not null,
    product_name varchar(100) not null,
    amount       decimal(10, 2),
    foreign key (customer_id) references customers (id)
);

-- наполнение таблицы CUSTOMERS
insert into customers (name, surname, age, phone_number)
values ('Алексей', 'Петров', 45, 79212348735);
insert into customers (name, surname, age, phone_number)
values ('Аня', 'Васильева', 33, 79114747745);
insert into customers (name, surname, age, phone_number)
values ('Федор', 'Иванов', 12, 79052394647);
insert into customers (name, surname, age, phone_number)
values ('АЛЕКСЕЙ', 'Сидоренко', 28, 79032345678);

-- наполнение таблицы ORDERS
insert into orders (date, customer_id, product_name, amount)
values ('2022-01-08', 1, 'ноутбук', 45000.05);
insert into orders (date, customer_id, product_name, amount)
values ('2022-03-06', 2, 'роутер', 5000.50);
insert into orders (date, customer_id, product_name, amount)
values ('2022-08-24', 3, 'УПАТС', 64000.00);
insert into orders (date, customer_id, product_name, amount)
values ('2022-11-28', 4, 'радиостанция', 10000.11);


