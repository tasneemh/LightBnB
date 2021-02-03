-- add values to users table
INSERT INTO users VALUES (1, 'Eva Stanley', 'sebastienguerra@ymail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users VALUES (2, 'Louisa Meyer', 'jacksonrose@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users VALUES (3, 'Dominic Parks', 'victoriablackwell@outlook.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users VALUES (4, 'Sue Luna', 'jacksonvincent@gmx  .com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users VALUES (5, 'Rosalie Garza', 'jacksondavid@gmx.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users VALUES (6, 'Etta West', 'charlielevy@yahoo.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users VALUES (7, 'Margaret Wong', 'makaylaweisss@icloud.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
INSERT INTO users VALUES (8, 'Leroy Hart', 'jaycereynolds@inbox.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

-- id | owner_id | title | description | thumbnail_photo_url | cover_photo_url | cost_per_night | parking_spaces | number_of_bathrooms | number_of_bedrooms | country | street | city | province | post_code | active

-- add values to properties table
INSERT INTO properties VALUES (1, 1, 'Speed lamp', 'description','https://www.google.com/search?q=images+of+houses&rlz=1C5CHFA_enCA897CA898&', 'https://www.google.com/search?q=images+of+houses&rlz=1C5CHFA_enCA897CA898&s', 93061, 6, 4, 8, 'Canada', '536 Namsub Highway', 'Sotboske', 'Quebec', 28142, true);
INSERT INTO properties VALUES (2, 1, 'Blank corner', 'description','https://www.google.com/search?q=images+of+houses&rlz=1C5CHFA_enCA897CA898&', 'https://www.google.com/search?q=images+of+houses&rlz=1C5CHFA_enCA897CA898&s', 85234, 6, 6, 7, 'Canada', '651 Nami Road', 'Bohbatev', 'Alberta', 83680, true);
INSERT INTO properties VALUES (3, 2, 'Habit mix', 'description','https://www.google.com/search?q=images+of+houses&rlz=1C5CHFA_enCA897CA898&', 'https://www.google.com/search?q=images+of+houses&rlz=1C5CHFA_enCA897CA898&s', 46058, 0, 5, 6, 'Canada', '1650 Hejto Center', 'Genwezuj', 'Newfoundland And Labrador', 44583, true);
INSERT INTO properties VALUES (4, 4, 'Headed know', 'description','https://www.google.com/search?q=images+of+houses&rlz=1C5CHFA_enCA897CA898&', 'https://www.google.com/search?q=images+of+houses&rlz=1C5CHFA_enCA897CA898&s', 82640, 0, 5, 5, 'Canada', '513 Powov Grove', 'Jaebvap', 'Ontario', 38051, true);
INSERT INTO properties VALUES (5, 6, 'Port out', 'description','https://www.google.com/search?q=images+of+houses&rlz=1C5CHFA_enCA897CA898&', 'https://www.google.com/search?q=images+of+houses&rlz=1C5CHFA_enCA897CA898&s', 2358, 2, 8, 0, 'Canada', '1392 Gaza Junction', 'Upetafpuv', 'Nova Scotia', 81059, true);
INSERT INTO properties VALUES (6, 6, 'Fun glad', 'description','https://www.google.com/search?q=images+of+houses&rlz=1C5CHFA_enCA897CA898&', 'https://www.google.com/search?q=images+of+houses&rlz=1C5CHFA_enCA897CA898&s', 34291, 6, 6, 4, 'Canada', '169 Nuwug Circle', 'Vutgapha', 'Newfoundland And Labrador', 00159, true);
INSERT INTO properties VALUES (7, 7, 'Shine twenty', 'description','https://www.google.com/search?q=images+of+houses&rlz=1C5CHFA_enCA897CA898&', 'https://www.google.com/search?q=images+of+houses&rlz=1C5CHFA_enCA897CA898&s', 13644, 1, 7, 8, 'Canada', '340 Dokto Park', 'Upfufa', 'Nova Scotia', 29045, true);
INSERT INTO properties VALUES (8, 8, 'Game fill', 'description','https://www.google.com/search?q=images+of+houses&rlz=1C5CHFA_enCA897CA898&', 'https://www.google.com/search?q=images+of+houses&rlz=1C5CHFA_enCA897CA898&s', 23428, 5, 6, 4, 'Canada', '834 Buwmi Road', 'Rotunif', 'Newfoundland And Labrador', 58224, true);

-- add values to reservations table
-- id | start_date | end_date | property_id | guest_id 
----+------------+----------+-------------+----------
INSERT INTO reservations VALUES (1, '2018-09-11', '2018-09-26', 2, 3);
INSERT INTO reservations VALUES (2, '2019-01-04', '2019-02-01', 2, 2);
INSERT INTO reservations VALUES (3, '2021-10-01', '2021-10-14', 1, 4);
INSERT INTO reservations VALUES (4, '2014-10-21', '2014-10-21', 3, 5);
INSERT INTO reservations VALUES (5, '2016-07-17', '2016-08-01', 3, 4);
INSERT INTO reservations VALUES (6, '2018-05-01', '2018-05-01', 4, 8);
INSERT INTO reservations VALUES (7, '2022-10-04', '2022-10-23', 5, 1);
INSERT INTO reservations VALUES (8, '2015-09-13', '2015-09-13', 6, 8);
INSERT INTO reservations VALUES (9, '2023-05-27', '2023-05-28', 4, 2);
INSERT INTO reservations VALUES (10, '2023-04-23', '2023-05-02', 8, 1);

-- add values to property_reviews table
--  id | guest_id | property_id | reservation_id | rating | message 
----+----------+-------------+----------------+--------+---------
INSERT INTO property_reviews VALUES (1, 2, 5, 10, 3, 'messages');
INSERT INTO property_reviews VALUES (2, 1, 4, 1, 4, 'messages');
INSERT INTO property_reviews VALUES (3, 8, 1, 2, 4, 'messages');
INSERT INTO property_reviews VALUES (4, 3, 8, 5, 4, 'messages');
INSERT INTO property_reviews VALUES (5, 4, 2, 7, 5, 'messages');
INSERT INTO property_reviews VALUES (6, 4, 3, 4, 4, 'messages');
INSERT INTO property_reviews VALUES (7, 5, 6, 3, 5, 'messages');