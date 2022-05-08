insert into P (pno, pname, color, weight, city) values
    (1, 'Гвоздь', 'К',10.3,'Москва'),
    (2, 'Винт', 'К', 15.8, 'Рязань'),
    (3, 'Гвоздь', 'С',3.4, 'Смоленск');

insert into S(sno, sname, status, city) values
    (1, 'ООО Ромашка', 5, 'Рязань'),
    (2, 'ООО Рубин', 3, 'Красногорск');
insert into sp(sno, pno, qty) values
    (1, 1, 4000),
    (1, 2, 5000),
    (1, 3, 6000),
    (2, 1, 1000),
    (2, 3, 7000);
