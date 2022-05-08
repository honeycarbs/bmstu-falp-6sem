create table S (
    Sno integer,
    Sname varchar(50),
    Status integer,
    City varchar(50)
);

create table P (
    Pno integer,
    Pname varchar(50),
    Color varchar(50),
    Weight decimal,
    City varchar(50)
);

create table SP (
    Sno integer,
    Pno integer,
    Qty integer
);