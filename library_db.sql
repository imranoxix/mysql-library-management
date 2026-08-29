create database library_db;
use library_db;

create table members (
    id int primary key auto_increment,
    name varchar(100) not null,
    email varchar(255) unique,
    city varchar(100) null,
    active boolean default true
);

create table books (
    id int primary key auto_increment,
    title varchar(150) not null,
    author varchar(100) not null,
    category varchar(50),
    price decimal(6,2) not null,
    available boolean default true
);

create table borrowings (
    id int primary key auto_increment,
    member_id int,
    book_id int,
    borrow_date date not null,
    return_date date null,
    foreign key (member_id) references members(id),
    foreign key (book_id) references books(id)
);

insert into members (name, email, city, active) values
('imrane amerray', 'imrane.amerray@gmail.com', 'rabat', true),
('othmane amerray', 'othmane.amerray@gmail.com', 'rabat', true),
('cilia amerray', 'cilia.amerray@gmail.com', 'fes', true),
('taha abnay', 'taha.abnay@gmail.com', 'casablanca', true),
('mohammed bouchida', 'mohammed.bouchida@gmail.com', 'tangier', true),
('amine hammouch', 'amine.hammouch@gmail.com', null, true),
('adame mlsawi', 'adame.mlsawi@gmail.com', 'marrakech', true),
('mohammed zanouti', 'mohammed.zanouti@gmail.com', 'agadir', false);

insert into books (title, author, category, price, available) values
('la boite a merveilles', 'ahmed sefrioui', 'novel', 45.00, true),
('antigone', 'jean anouilh', 'theater', 35.00, true),
('le dernier jour d un condamne', 'victor hugo', 'novel', 40.00, false),
('deep work', 'cal newport', 'self-help', 85.00, true),
('l etranger', 'albert camus', 'novel', 50.00, true),
('atomic habits', 'james clear', 'self-help', 110.00, true),
('clean code', 'robert c. martin', 'programming', 150.00, true),
('rich dad poor dad', 'robert kiyosaki', 'finance', 60.00, true),
('le petit prince', 'antoine de saint exupery', 'novel', 30.00, false),
('the alchemist', 'paulo coelho', 'novel', 55.00, true);

insert into borrowings (member_id, book_id, borrow_date, return_date) values
(1, 1, '2026-08-01', '2026-08-10'),
(2, 3, '2026-08-02', null),
(3, 2, '2026-08-05', '2026-08-15'),
(4, 9, '2026-08-06', null),
(5, 4, '2026-08-10', '2026-08-20'),
(6, 5, '2026-08-12', '2026-08-22'),
(7, 6, '2026-08-15', '2026-08-25'),
(8, 8, '2026-08-18', '2026-08-26'),
(1, 7, '2026-08-20', '2026-08-27'),
(2, 10, '2026-08-21', '2026-08-27'),
(3, 1, '2026-08-22', null),
(4, 2, '2026-08-23', '2026-08-27');

select * from members;
select * from books;
select title, author from books;
select name, city from members;
select * from borrowings;

select * from books where price > 100;
select * from books where price < 50;
select * from books where category = 'programming';
select * from books where available = true;
select * from members where city = 'rabat';
select * from members where city = 'rabat' and active = true;
select * from members where city = 'rabat' or city = 'fes';

select * from books order by price asc;
select * from books order by price desc;
select * from books order by price desc limit 3;
select * from books order by price asc limit 5;

update books set price = 95.00 where id = 4;
update books set available = false where id = 2;
update members set city = 'casablanca' where id = 3;
update members set active = false where id = 2;

delete from members where id = 9;

select * from members where city is null;
select * from borrowings where return_date is null;
select * from borrowings where return_date is not null;

select * from books where available = true order by price desc limit 3;
select * from borrowings where return_date is null;
select * from borrowings where member_id = 1;