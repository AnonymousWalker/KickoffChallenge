use SQL_Challenge;
--1--
select * 
from book 
join author
on book.author = author.id
where author.name = 'C.S. Lewis';

--2--
select * from book where publication_year < 1951

--3--
select * 
from book 
join author
on book.author = author.id
where author.name = 'C.S. Lewis'
order by publication_year;

--4--
select *
from book b
join author a
on b.author = a.id
join publisher p
on b.publisher = p.id
where p.city = a.city;

--5--
select title, publication_year 
from book 
where publication_year = 
( 
	select min(publication_year)
	from book b
	where b.author = book.author
)


