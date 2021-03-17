--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

-- Started on 2021-03-17 15:58:15 CET

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 203 (class 1259 OID 16394)
-- Name: authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authors (
    author_id bigint NOT NULL,
    first_name character varying NOT NULL,
    middle_name character varying NOT NULL,
    last_name character varying NOT NULL
);


ALTER TABLE public.authors OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16386)
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    book_id bigint NOT NULL,
    title character varying NOT NULL,
    total_pages integer NOT NULL,
    isbn character varying NOT NULL,
    published_date date NOT NULL,
    publisher_id bigint NOT NULL,
    rating smallint NOT NULL
);


ALTER TABLE public.books OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16418)
-- Name: books_authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books_authors (
    book_id bigint NOT NULL,
    author_id bigint NOT NULL
);


ALTER TABLE public.books_authors OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16421)
-- Name: books_genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books_genres (
    book_id bigint NOT NULL,
    genre_id bigint NOT NULL
);


ALTER TABLE public.books_genres OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16410)
-- Name: genres; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genres (
    genre_id bigint NOT NULL,
    genre character varying NOT NULL,
    parent_id bigint NOT NULL
);


ALTER TABLE public.genres OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16402)
-- Name: publishers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publishers (
    publisher_id bigint NOT NULL,
    name character varying
);


ALTER TABLE public.publishers OWNER TO postgres;

--
-- TOC entry 2857 (class 2606 OID 16401)
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (author_id);


--
-- TOC entry 2855 (class 2606 OID 16393)
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);


--
-- TOC entry 2861 (class 2606 OID 16417)
-- Name: genres genres_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT genres_pkey PRIMARY KEY (genre_id);


--
-- TOC entry 2859 (class 2606 OID 16409)
-- Name: publishers publishers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publishers
    ADD CONSTRAINT publishers_pkey PRIMARY KEY (publisher_id);


--
-- TOC entry 2865 (class 2606 OID 16434)
-- Name: books_authors books_authors_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_authors
    ADD CONSTRAINT books_authors_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.authors(author_id) NOT VALID;


--
-- TOC entry 2864 (class 2606 OID 16429)
-- Name: books_authors books_authors_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_authors
    ADD CONSTRAINT books_authors_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(book_id) NOT VALID;


--
-- TOC entry 2866 (class 2606 OID 16439)
-- Name: books_genres books_genres_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_genres
    ADD CONSTRAINT books_genres_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(book_id) NOT VALID;


--
-- TOC entry 2867 (class 2606 OID 16444)
-- Name: books_genres books_genres_genre_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books_genres
    ADD CONSTRAINT books_genres_genre_id_fkey FOREIGN KEY (genre_id) REFERENCES public.genres(genre_id) NOT VALID;


--
-- TOC entry 2862 (class 2606 OID 16424)
-- Name: books books_publisher_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_publisher_id_fkey FOREIGN KEY (publisher_id) REFERENCES public.publishers(publisher_id) NOT VALID;


--
-- TOC entry 2863 (class 2606 OID 16449)
-- Name: genres parent_genre_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genres
    ADD CONSTRAINT parent_genre_fkey FOREIGN KEY (parent_id) REFERENCES public.genres(genre_id) NOT VALID;


-- Completed on 2021-03-17 15:58:16 CET

--
-- PostgreSQL database dump complete
--

