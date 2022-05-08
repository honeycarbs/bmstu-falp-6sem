-- Получить имена поставщиков, которые поставляют деталь под номером 2
select Sname from S
    join SP on S.Sno = SP.Sno
    where SP.Pno = 2;

-- Получить имена поставщиков, которые поставляют по крайней мере одну красную деталь
select Sname from S
    join SP on S.Sno = SP.Sno
    join P on P.Pno = SP.Pno
    where color = 'К';

