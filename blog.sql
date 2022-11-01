CREATE TABLE "users" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" varchar
);

CREATE TABLE "posts" (
  "id" SERIAL PRIMARY KEY,
  "user_id" int,
  "title" varchar,
  "description" varchar,
  "author" varchar,
  "content" varchar,
  "category" varchar
);

CREATE TABLE "category" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "coment" (
  "id" SERIAL PRIMARY KEY,
  "user_id" int,
  "coment" varchar,
  "post_id" int
);

CREATE TABLE "post_category" (
  "id" SERIAL PRIMARY KEY,
  "post_id" int,
  "category_id" int
);

ALTER TABLE "posts" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "coment" ADD FOREIGN KEY ("post_id") REFERENCES "posts" ("id");

ALTER TABLE "coment" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "post_category" ADD FOREIGN KEY ("post_id") REFERENCES "posts" ("id");

ALTER TABLE "post_category" ADD FOREIGN KEY ("category_id") REFERENCES "category" ("id");

insert into users ("name","email","password","age")
values 
('Pepe','pepe@pepe.com','123456',20),
('Lola','lola@lola.com','654321',25),
('Lulu','lulu@lulu.com','321546',28),
('Tomas','tomas@tomas.com','321654',35);

select * from users;

insert into category ("name") values
('Trips'),
('Sports'),
('Foods'),
('Healt'),
('Finance'),
('Photography'),
('Music');

select * from category;

insert into coment ("user_id" , "coment") values
(1, 'Este blog me ayudo mucho, deberias leerlo tambien'), 
(2, 'Aunque le falta estructura la informacion es valiosa..');

select * from coment;

insert into posts ("user_id", "title", "description", "author", "content", "category") values
(1, 'Peru salvaje', 'Visitando historia', 'Pepe Grillo', 'text', 'Trips'),
(2, 'Houston', 'Texas trips',  'Thomas G', 'Text', 'Trips');

select * from posts

insert into post_category ("post_id", "category_id") values
(1, 2),  
(2, 2);

select * from post_category;
