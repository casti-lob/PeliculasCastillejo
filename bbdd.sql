CREATE DATABASE peliculasCastillejo;
CREATE TABLE peliculasCastillejo.USERS
	(id 			int(8) AUTO_INCREMENT,
    password 		VARCHAR(32),
	name 		VARCHAR(200),
    nick		varchar(100),
    dateUser	DATE,
    gender		boolean,
    admin		boolean,
	CONSTRAINT pk_users PRIMARY KEY (id)
	);
    
CREATE TABLE peliculasCastillejo.CATEGORY
	(code_cat 		int(8) AUTO_INCREMENT, 
     name 		varchar(100),
     description    varchar(300),
     CONSTRAINT pk_category PRIMARY KEY (code_cat)
    );
CREATE TABLE peliculasCastillejo.ELEMENT
	(code_ele 		int(8) AUTO_INCREMENT,
    name_ele		varchar(100) unique,
    description_ele varchar(300),
    price			double(8,3),
     code_cat 		int(8),
    CONSTRAINT pk_element PRIMARY KEY (code_ele),
    CONSTRAINT fk_element FOREIGN KEY (code_cat) REFERENCES peliculasCastillejo.CATEGORY(code_cat) ON DELETE CASCADE
    );
    
CREATE TABLE peliculasCastillejo.PRODUCT
	(id_user 	int(8),
     code_ele	int(8),
     number		int(8),
     price		double(8,3),
     dateBuy 	date,
     CONSTRAINT pk_product PRIMARY KEY (id_user,code_ele,dateBuy),
     CONSTRAINT fk_product_user FOREIGN KEY (id_user) REFERENCES peliculasCastillejo.USERS (id) ON DELETE CASCADE,
     CONSTRAINT fk_product_element FOREIGN KEY (code_ele) REFERENCES peliculasCastillejo.ELEMENT (code_ele) ON DELETE CASCADE
       );
       
insert into peliculasCastillejo.USERS (id, password, name, dateUser, gender, admin) values (1, md5('paswword'), 'Ricold', '2022-07-8', true, false);
insert into peliculasCastillejo.USERS (id, password, name, dateUser, gender, admin) values (2, md5('paswword'), 'MacColm', '2022-07-8', true, false);
insert into peliculasCastillejo.USERS (id, password, name, dateUser, gender, admin) values (3, md5('paswword'), 'Matijevic', '2022-07-8', false, true);
insert into peliculasCastillejo.USERS (id, password, name, dateUser, gender, admin) values (4, md5('paswword'), 'Shemwell', '2022-07-8', true, false);
insert into peliculasCastillejo.USERS (id, password, name, dateUser, gender, admin) values (5, md5('paswword'), 'Dermot', '2022-07-8', true, false);
insert into peliculasCastillejo.USERS (id, password, name, dateUser, gender, admin) values (6, md5('paswword'), 'Denny', '2022-07-8', true, true);
insert into peliculasCastillejo.USERS (id, password, name, dateUser, gender, admin) values (7, md5('paswword'), 'Djekovic', '2022-07-8', false, true);
insert into peliculasCastillejo.USERS (id, password, name, dateUser, gender, admin) values (8, md5('paswword'), 'Cordeau]', '2022-07-8', true, false);
insert into peliculasCastillejo.USERS (id, password, name, dateUser, gender, admin) values (9, md5('paswword'), 'Offill', '2022-07-8', true, true);
insert into peliculasCastillejo.USERS (id, password, name, dateUser, gender, admin) values (10, md5('paswword'), 'Bonnick', '2021-07-8', true, true);


insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (1, 'Drama|Musical', '13-170 - Tubs and Pools');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (2, 'Comedy', '8 - Doors and Windows');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (3, 'Drama', '7-800 - Fire and Smoke Protection');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (4, 'Sci-Fi|Thriller', '13-175 - Ice Rinks');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (5, 'Action|Drama', '2-782 - Brick Pavers');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (6, 'Sci-Fi|Thriller', '10-880 - Scales');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (7, 'Horror', '11-400 - Food Service Equipment');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (8, 'Drama', '1-903 - Hazardous Materials Abatement');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (9, 'Drama', '7-300 - Shingles, Roof Tiles, and Roof Coverings');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (10, 'Drama', '3 - Concrete');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (11, 'Adventure|Animation|Children|Fantasy|Mystery|Sci-Fi', '10-340 - Manufactured Exterior Specialties');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (12, 'Adventure|Animation|Fantasy|IMAX', '2-823 - PVC Fences and Gates');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (13, 'Comedy', '15-100 - Plumbing');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (14, 'War', '1-500 - Temporary Facilities and Controls');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (15, 'Drama', '3-400 - Precast Concrete');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (16, 'Comedy|Drama', '14-700 - Turntables');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (17, 'Crime|Drama', '13-400 - Measurement and Control Instrumentation');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (18, 'Comedy|Drama|Romance', '2-230 - Site Clearing');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (19, 'Horror|Mystery', '13-900 - Fire Suppression');
insert into peliculasCastillejo.CATEGORY (code_cat, name, description) values (20, 'Adventure|Comedy|Sci-Fi', '4-700 - Simulated Masonry');






insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (1, 'Day of the Outlaw', 93, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (2, 'Brand Upon the Brain!', 43, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (3, '...All the Marbles (California Dolls, The)', 84, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (4, 'Thérèse', 69, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (5, 'Big Bird Cage, The', 94, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (6, 'Red Elvis, The (Der rote Elvis)', 87, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (7, 'Ocean''s Twelve', 53, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (8, 'Anzio', 86, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (9, 'Gun Woman', 35, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (10, 'My Little Pony: Equestria Girls', 55, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (11, 'Kiss for Corliss, A (Almost a Bride)', 65, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (12, 'Let It Ride', 32, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (13, 'Who Are you Polly Maggoo (Qui êtes-vous, Polly Maggoo?)', 53, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (14, 'Night of the Comet', 28, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (15, 'Shades of Ray', 79, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (16, 'Blue City', 61, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (17, 'Sharkwater', 55, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (18, 'Something to Sing About', 44, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (19, 'Flying Scotsman, The', 35, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (20, 'Man Called Sledge, A', 59, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (21, 'Fat City', 39, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (22, 'Campfire Tales', 55, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (23, 'Pahat pojat', 15, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (24, 'Autumn Tale, An (Conte d''automne)', 53, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (25, 'Von Ryan''s Express', 64, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (26, 'Best of the Best 3: No Turning Back', 27, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (27, 'Asterix & Obelix: Mission Cleopatra (Astérix & Obélix: Mission Cléopâtre)', 22, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (28, 'Second Chance, The', 74, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (29, 'Je préfère qu''on reste amis', 24, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (30, '20,000 Leagues Under the Sea', 30, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (31, 'Last of the Dogmen', 15, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (32, 'Psychopath, The', 31, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (33, 'Underworld U.S.A.', 35, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (34, 'Le Week-End', 90, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (35, 'The Widow From Chicago', 52, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (36, 'Saturn 3', 73, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (37, 'Renaissance', 84, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (38, 'Kalifornia', 51, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (39, 'Color Wheel, The', 25, 12);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (40, 'Simon Birch', 56, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (41, 'Meet Bill', 80, 3);

insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (43, 'Stolen Face', 24, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (44, 'T-Rex: Back to the Cretaceous', 70, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (45, 'Great King, The (Der große König)', 98, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (46, 'City of Pirates (La ville des pirates) ', 76, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (47, 'Red White & Blue', 81, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (48, 'Possessed', 33, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (49, 'Eagle, The', 28, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (50, 'Sin City', 16, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (51, 'Stake Land', 60, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (52, 'Surveillance', 99, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (53, 'The Madagascar Penguins in a Christmas Caper', 89, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (54, 'After Fall, Winter', 51, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (55, 'Gappa: The Triphibian Monsters (AKA Monster from a Prehistoric Planet) (Daikyojû Gappa)', 89, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (56, 'Riding the Bullet', 32, 11);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (57, 'Stanley and Livingstone', 36, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (58, 'Dancing Lady', 93, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (59, 'Don''t Look Back (Ne te retourne pas)', 34, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (60, 'No Deposit, No Return', 46, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (61, 'Valley of Head Hunters', 45, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (62, 'Fright', 81, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (63, 'Suburbia', 58, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (64, 'Haaveiden kehä', 26, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (65, 'Gaby: A True Story', 51, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (66, 'Orgazmo', 33, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (67, 'About a Boy', 69, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (68, 'Up in Arms', 22, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (69, 'Alan & Naomi', 49, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (70, 'Lorna', 80, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (71, 'Take Me Home Tonight', 99, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (72, 'Zombie Girl: The Movie', 48, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (73, 'Poltergeist II: The Other Side', 86, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (74, 'Dark Angel, The', 38, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (75, 'The Face of Love', 87, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (76, 'Venice-Venice', 38, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (77, 'Trip to Italy, The', 92, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (78, '10 Questions for the Dalai Lama', 52, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (79, '10th Kingdom, The', 95, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (80, 'Maidens'' Conspiracy, The (Tirante el Blanco)', 100, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (81, 'Virtuosity', 36, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (82, 'Redline', 39, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (83, 'Sunshine', 36, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (84, 'Smell of Camphor, Fragrance of Jasmine (Booye kafoor, atre yas)', 44, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (85, 'North & South', 97, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (86, 'Venus Boyz', 94, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (87, 'Music Man, The', 77, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (88, 'Stockholm, Pennsylvania', 67, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (89, 'Eyes Wide Shut', 72, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (90, 'Simone (S1m0ne)', 93, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (91, 'Marriage Retreat', 78, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (92, 'Catch That Kid', 100, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (93, 'Butterfield 8', 69, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (94, 'I''ll Be Home For Christmas', 52, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (95, 'Double Dynamite', 17, 12);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (96, 'Murder Ahoy', 60, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (97, 'Best Boy', 83, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (98, 'Wedding Date, The', 71, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (99, 'Suicide Shop, The (Le magasin des suicides) ', 34, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (100, 'Hackers', 27, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (101, 'Dirty Dancing: Havana Nights', 54, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (102, 'Shag', 96, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (103, 'I Shot Andy Warhol', 46, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (104, 'Stakeout', 97, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (105, 'Hercules and the Circle of Fire', 16, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (106, 'Killer Crocodile', 72, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (107, 'Death Machine', 85, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (108, 'Like Mike 2: Streetball', 17, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (109, 'Mr. Woodcock', 49, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (110, 'Inferno', 21, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (111, 'Stardust Memories', 47, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (112, 'Levottomat 3', 34, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (113, 'Johnny Eager', 51, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (114, 'Who Killed Nancy?', 89, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (115, 'Plaisir, Le', 54, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (116, 'Other Voices, Other Rooms', 35, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (117, 'Mark, The', 26, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (118, 'Frida', 43, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (119, 'Bigga Than Ben', 100, 11);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (120, 'Blablablá', 46, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (121, 'September', 36, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (122, 'Magician, The (Ansiktet)', 75, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (123, 'Into Eternity', 78, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (124, 'Snake Woman''s Curse', 76, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (125, 'Dawn of the Planet of the Apes', 39, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (126, 'Dogtown and Z-Boyz', 31, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (127, 'Out Cold', 90, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (128, 'House Party 3', 73, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (129, 'Better Than Sex', 44, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (130, 'Four more years (Fyra år till)', 58, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (131, 'Mothlight', 27, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (132, 'Trio', 85, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (133, 'Flight of the Living Dead', 36, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (134, 'Life Itself', 80, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (135, 'Million Dollar Mystery', 75, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (136, 'Runaway Bride', 57, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (137, 'Donos de Portugal', 32, 14);

insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (139, 'Ideal Husband, An', 75, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (140, 'Starship Troopers: Invasion', 49, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (141, 'Deuce Bigalow: European Gigolo', 91, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (142, 'Oh, Woe Is Me (Hélas pour moi)', 70, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (143, 'Persuasion', 51, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (144, 'Francis', 69, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (145, 'Dirty Dozen: The Deadly Mission', 25, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (146, '101 Dalmatians (One Hundred and One Dalmatians)', 56, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (147, 'My Avatar and Me (Min Avatar og mig)', 38, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (148, 'Tevye', 44, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (149, 'Evil Roy Slade', 88, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (150, 'Ballroom, The (Chega de Saudade)', 95, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (151, 'How to Stuff a Wild Bikini', 37, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (152, 'Burning Plain, The', 85, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (153, 'Camp Rock', 32, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (154, 'Son of Dracula', 17, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (155, 'Spun', 97, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (156, 'Slipstream', 17, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (157, 'Prefontaine', 32, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (158, 'Public Eye, The', 54, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (159, 'Cookout, The', 33, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (160, 'Eden Lake', 66, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (161, 'Kumaré', 86, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (162, 'Madison Avenue', 66, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (163, 'You and Me (Ty i ya)', 59, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (164, 'Aks', 99, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (165, 'Batman: Gotham Knight', 85, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (166, 'Ten Little Indians (Ein Unbekannter rechnet ab) (And Then There Were None)', 39, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (167, 'Young One, The', 58, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (168, 'Guest, The', 54, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (169, 'Caught Inside', 52, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (170, 'Dangerous Liaisons', 74, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (171, 'Torrente 5: Operación Eurovegas', 36, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (172, 'Moment After, The', 26, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (173, 'Cloud Atlas', 48, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (174, 'And Soon the Darkness', 43, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (175, 'Unvanquished, The (Aparajito)', 86, 12);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (176, 'Town Called Panic, A (Panique au village)', 48, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (177, 'Fast, Cheap & Out of Control', 37, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (178, 'Hobbit, The', 68, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (179, 'Ghost Adventures', 22, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (180, 'Wonder Boys', 49, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (181, 'Purple Butterfly (Zi hudie)', 97, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (182, 'Thirst (Bakjwi)', 28, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (183, 'Gamera vs. Gyaos (Daikaijû kûchûsen: Gamera tai Gyaosu)', 52, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (184, 'Man on Wire', 63, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (185, 'Brake', 99, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (186, 'Bollywood-Hollywood', 34, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (187, 'Magic', 92, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (188, '2 Days in the Valley', 79, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (189, 'Another You', 27, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (190, 'Harriet Craig', 97, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (191, 'The Flower', 89, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (192, 'Animals United', 80, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (193, 'The Imitation Game', 79, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (194, 'The Adventures of Tom Thumb & Thumbelina', 63, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (195, 'Leaving Las Vegas', 28, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (196, 'Vibes', 89, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (197, 'Pill, The', 37, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (198, 'Wer', 38, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (199, 'Time of Peace (Tempos de Paz)', 70, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (200, 'War and Peace (Voyna i mir)', 65, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (201, 'Once Upon a Warrior (Anaganaga O Dheerudu)', 20, 11);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (202, 'Trippin''', 74, 12);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (203, 'Crude Oasis, The', 98, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (204, 'Wah-Wah', 44, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (205, 'We''re Back! A Dinosaur''s Story', 45, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (206, 'Hot Shots! Part Deux', 21, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (207, 'Dear Me', 75, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (208, 'Shaft in Africa', 18, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (209, 'Inception', 47, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (210, 'Jealousy', 35, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (211, 'Taken 3', 90, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (212, 'Basket Case 3: The Progeny', 34, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (213, 'Piece of the Action, A', 24, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (214, 'Killshot', 96, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (215, 'Amityville: A New Generation', 42, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (216, 'Freaked', 80, 12);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (217, 'Staten Island', 26, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (218, 'Planet of the Future, The', 76, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (219, 'Clara''s Heart', 58, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (220, 'Nomi Song, The', 18, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (221, 'Honey Moon (Honigmond)', 85, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (222, 'F-X', 84, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (223, 'River''s Edge', 66, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (224, 'Angry Video Game Nerd: The Movie', 52, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (225, '24: Redemption', 81, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (226, 'Beginner''s Guide to Endings, A', 23, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (227, 'Destination Moon', 52, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (228, 'Shadows Over Chinatown', 82, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (229, 'Adventures of Hajji Baba, The', 40, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (230, 'Dakota', 83, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (231, 'Air America', 45, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (232, 'Disaster L.A.', 47, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (233, 'Razor''s Edge, The', 49, 18);

insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (235, 'Adventures of a Dentist', 94, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (236, 'The Case of the Lucky Legs', 62, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (237, 'Bounty Hunters (Bail Enforcers)', 77, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (238, 'Monsters', 56, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (239, 'Presence, The', 94, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (240, 'Rising Place, The', 71, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (241, 'Texas', 100, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (242, 'Hang ''Em High', 98, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (243, 'Godard''s Passion (Passion)', 75, 12);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (244, 'Phantom Stagecoach, The', 95, 11);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (245, 'Saints and Soldiers: The Void', 33, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (246, 'Explorers', 22, 11);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (247, 'Linda Linda Linda', 79, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (248, 'Serial Killer Culture', 23, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (249, 'Small Town Girl', 48, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (250, 'Gang''s All Here, The', 87, 12);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (251, 'Special 26', 54, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (252, 'Salvage', 29, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (253, 'Erendira', 74, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (254, 'Skies Above the Landscape (Nebo iznad krajolika)', 38, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (255, 'Silent House', 61, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (256, 'Career', 76, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (257, 'Great!', 82, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (258, 'All Night Long', 95, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (259, 'Prince of Persia: The Sands of Time', 55, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (260, 'Rafa', 42, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (261, 'Opposing Force', 66, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (262, 'Phantom of the Woods', 55, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (263, 'Borgman', 89, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (264, 'Dinner for Schmucks', 33, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (265, 'Hope Springs', 41, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (266, 'Empty Mirror, The', 62, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (267, 'Beaufort', 19, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (268, 'Paziraie Sadeh', 66, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (269, 'Street Fighter, The (Gekitotsu! Satsujin ken)', 35, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (270, 'Near East, The (El Proximo Oriente)', 61, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (271, 'Marie Antoinette', 53, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (272, 'Pickpocket', 52, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (273, 'Too Early, Too Late (Trop tôt, trop tard)', 69, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (274, 'Black Moon', 42, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (275, 'I Love You, I Love You Not', 42, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (276, 'Fausto 5.0', 84, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (277, 'Damnation Alley', 17, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (278, 'Defiance', 66, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (279, 'Warrior', 74, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (280, '40-Year-Old Virgin, The', 74, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (281, 'The Improv: 50 Years Behind the Brick Wall', 19, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (282, 'Nancy Drew: Detective', 63, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (283, 'Gothic', 87, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (284, 'The Mummy''s Shroud', 89, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (285, 'Seduction of Joe Tynan, The', 59, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (286, 'Hugh Hefner: Playboy, Activist and Rebel', 77, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (287, 'True Romance', 29, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (288, 'Occurrence at Owl Creek Bridge, An (La rivière du hibou)', 17, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (289, 'Agata and the Storm (Agata e la tempesta)', 54, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (290, 'Poseidon Adventure, The ', 28, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (291, 'Dealer', 41, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (292, 'MacGyver: Trail to Doomsday', 21, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (293, 'My Summer of Love', 39, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (294, 'Human Family Tree, The', 43, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (295, 'Underworld', 97, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (296, 'Metalhead (Málmhaus)', 65, 19);

insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (298, 'Anna', 23, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (299, 'American Pie Presents The Naked Mile (American Pie 5: The Naked Mile)', 51, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (300, 'Derrida', 31, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (301, 'Haunting in Connecticut, The', 38, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (302, 'For All Mankind', 56, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (303, 'Beverly Hills Cop II', 84, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (304, 'Gazebo, The', 87, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (305, 'Bullets Don''t Argue', 76, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (306, 'Changeling, The', 96, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (307, 'Choke', 27, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (308, 'Blood Diamond', 79, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (309, 'Cold Prey III (Fritt Vilt III)', 87, 12);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (310, 'Hum Dil De Chuke Sanam', 94, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (311, 'Uncle Marin, the Billionaire (Nea Marin miliardar) (Uncle Martin, the Multimillionaire)', 73, 11);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (312, 'Thief of Paris, The (Le voleur)', 38, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (313, 'Love Parade, The', 82, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (314, 'Edison Force (a.k.a. Edison)', 70, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (315, 'Khartoum', 82, 11);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (316, 'History of Kim Skov (Historien om Kim Skov)', 22, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (317, 'Fast Times at Ridgemont High', 40, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (318, 'In Therapy (Divã)', 34, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (319, 'Comancheros, The', 24, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (320, 'Superman Unbound', 98, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (321, 'Fiston', 81, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (322, 'Always', 34, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (323, 'Hulk Vs.', 96, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (324, 'Tokyo Sonata', 85, 11);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (325, 'Dead Ringers', 29, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (326, 'Arsène Lupin', 34, 12);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (327, 'Ama lur (Tierra Madre)', 16, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (328, 'Stephanie Daley', 62, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (329, 'Night at the Museum', 25, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (330, 'StreetDance 3D', 43, 11);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (331, 'My Louisiana Sky', 70, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (332, 'Three Wise Men (Kolme viisasta miestä)', 44, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (333, 'Freedom Song', 16, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (334, 'Anna Madelina (Ngon na ma dak lin na)', 95, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (335, 'Aqua Teen Hunger Force Colon Movie Film for Theaters', 81, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (336, 'Escape Fire: The Fight to Rescue American Healthcare', 58, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (337, 'How to Meet Girls from a Distance', 30, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (338, 'Thousand Acres, A', 53, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (339, 'Rush Hour 2', 19, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (340, 'Babylon 5: The Lost Tales - Voices in the Dark', 80, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (341, 'Hamsun', 25, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (342, 'Scarecrow', 80, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (343, 'Soft Shell Man (Un crabe dans la tête)', 24, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (344, '55 Days at Peking', 18, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (345, 'Still Walking (Aruitemo aruitemo)', 58, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (346, 'What About Dick?', 72, 12);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (347, 'Rumor of Angels, A', 57, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (348, 'Assault, The (Aanslag, De)', 84, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (349, 'Space Truckers', 32, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (350, 'Hurricane Streets', 74, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (351, 'Mobsters', 39, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (352, 'Escaflowne: The Movie (Escaflowne)', 60, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (353, 'Telling You', 28, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (354, 'American Pie Presents: Band Camp (American Pie 4: Band Camp)', 32, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (355, 'Song Is Born, A', 82, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (356, 'Skirt Day (La journée de la jupe)', 36, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (357, 'Ice Soldiers', 29, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (358, 'Hellfighters', 15, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (359, 'Imagine: John Lennon', 87, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (360, 'Big Combo, The', 16, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (361, 'Girls, Les', 48, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (362, 'WUSA', 79, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (363, 'Visiting Hours', 44, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (364, 'Map of the Human Heart', 66, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (365, 'Hell''s Kitchen', 37, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (366, 'Scream 3', 41, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (367, 'Preacher''s Wife, The', 91, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (368, 'Cleanskin', 25, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (369, 'Muppet Christmas Carol, The', 93, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (370, 'Next Best Thing, The', 60, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (371, 'Love Is a Many-Splendored Thing', 23, 2);

insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (373, 'Deuces Wild', 57, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (374, 'Decoys', 17, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (375, 'Where Is Fred!? (Wo ist Fred?)', 54, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (376, 'Every Other Week (Varannan vecka)', 24, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (377, 'Falling (a.k.a. Fallen)', 84, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (378, 'Alice in Wonderland', 90, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (379, 'Toomorrow', 78, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (380, 'Risky Business', 31, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (381, 'Melvin and Howard', 61, 11);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (382, 'Deliver Us from Eva', 64, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (383, 'Shanghai Gesture, The', 98, 12);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (384, 'Triumph of Love, The', 95, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (385, 'Arbor, The', 20, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (386, 'Last Casino, The', 37, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (387, 'Castaway Cowboy, The', 85, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (388, 'Carry On Teacher', 93, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (389, 'Temptress, The', 25, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (390, 'FearDotCom (a.k.a. Fear.com) (a.k.a. Fear Dot Com)', 75, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (391, 'Lust for Life', 59, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (392, 'Maybe, Maybe Not (Bewegte Mann, Der)', 36, 11);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (393, 'Trancers II', 80, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (394, 'Thin Blue Lie, The', 60, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (395, 'Up in the Air', 20, 11);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (396, 'Yesterday', 95, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (397, 'Plainsman, The', 64, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (398, 'Solaris (Solyaris)', 94, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (399, 'Gabby Douglas Story, The', 61, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (400, 'Franklyn', 99, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (401, 'Man Who Left His Will on Film, The (Tôkyô sensô sengo hiwa)', 98, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (402, 'Joe Versus the Volcano', 23, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (403, 'Rooster''s Breakfast (Petelinji zajtrk)', 70, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (404, 'Black Angel', 32, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (405, 'Fire on the Mountain', 43, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (406, 'Everything Must Go', 72, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (407, 'Times Square', 37, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (408, 'Generation P', 75, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (409, 'Kevin Smith: Too Fat For 40', 19, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (410, 'Family Tree', 54, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (411, 'Rock, Paper, Scissors: The Way of the Tosser', 45, 12);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (412, 'China Moon', 68, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (413, 'Reckoning, The', 79, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (414, 'Wrong Turn 4', 74, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (415, 'Life with Father', 69, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (416, 'Our Beloved Month of August (Aquele Querido Mês de Agosto)', 74, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (417, 'Annie Hall', 74, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (418, 'Collision Course', 51, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (419, 'Purge, The', 48, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (420, 'In the Heat of the Night', 73, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (421, 'Five Fingers', 18, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (422, 'Apartment 1303', 40, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (423, 'Bus 174 (Ônibus 174)', 25, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (424, 'Phone (Pon)', 48, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (425, 'Carmina and Amen (Carmina y amén)', 46, 12);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (426, 'Lisbela e o Prisioneiro (Lisbela and the Prisoner)', 28, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (427, 'Private Life of Henry VIII, The', 98, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (428, 'Fifty-Fifty', 33, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (429, 'Someone Marry Barry', 79, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (430, 'Anchors Aweigh', 30, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (431, 'Reaching for the Moon', 69, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (432, 'Grand Theft Parsons', 93, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (433, 'Year of the Comet', 26, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (434, 'Killing Room, The', 69, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (435, 'One Missed Call (Chakushin ari)', 65, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (436, 'J.C. Chávez (a.k.a. Chavez)', 47, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (437, 'Dhobi Ghat', 59, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (438, 'Midnight in Paris', 40, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (439, 'Ryan''s Daughter', 91, 12);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (440, 'Valmont', 85, 11);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (441, 'Nocturno 29', 84, 16);

insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (443, 'Dog of Flanders, A', 60, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (444, 'Le créateur ', 30, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (445, 'Bloody Bloody Bible Camp', 70, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (446, 'Divine Secrets of the Ya-Ya Sisterhood', 88, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (447, 'Living Daylights, The', 69, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (448, 'Stalker', 71, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (449, 'Blank City', 64, 7);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (450, 'Permanent Vacation', 56, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (451, 'Three Colors: Red (Trois couleurs: Rouge)', 99, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (452, 'Call Northside 777', 26, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (453, 'Ivans xtc.', 85, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (454, 'Slums of Beverly Hills, The', 92, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (455, 'Outpost', 32, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (456, 'A Gathering of Eagles', 72, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (457, 'Stretch', 82, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (458, 'Come Dance with Me!', 43, 12);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (459, 'Brats, The (Les gamins)', 34, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (460, 'No Way Out', 39, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (461, 'Major Payne', 44, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (462, 'Holy Matrimony', 20, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (463, 'Center Stage', 95, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (464, 'Fitzwilly', 35, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (465, 'Fist of the North Star', 88, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (466, 'The Sea That Thinks', 94, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (467, 'Limits of Control, The', 19, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (468, 'Fuga de cerebros', 56, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (469, 'Clap, You''re Dead', 66, 4);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (470, 'Dark Corner, The', 58, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (471, 'Ween Live in Chicago', 92, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (472, 'French Fried Vacation 2 (Les bronzés font du ski)', 72, 6);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (473, 'Mouth to Mouth (Boca a boca)', 68, 9);

insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (475, 'Central Park Five, The', 42, 9);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (476, 'Life Is Sweet', 56, 11);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (477, 'Notorious Landlady, The', 47, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (478, 'Puerta de Hierro, el exilio de Perón', 36, 17);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (479, 'Rosemary''s Baby', 15, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (480, 'Iron Giant, The', 27, 2);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (481, 'Brother''s Kiss, A', 90, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (482, 'Karlsson Brothers (Bröderna Karlsson)', 100, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (483, 'How They Get There', 78, 12);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (484, 'Hammer, The', 99, 12);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (485, 'From the Orient with Fury', 19, 13);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (486, 'Age of Stupid, The', 53, 11);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (487, 'All Dogs Christmas Carol, An', 28, 15);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (488, 'Paimen, piika ja emäntä', 38, 3);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (489, 'Outpost: Black Sun', 53, 16);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (490, 'The Seven Males', 94, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (491, 'Hurt Locker, The', 98, 10);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (492, 'Pittsburgh', 59, 18);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (493, 'Grandmaster, The (Yi dai zong shi)', 31, 8);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (494, 'High and the Mighty, The', 54, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (495, 'Driving Lessons', 23, 14);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (496, 'Putin''s Kiss', 68, 20);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (497, 'Sarah''s Key (Elle s''appelait Sarah)', 81, 5);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (498, 'Angels with Dirty Faces', 18, 19);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (499, 'Commandments', 22, 1);
insert into peliculasCastillejo.ELEMENT (code_ele, name_ele, price, code_cat) values (500, 'Zero Charisma', 50, 18);



insert into peliculasCastillejo.PRODUCT (id_user, code_ele, number, price, dateBuy) values (10, 345, 3, 64.0388, '2022-07-8');

insert into peliculasCastillejo.PRODUCT (id_user, code_ele, number, price, dateBuy) values (4, 388, 4, 61.6396,  '2022-07-8');

insert into peliculasCastillejo.PRODUCT (id_user, code_ele, number, price, dateBuy) values (9, 47, 3, 23.5821,   '2022-07-8');
insert into peliculasCastillejo.PRODUCT (id_user, code_ele, number, price, dateBuy) values (10, 192, 5, 38.9408,  '2022-07-8');


insert into peliculasCastillejo.PRODUCT (id_user, code_ele, number, price, dateBuy) values (9, 430, 5, 27.3501,  '2022-07-8');


insert into peliculasCastillejo.PRODUCT (id_user, code_ele, number, price, dateBuy) values (4, 174, 3, 49.691,   '2022-07-8');

insert into peliculasCastillejo.PRODUCT (id_user, code_ele, number, price, dateBuy) values (10, 333, 4, 22.2505,  '2022-07-8');

CREATE USER 'castillejo'@'% IDENTIFIED BY 'jose';
GRANT ALL PRIVILIEGES ON peliculasCastillejo.* TO 'castillejo'@'%';





