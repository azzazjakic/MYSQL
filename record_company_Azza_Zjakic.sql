use record_company;
CREATE TABLE bands (
id int not null auto_increment,
name varchar(255) not null,
primary key (id)
);
CREATE TABLE albums (
id int not null auto_increment,
name varchar(255) NOT NULL,
release_year int, 
band_id int not null, 
primary key (id),
foreign key (band_id) references bands(id)
);


insert into bands (name)
values ('Iron Maiden');

insert into bands (name)
values ('Deuce'), ('Avenged Sevenfold'), ('Ankor');

select * from bands;
select * from bands limit 2;
select name from bands;
select id as 'ID', name as 'Band Name'
from bands;
select * from bands order by name desc;

INSERT INTO albums (name, release_year, band_id)
VALUES ('The Number of the Beasts', 1985, 1),
('Power Slave', 1984, 1),
('Nightmare', 2018, 2),
('Nightmare', 2010, 3),
('Test Album', NULL, 3);

select * from albums;
select name from albums;
select distinct name from albums;

update albums
set release_year = 1982
where id = 1;

select * from albums
where release_year < 2000;

select * from albums
where name like '%er%' or band_id = 2;
select * from albums 
where release_year = 1984 and band_id = 1;

select * from albums
where release_year between 2000 and 2018;

select * from albums
where release_year is null;

select * from albums;

select * from bands
join albums on bands.id = albums.band_id;


select avg(release_year) from albums;
select sum(release_year) from albums;


select band_id, count(band_id) from albums
group by band_id;

select b.name as band_name, count(a.id) as num_albums
from bands as b
left join albums as a on b.id = a.band_id
group by b.id;


