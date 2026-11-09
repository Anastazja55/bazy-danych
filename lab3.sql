
create table zadanie(
	id_zadania int primary key auto_increment not null,
    nazwa_zadania varchar(150) not null,
    priorytet enum('normalny', 'wysoki', 'niski') not null,
    opis longtext null,
    id_pracownika int,
    foreign key(id_pracownika) references pracownik(id_pracownika) on delete set null);
INSERT INTO zadanie( nazwa_zadania, priorytet, opis, id_pracownika)
values
('mamdosc','wysoki','whatever','2'),
('ilejeszcze','niski','awimmaweawimmawe','3');
alter table zadanie alter column priorytet set default 'normalny';
INSERT INTO zadanie( nazwa_zadania, priorytet, opis, id_pracownika)
values
('hej',1,'oh','1'),
('nie',1,'not','2'),
('why',1,'now','3')
;
select * from zadanie;
