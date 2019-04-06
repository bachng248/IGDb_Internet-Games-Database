PGDMP         "                w            IGDb    11.2    11.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    32943    IGDb    DATABASE     �   CREATE DATABASE "IGDb" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Vietnamese_Vietnam.1258' LC_CTYPE = 'Vietnamese_Vietnam.1258';
    DROP DATABASE "IGDb";
             postgres    false                        2615    32944    igdb    SCHEMA        CREATE SCHEMA igdb;
    DROP SCHEMA igdb;
             postgres    false            �            1259    32987    banList    TABLE     ?   CREATE TABLE igdb."banList" (
    "userID" integer NOT NULL
);
    DROP TABLE igdb."banList";
       igdb         postgres    false    6            �            1259    32950    games    TABLE       CREATE TABLE igdb.games (
    "ID" integer NOT NULL,
    "Title" character varying(30),
    "Genre" character varying(30),
    "Publisher" character varying(30),
    "Release date" date,
    "Game cover" character varying,
    "img-url" character varying
);
    DROP TABLE igdb.games;
       igdb         postgres    false    6            �            1259    32958    library    TABLE     \   CREATE TABLE igdb.library (
    "UserID" integer NOT NULL,
    "GameID" integer NOT NULL
);
    DROP TABLE igdb.library;
       igdb         postgres    false    6            �            1259    32971    reviews    TABLE     �   CREATE TABLE igdb.reviews (
    "userID" integer NOT NULL,
    "gameID" integer NOT NULL,
    "Game review" character varying,
    "Game Score" integer,
    "Review date" date
);
    DROP TABLE igdb.reviews;
       igdb         postgres    false    6            �            1259    32945    users    TABLE     �   CREATE TABLE igdb.users (
    "ID" integer NOT NULL,
    "Name" character varying(30),
    "Email" character varying(30),
    "Password" character varying(30)
);
    DROP TABLE igdb.users;
       igdb         postgres    false    6                      0    32987    banList 
   TABLE DATA               +   COPY igdb."banList" ("userID") FROM stdin;
    igdb       postgres    false    201   �                 0    32950    games 
   TABLE DATA               k   COPY igdb.games ("ID", "Title", "Genre", "Publisher", "Release date", "Game cover", "img-url") FROM stdin;
    igdb       postgres    false    198   �                 0    32958    library 
   TABLE DATA               3   COPY igdb.library ("UserID", "GameID") FROM stdin;
    igdb       postgres    false    199   �                 0    32971    reviews 
   TABLE DATA               _   COPY igdb.reviews ("userID", "gameID", "Game review", "Game Score", "Review date") FROM stdin;
    igdb       postgres    false    200   �                 0    32945    users 
   TABLE DATA               @   COPY igdb.users ("ID", "Name", "Email", "Password") FROM stdin;
    igdb       postgres    false    197          �
           2606    32957    games games_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY igdb.games
    ADD CONSTRAINT games_pkey PRIMARY KEY ("ID");
 8   ALTER TABLE ONLY igdb.games DROP CONSTRAINT games_pkey;
       igdb         postgres    false    198            �
           2606    32949    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY igdb.users
    ADD CONSTRAINT users_pkey PRIMARY KEY ("ID");
 8   ALTER TABLE ONLY igdb.users DROP CONSTRAINT users_pkey;
       igdb         postgres    false    197            �
           2606    32966    library gameid-fkey    FK CONSTRAINT     s   ALTER TABLE ONLY igdb.library
    ADD CONSTRAINT "gameid-fkey" FOREIGN KEY ("GameID") REFERENCES igdb.games("ID");
 =   ALTER TABLE ONLY igdb.library DROP CONSTRAINT "gameid-fkey";
       igdb       postgres    false    198    2705    199            �
           2606    32982    reviews gameid-fkey    FK CONSTRAINT     s   ALTER TABLE ONLY igdb.reviews
    ADD CONSTRAINT "gameid-fkey" FOREIGN KEY ("gameID") REFERENCES igdb.games("ID");
 =   ALTER TABLE ONLY igdb.reviews DROP CONSTRAINT "gameid-fkey";
       igdb       postgres    false    2705    198    200            �
           2606    32961    library userid-fkey    FK CONSTRAINT     s   ALTER TABLE ONLY igdb.library
    ADD CONSTRAINT "userid-fkey" FOREIGN KEY ("UserID") REFERENCES igdb.users("ID");
 =   ALTER TABLE ONLY igdb.library DROP CONSTRAINT "userid-fkey";
       igdb       postgres    false    199    2703    197            �
           2606    32977    reviews userid-fkey    FK CONSTRAINT     s   ALTER TABLE ONLY igdb.reviews
    ADD CONSTRAINT "userid-fkey" FOREIGN KEY ("userID") REFERENCES igdb.users("ID");
 =   ALTER TABLE ONLY igdb.reviews DROP CONSTRAINT "userid-fkey";
       igdb       postgres    false    200    197    2703            �
           2606    32990    banList userid-fkey    FK CONSTRAINT     u   ALTER TABLE ONLY igdb."banList"
    ADD CONSTRAINT "userid-fkey" FOREIGN KEY ("userID") REFERENCES igdb.users("ID");
 ?   ALTER TABLE ONLY igdb."banList" DROP CONSTRAINT "userid-fkey";
       igdb       postgres    false    197    2703    201                  x������ � �            x������ � �            x������ � �            x������ � �            x������ � �     