-- init data for Exercises_12032021_Task3

INSERT INTO public.authors(
	author_id, first_name, middle_name, last_name)
	VALUES (?, ?, ?, ?);

INSERT INTO public.publishers(
	publisher_id, name)
	VALUES (?, ?);
	
INSERT INTO public.genres(
	genre_id, genre, parent_id)
	VALUES (?, ?, ?);		
	
INSERT INTO public.books(
	book_id, title, total_pages, rating, isbn, published_date, publisher_id)
	VALUES (?, ?, ?, ?, ?, ?, ?);