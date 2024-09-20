with author as (select id  from library."Author"  where first_name = 'J.R.R.' and last_name = 'Tolkien'),
genre as (select name  from library."Genre"  where name = 'FANTASY')
insert into library."Book" (title, release_date, author_id, genre_name, description) values
    ('The Lord of the Rings', '1954-07-29', (select id from author), (select name from genre), 'Give a most wanted ring to the most skillless character so it can be thrown into the lava.'),
    ('The Silmarillion', '1977-09-15', (select id from author), (select name from genre), 'Just weird prequel to LOTR.');

with author as (select id  from library."Author"  where first_name = 'J.K.' and last_name = 'Rowling'),
genre as (select name  from library."Genre"  where name = 'FANTASY')
insert into library."Book" (title, release_date, author_id, genre_name, description) values
    ('Harry Potter and the philosopher''s stone', '1997-06-26', (select id from author), (select name from genre), 'A child must survive an attack by the most badass character in the world.');

with author as (select id  from library."Author"  where first_name = 'David' and last_name = 'Wong'),
genre as (select name  from library."Genre"  where name = 'COMEDY')
insert into library."Book" (title, release_date, author_id, genre_name, description) values
    ('John Dies at the End', '2007-08-15', (select id from author), (select name from genre), 'I really don''t know what is going on here.');