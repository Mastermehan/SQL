create table persons
(
    name varchar(255),
    surname varchar(255),
    age int check (age > 0), check (age < 150),
    phone_number varchar(255) not null default 'unknown',
    city_of_living varchar(255) not null,

    PRIMARY KEY (name, surname, age)

);

insert into persons (name, surname, age, phone_number, city_of_living)
values ('Evgenii', 'Dar', 12, '+7789798778', 'Moscow');

insert into persons (name, surname, age, phone_number, city_of_living)
values ('Roma', 'Tor', 33, '+7-789-567-6798', 'St. Petersberg');

insert into  persons (name, surname, age, phone_number, city_of_living)
values ('Vika', 'La', 28, '+7-789-567-4565', 'Minsk');

SELECT name, surname
FROM persons
WHERE city_of_living = Moscow;