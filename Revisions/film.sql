create table film (
    film_id SERIAL PRIMARY KEY,
    film_title VARCHAR(50),
    film_year INT, 
    film_length INT
);

INSERT INTO film (film_title, film_year, film_length) VALUES ('James Bond', 1992, 123);
INSERT INTO film (film_title, film_year, film_length) VALUES ('Forest Gump', 1985, 112);
INSERT INTO film (film_title, film_year, film_length) VALUES ('Star Wars', 2004, 156);

