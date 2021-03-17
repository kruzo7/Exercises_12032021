-- init data for Exercises_12032021_Task3

--authors
INSERT INTO public.authors(
	author_id, first_name, middle_name, last_name)
	VALUES (1, 'Robert', 'C.', 'Martin');
INSERT INTO public.authors(
	author_id, first_name, middle_name, last_name)
	VALUES (2, 'Aditya', '', 'Bhargava');
INSERT INTO public.authors(
	author_id, first_name, middle_name, last_name)
	VALUES (3, 'Mark', '', 'Lutz');
INSERT INTO public.authors(
	author_id, first_name, middle_name, last_name)
	VALUES (4, 'Łukasz', '', 'Sosna');
INSERT INTO public.authors(
	author_id, first_name, middle_name, last_name)
	VALUES (5, 'Cay', 'S.', 'Horstmann');

 


--publishers
INSERT INTO public.publishers(
	publisher_id, name)
	VALUES (1, 'Helion');
INSERT INTO public.publishers(
	publisher_id, name)
	VALUES (2, 'Manning Publications');
INSERT INTO public.publishers(
	publisher_id, name)
	VALUES (3, 'OReilly Media');
INSERT INTO public.publishers(
	publisher_id, name)
	VALUES (4, 'Pearson');



--genres	
INSERT INTO public.genres(
	genre_id, genre, parent_id)
	VALUES (1, 'Informatyka', 1);
INSERT INTO public.genres(
	genre_id, genre, parent_id)
	VALUES (2, 'Techniki programowania', 1);	
	INSERT INTO public.genres(
	genre_id, genre, parent_id)
	VALUES (3, 'Algorytmy', 1);
		INSERT INTO public.genres(
	genre_id, genre, parent_id)
	VALUES (4, 'Programowanie', 1);
		INSERT INTO public.genres(
	genre_id, genre, parent_id)
	VALUES (5, 'Linux', 1);



--boks	
INSERT INTO public.books(
	book_id, title, total_pages, rating, isbn, published_date, publisher_id)
	VALUES (1, 'Czysty kod. Podręcznik dobrego programisty', 424, 5, '978-83-283-0234-1', '2010-02-19', 1);
INSERT INTO public.books_authors(
	book_id, author_id)
	VALUES (1, 1);
INSERT INTO public.books_genres(
	book_id, genre_id)
	VALUES (1, 2);

INSERT INTO public.books(
	book_id, title, total_pages, rating, isbn, published_date, publisher_id)
	VALUES (2, 'Algorytmy. Ilustrowany przewodnik', 256, 5, '978-83-283-3445-8', '2017-08-09', 2);
INSERT INTO public.books_authors(
	book_id, author_id)
	VALUES (2, 2);
INSERT INTO public.books_genres(
	book_id, genre_id)
	VALUES (2, 3);

INSERT INTO public.books(
	book_id, title, total_pages, rating, isbn, published_date, publisher_id)
	VALUES (3, 'Python. Wprowadzenie. Wydanie V', 1496, 4, '978-83-283-6150-8', '2020-08-04', 3);
INSERT INTO public.books_authors(
	book_id, author_id)
	VALUES (3, 3);
INSERT INTO public.books_genres(
	book_id, genre_id)
	VALUES (3, 4);


INSERT INTO public.books(
	book_id, title, total_pages, rating, isbn, published_date, publisher_id)
	VALUES (4, 'Linux. Komendy i polecenia. Wydanie V', 168, 5, '978-83-283-4565-2', '2018-08-28', 4);
INSERT INTO public.books_authors(
	book_id, author_id)
	VALUES (4, 4);
INSERT INTO public.books_genres(
	book_id, genre_id)
	VALUES (4, 5);

INSERT INTO public.books(
	book_id, title, total_pages, rating, isbn, published_date, publisher_id)
	VALUES (5, 'Java. Podstawy. Wydanie XI', 768, 4, '978-83-283-5778-5', '2019-11-26', 1);
INSERT INTO public.books_authors(
	book_id, author_id)
	VALUES (5, 5);
INSERT INTO public.books_genres(
	book_id, genre_id)
	VALUES (5, 4);


