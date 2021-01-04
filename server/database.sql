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

-- CREATE TABLE users(
--     user_id uuid PRIMARY KEY DEFAULT
--     uuid_generate_v4(),
--     user_name VARCHAR(255) NOT NULL,
--     user_email VARCHAR(255) NOT NULL,
--     user_password VARCHAR(255) NOT NULL
-- );
CREATE TABLE users(
    user_id BIGSERIAL NOT NULL PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    user_password VARCHAR(255) NOT NULL
);
INSERT INTO users (user_name,user_email,user_password) VALUES ('Aboozar Mojdeh','aboozar.mojdeh@gmail.com','123');
INSERT INTO users (user_name,user_email,user_password) VALUES ('Elmira Ghabbaz','e.ghabbaz@gmail.com','123');
INSERT INTO users (user_name,user_email,user_password) VALUES ('Sara Mojdeh','sara@gmail.com','123');
INSERT INTO users (user_name,user_email,user_password) VALUES ('Pooria Mojdeh','pooria@gmail.com','123');
INSERT INTO users (user_name,user_email,user_password) VALUES ('reza','reza@gmail.com','123');
INSERT INTO users (user_name,user_email,user_password) VALUES ('test','test@gmail.com','123');

CREATE TABLE question(
question_id BIGSERIAL NOT NULL PRIMARY KEY,
foreign_user_id BIGINT NOT NULL REFERENCES users(user_id) on delete cascade on update cascade,
question_text VARCHAR(255) NOT NULL,
answer_text VARCHAR(255) NOT NULL,
is_answered BOOL NOT NULL DEFAULT 'f'
);

INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'What is your favourite color?','empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'What is your favourite car?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'What is your favourite blood group?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'How old are you?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What is your favorite way to spend a day off?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'What type of music are you into?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'What was the best vacation you ever took?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'Where is the next place on your travel bucket list?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'What is your first hobby?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'What was your favorite age growing up?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What was the last thing you read?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'Would you say you  are more of an extrovert or an introvert?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'What is your favorite ice cream topping?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'What was the last TV show you binge-watched?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'Are you into podcasts or do you only listen to music?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'what is your favorite holiday? ', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'If you could only eat one food for the rest of your life, what would it be?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'Do you like going to the movies or prefer watching at home?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'What is your favorite sleeping position?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'What is your go-to guilty pleasure?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'In the summer, would you rather go to the beach or go camping?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'What is your favorite quote from a TV show/movie/book?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'How old were you when you had your first celebrity crush?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'What is one thing that can instantly make your day better?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'Do you have any pet peeves?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'Which meal is your favorite: breakfast, lunch, or dinner?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'What song always gets you out on the dance floor?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'When you were a kid, did you eat the crusts on your sandwich or not?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What activity instantly calms you?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'Ideally, how would you spend your birthday?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'What do you do on your commute to/from work?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'Do you have a favorite type of exercise?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'What is your favorite season?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'What is the best joke you   have ever heard?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What is the phone app you use most?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'Would you rather cook or order in?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'Have your ever disliked something and then changed your mind?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'What is your favorite board game?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'How do you take your coffee?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'What is your most prized possession?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'Is there any product that you could not live without?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'Do you sleep with a top sheet?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'If you could have any exotic animal as a pet, which would it be?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'What would be the first thing you would do if you won the lottery?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'What is your favorite thing about your current job?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'What annoys you most?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What is the career highlight you  are most proud of?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'Do you think you will stay in your current gig awhile?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'What type of role do you want to take on after this one?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'Are you more of a "work to live" or a "live to work" type of person?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'Does your job make you feel happy and fulfilled? ', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'How would your 10-year-old self react to what you do now?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What do you remember most about your first job?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'How old were you when you started working?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'What is the worst job you have ever had?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'What originally got you interested in your current field of work?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'Have you ever had a side hustle or considered having one?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'What is your favorite part of the workday?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What is the best career decision you   have ever made?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'What is the worst career decision you   have ever made?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'Do you consider yourself good at networking?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'What career advice would you give to your younger self?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'Do you believe in having a "five-year plan"?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'How do you separate your work life from your home life?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'When will you know you   have "made it"?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'Are you looking forward to retiring, or do you plan to work as long as possible?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'Have you ever had "imposter syndrome"?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'What do you think about workaholics?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'What qualities do you look for in a boss?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'Do you have a professional mentor?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'Do you have a work best friend?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'Are you into after-work happy hours?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'How do you motivate yourself in your career?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'How do you pick yourself back up after making a mistake at work?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'How do you deal with work stress?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'What energizes you about your career?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What is one work-related thing you want to accomplish in the next year?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'Who has had the biggest impact on your career choice?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'What does your family think of your career?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'What is the best thing you   have learned in your current position?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'If you could do it all over again, would you pursue the same career? ', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'How much time do you spend with your family?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'Who do you most like spending time with?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'Were you close with your family growing up?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'How do you define your family now?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'What traits are most important to you in your family members?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'Who are you the closest to?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'Do you want a family of your own?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What is your favorite family tradition?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'If you could change your relationship with a family member, would you? ', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'What was it like growing up as the youngest/oldest/middle/only child?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'Does your family ever take trips together?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'What is your favorite family memory?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'What TV family most reminds you of your own?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'Do you ever wish you were raised differently?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'What is the best piece of advice a family member has given you?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'Do you wish you had more siblings?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'Did you ever hide anything from or lie to your parents?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'If you had a family business, what would it be?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'Do you and your family have any nicknames for each other?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What is your favorite way to spend time with your family?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'How do you show your family you love them?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'Have you ever been to a family reunion?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'What is the most important holiday you spend with your family?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'Who in your family would you describe as a "character"?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'How do you feel about family events?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What is something your family would be surprised to learn about you?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'Which family member do you confide in most?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'How do you deal with arguments between family members?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'Do you have any friends you would consider family?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'Has your family ever pressured you to act a certain way?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'Did you ever get to meet your great-grandparents?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What personality traits do you share with your relatives?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'What physical traits do you share with your relatives?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'What stories did your family members tell you growing up?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'How did your parents (and/or grandparents) meet?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'What makes you proud of your family?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'Who is the newest member of your family?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What can always bring your family together?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'What is a relationship deal breaker for you?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'If you had only one sense (hearing, touch, sight, etc.), which would you want?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'What is your definition of success?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'What makes you feel at peace?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'What are you most proud of in the last year?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What makes you feel most accomplished?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'Who do you admire most in the world?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'Would you rather make more money doing a job you hate or less doing one you love?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'Which of your personality traits are you most proud of?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'What is the first thing you look for in a partner and/or friend?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'How has your perspective on the world changed over time?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'Do you live by any piece of advice or motto?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'How can someone earn your trust?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'How can someone lose your trust?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'Would you rather someone be honest and hurt your feelings or lie to protect them?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'If you could snap your fingers and instantly make the world better, what would you do?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'Do you believe in astrology?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'Have you ever lost a friend?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'If you could only teach one thing to your (future) child, what would it be?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'What is the scariest thing you   have ever done, and why did you do it?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'Do you believe in second chances?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'Where do you get your news?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'What is your biggest irrational fear?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'Are you active on social media, or do you prefer to be more private?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'Do you volunteer at all?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'Are you an organ donor?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'Do you believe you should do one thing a day that scares you?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'What, if anything, do you think happens after death?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'What line should someone never cross with you?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'How do you define beauty?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'Do you believe in life on other planets?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'How do you interact with someone who disagrees with you?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'If you could do anything, besides what you  are doing now, what would you do?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'What do you regret not doing in the last year?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'What is on your bucket list?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'If you had unlimited money to start your own business, what would it be?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'If you found out today was your last day on Earth, what would you do?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'If you could live anywhere in the world, where would it be?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'A genie gives you three wishes—what are they?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'If you had the opportunity to be immortal, would you take it?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'Which famous person in history would you want to spend the day with?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'If you could time travel, where would you go?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'Do you think you will likely accomplish all your dreams?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'If you could magically become famous, would you want to?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'If you could relive one moment in your life, which would it be?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'If you see a puddle on the ground, do you walk around it or over it?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'If you could have a super power, what would it be?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'If you could go back to anytime in history, where would you go?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'If you came back in your next life as an animal, what animal would you be?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'If you got to name a new country, ', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'how would you decide what to call it?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'What would be the title of your memoir?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'Do you hit the snooze button or wake up immediately?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What is the first thing you do in the morning?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'What is the last thing you do at night?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'Do you believe in any conspiracy theories (no judgement)?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'Do you think iced coffee should only be consumed in the summer or all year round?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'Would you rather be covered in fur or covered in scales?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'What is your idea of a perfect date (yes, of the calendar year)?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What is the most unusual place you   have fallen asleep?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'At a party, where can someone find you?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'Do you wash your legs in the shower?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'Who would play you in the movie of your life?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'When making a PB&J sandwich, do you put on the peanut butter or jelly first?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'Do you have any allergies?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'Do you trust your own memory?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'Which fictional character do you relate to most?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'What, if anything, would make you walk out in the middle of a movie?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'When was the last time you cried?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'What is your most controversial opinion about something mundane?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'Do you "stan" any celebrities?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What is your go-to midnight snack?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'What was your all-time favorite Halloween costume?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'What is the weirdest thing you do when you  are alone?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'Do you have any recurring dreams?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'What is the silliest argument you   have ever been in?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'What is the worst argument you   have ever been in?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (5,'What is your opinion on modern art?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (6,'If you could choose how to die, would you? If so, what would you choose?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (1,'What is the most ridiculous outfit you   have ever worn?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (2,'What was the first thing you wanted to be when you grew up?', 'empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (3,'If you could own a mythical creature (unicorn, phoenix, etc.), which one would you pick?','empty','f');
INSERT INTO question (foreign_user_id,question_text,answer_text, is_answered) VALUES (4,'What is your least favorite place in the world?','empty','f');



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

