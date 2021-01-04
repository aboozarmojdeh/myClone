CREATE DATABASE womensuccess;
-- \x on ---> diplay on

-- If you want to generate a UUID value solely based on 
-- random numbers, you can use the uuid_generate_v4() function.
-- uuid datatype: 
-- UUID stands for Universal Unique Identifier defined 
-- by RFC 4122 and other related standards. 
-- A UUID value is 128-bit quantity generated by an algorithm 
-- that make it unique in the known universe using the same algorithm. 
-- The following shows some examples of the UUID values:
-- 40e6215d-b5c6-4896-987c-f30f3678f608
-- 6ecd8c99-4036-403d-bf84-cf8400f67836
-- 3f333df6-90a4-4fda-8dd3-9485d27cee36

-- CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE TABLE users(
    user_id uuid PRIMARY KEY DEFAULT
    uuid_generate_v4(),
    user_name VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    user_password VARCHAR(255) NOT NULL
);
INSERT INTO users (user_name,user_email,user_password) VALUES ('Aboozar Mojdeh','aboozar.mojdeh@gmail.com','123');


CREATE TABLE models (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL,
    photo_path VARCHAR(50),
    rank_range INT NOT NULL CHECK(rank_range >=1 AND rank_range <= 5)
);
INSERT INTO models (name,location,photo_path,rank_range) VALUES ('Jenifer Lopez','richmond hill','/uploads/img1.jpg',5);
INSERT INTO models (name,location,photo_path,rank_range) VALUES ('Serena Williams','Thorn hill','/uploads/img2.jpg',3);

CREATE TABLE reviews (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    model_id BIGINT NOT NULL REFERENCES models(id) on delete cascade on update cascade,
    name VARCHAR(50) NOT NULL,
   review TEXT NOT NULL,
    rating INT NOT NULL CHECK(rating >=1 AND rating<=5 )
);
INSERT INTO reviews (model_id,name,review,rating) VALUES (1,'aboozar','perfect body shape',3);
