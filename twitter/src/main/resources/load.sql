--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5 (Debian 10.5-2.pgdg90+1)
-- Dumped by pg_dump version 12.1

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

--
-- Data for Name: twitteruser; Type: TABLE DATA; Schema: public; Owner: quarkus_test
--

INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (1, 'Yishai Galatzer', 'yigalatz', 'Redmond, WA', 'https://pbs.twimg.com/profile_images/1192842247387205632/FoyG5SNz_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (2, 'kcpeppe', 'kcpeppe', '', 'https://pbs.twimg.com/profile_images/2753751735/51bdcd9ecf13302a39c129535a367279_mini.png');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (3, 'Laurie', 'laurieontech', '', 'https://pbs.twimg.com/profile_images/1183122825747554305/fo5tKx7C_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (4, 'Daniel Hinojosa', 'dhinojosa', 'Albuquerque, NM', 'https://pbs.twimg.com/profile_images/1214688145125494784/nNGJ6GHt_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (5, 'Hadi Hariri', 'hhariri', '', 'https://pbs.twimg.com/profile_images/983417164131635200/6ToRcNzM_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (6, 'Monica Beckwith', 'Mon_beck', 'Georgetown, TX', 'https://pbs.twimg.com/profile_images/1190253863594532865/ttjcVT-8_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (7, 'Josh Cummings', 'jzheaux', 'Utah, USA', 'https://pbs.twimg.com/profile_images/966355190625419265/GdWP0Irh_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (8, 'Randall Degges', 'rdegges', 'California, USA', 'https://pbs.twimg.com/profile_images/595075431910412288/WwMo7sDj_mini.png');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (9, 'Christine Flood', 'chf_the_grouch', '', 'https://abs.twimg.com/sticky/default_profile_images/default_profile_mini.png');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (10, 'Raju Gandhi', 'looselytyped', 'Columbus, OH', 'https://pbs.twimg.com/profile_images/831556899350933504/HaC3e79U_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (11, 'Bob Paulin', 'bobpaulin', 'Chicagoland', 'https://pbs.twimg.com/profile_images/735264798707875841/Zg5frCTW_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (12, 'Bruno Borges', 'brunoborges', 'Vancouver, British Columbia', 'https://pbs.twimg.com/profile_images/1151543517505658880/FicKfgDO_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (13, 'Maarten Mulders', 'mthmulders', 'Nieuwegein, The Netherlands', 'https://pbs.twimg.com/profile_images/1149771110214459393/2jHP5qMl_mini.png');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (14, 'Craig Walls', 'habuma', 'Castle Rock, CO', 'https://pbs.twimg.com/profile_images/1205746571/me2_300_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (15, 'Rajan Gupta', 'rajangupta90', '', 'https://abs.twimg.com/sticky/default_profile_images/default_profile_mini.png');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (16, 'Glenn Renfro', 'cppwfs', '', 'https://pbs.twimg.com/profile_images/2788872921/43bacb7d22979716dd0cc92ba8fe5710_mini.png');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (17, 'Roberto Cortez', 'radcortez', 'Coimbra', 'https://pbs.twimg.com/profile_images/2699653917/2ff28994483f71d4487e76a0e30ebbbd_mini.jpeg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (18, 'Ray Tsang', 'saturnism', 'New York, NY', 'https://pbs.twimg.com/profile_images/520392325818621952/EpPGuHIY_mini.jpeg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (19, 'Raymond Camden 🥑', 'raymondcamden', 'Lafayette, LA', 'https://pbs.twimg.com/profile_images/975000417468895232/DE-3AJbX_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (20, 'Oleg Šelajev', 'shelajev', 'Tartu, Estonia', 'https://pbs.twimg.com/profile_images/1064550974977654784/8-s-k0Sx_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (21, 'Marcus Hellberg 🏔🇦🇷', 'marcushellberg', 'California, USA', 'https://pbs.twimg.com/profile_images/910994653226373120/OajqpFXO_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (22, 'Bruno Baptista', 'brunobat_', 'Coimbra, Portugal', 'https://pbs.twimg.com/profile_images/1087497727477469185/ZoAEVlE2_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (23, 'Burr Sutter', 'burrsutter', 'Raleigh, NC', 'https://pbs.twimg.com/profile_images/788062038975193088/6l5-1oSG_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (24, 'Mike Hartington', 'mhartington', 'Rhode Island', 'https://pbs.twimg.com/profile_images/1084993841898446849/DJ8XtR6L_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (25, 'Adarsh Shah', 'shahadarsh', 'New York, NY', 'https://pbs.twimg.com/profile_images/378800000657694170/69d8567bb285c24d9ebea5c754640fe8_mini.jpeg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (26, 'Jonathan Vila', 'vilojona', 'Barcelona', 'https://pbs.twimg.com/profile_images/1129668607460413440/rBdl5bD8_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (27, 'Edson Yanaga', 'yanaga', 'Cary, NC', 'https://pbs.twimg.com/profile_images/931349213216169984/R48Yocuq_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (28, 'Jan Kleinert', 'jankleinert', 'Raleigh, NC', 'https://pbs.twimg.com/profile_images/1087055426267402240/BTeh6LLK_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (29, 'Rosemary Wang', 'joatmon08', '', 'https://pbs.twimg.com/profile_images/1144337961418469376/O9RX28Wv_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (30, 'David Blevins', 'dblevins', 'Santa Monica, CA', 'https://pbs.twimg.com/profile_images/860618035521912832/bS8OJGpX_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (31, 'Justin Lee', 'evanchooly', 'New York, USA', 'https://pbs.twimg.com/profile_images/687965772044357632/6QKmYlhK_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (32, 'Nate Schutta', 'ntschutta', 'Here and There', 'https://pbs.twimg.com/profile_images/1592010205/nts_pic_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (33, 'Dmitry Chuyko', 'dchuyko', '', 'https://pbs.twimg.com/profile_images/1089889803087302656/7Ut4ibsF_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (34, 'John Walicki', 'johnwalicki', 'New Jersey, USA', 'https://pbs.twimg.com/profile_images/1143374327154388992/0fIYmIJl_mini.png');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (35, 'Jeanne Boyarsky', 'jeanneboyarsky', 'New York City', 'https://pbs.twimg.com/profile_images/1092253282502873088/tD3_iBed_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (36, 'Scott Davis', 'scottdavis99', 'Broomfield, CO', 'https://pbs.twimg.com/profile_images/1987977360/scott_davis_2012_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (37, 'Joe Kutner', 'codefinger', 'Rocket City, USA', 'https://pbs.twimg.com/profile_images/938427588057350144/-hJaloLT_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (38, 'Joel Tosi', 'joeltosi', '', 'https://pbs.twimg.com/profile_images/627871640/photo_joel_tosi.jpg_2084533766_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (39, 'Simon Ritter', 'speakjava', 'London, UK', 'https://pbs.twimg.com/profile_images/1900896481/SimonRitter_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (40, 'Ko Turk', 'KoTurk77', '', 'https://pbs.twimg.com/profile_images/1184180832677912576/N7TCXFNw_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (41, 'Cesar Hernandez', 'CesarHgt', 'Guatemala', 'https://pbs.twimg.com/profile_images/696907861503246336/35nTbZvm_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (42, 'George Adams', 'gdams_', 'Winchester, England', 'https://pbs.twimg.com/profile_images/1059945215170146304/ORFQFEdq_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (43, 'Gene Gotimer', 'CoverosGene', 'Leesburg, Virginia', 'https://pbs.twimg.com/profile_images/933436046909591552/Fm-3Ailj_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (44, 'Spencer Krum', 'Nibalizer', 'Minneapolis, MN', 'https://pbs.twimg.com/profile_images/1019045321622446080/BB5MrzJA_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (45, 'Sharat', 'Sharat_Chander', 'Northern California', 'https://pbs.twimg.com/profile_images/1244192003/Sharat-Facebook_mini.png');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (46, 'Todd Sharp', 'recursivecodes', 'Blairsville, GA', 'https://pbs.twimg.com/profile_images/1187512927869456384/Ui6HzJ4F_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (47, 'Viktor Gamov @🗽🏡', 'gamussa', 'CCloud ☁️', 'https://pbs.twimg.com/profile_images/1054986068859195399/9AiFE8wI_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (48, 'Andrew Malek', 'malekontheweb', 'United States', 'https://pbs.twimg.com/profile_images/1062836100752924672/cImDtVBi_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (49, 'Roman Elizarov', 'relizarov', '', 'https://pbs.twimg.com/profile_images/872365632376983552/G4NXJ0DY_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (50, 'Natasha Carlyon', 'nscarlyon', 'Atlanta, GA', 'https://pbs.twimg.com/profile_images/774792967454416896/nuQBIYXb_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (51, 'Henri Tremblay', 'henri_tremblay', 'Montréal, Canada', 'https://pbs.twimg.com/profile_images/1212304572/profil_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (52, 'Venkat Subramaniam', 'venkat_s', 'Colorado', 'https://pbs.twimg.com/profile_images/950807350952181760/5pkYiJ8d_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (53, 'Stephen Chin', 'steveonjava', '37.521115,-122.296056', 'https://pbs.twimg.com/profile_images/1056625413919670272/ZEKTbAQ__mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (54, 'Gant Laborde', 'gantlaborde', 'New Orleans', 'https://pbs.twimg.com/profile_images/1196610501880487938/SSXE-9KJ_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (55, 'Nikhil Nanivadekar', 'nikhilnanivade', 'United States', 'https://pbs.twimg.com/profile_images/1059784206857846785/uaO2sqb7_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (56, 'Dalia Abo Sheasha', 'DaliaShea', '', 'https://pbs.twimg.com/profile_images/1104783329877020672/4Tiyj5vB_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (57, 'Hans Dockter', 'hans_d', 'San Francisco', 'https://pbs.twimg.com/profile_images/858717969848729600/8SVLYjhX_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (58, 'Roy Clarkson', 'royclarkson', 'Atlanta, GA, USA ', 'https://pbs.twimg.com/profile_images/1099487562945708032/3Wsm9Kux_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (59, 'Kait Parker', 'weatherkait', 'Atlanta, GA', 'https://pbs.twimg.com/profile_images/896570353656492036/fa4_XijX_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (60, 'Michael T Minella', 'michaelminella', 'Naperville, IL', 'https://pbs.twimg.com/profile_images/1047880496334753792/vPjhPYOH_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (61, 'Bryan Robinson', 'brob', 'Memphis, TN', 'https://pbs.twimg.com/profile_images/1154081274946101253/x5FP9gGj_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (62, 'Alex Borysov', 'aiborisov', 'Silicon Valley, CA, USA', 'https://pbs.twimg.com/profile_images/1087198945569169409/KU9268_K_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (63, 'Steve Poole', 'spoole167', '', 'https://pbs.twimg.com/profile_images/1584838643/StevePoole_mini.png');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (64, 'Enrique 🐘', 'chochosmx', 'Mexico City, Mexico', 'https://pbs.twimg.com/profile_images/862399562962612225/dBxlOtHU_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (65, 'Alberto C. Ríos', 'albertoimpl', 'Sevilla', 'https://pbs.twimg.com/profile_images/874740346198130689/QNUGsA4Z_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (66, 'David Laribee', 'laribee', 'ATL', 'https://pbs.twimg.com/profile_images/938646911728283648/0R71WU0V_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (67, 'Emily Jiang', 'emilyfhjiang', 'UK', 'https://pbs.twimg.com/profile_images/1109955371727290368/hZ_1dN1m_mini.png');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (68, 'leebrandt', 'leebrandt', 'Kansas City', 'https://pbs.twimg.com/profile_images/1159066505117609984/KlFUh_EF_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (69, 'Brian Vermeer', 'BrianVerm', 'Breda, The Netherlands', 'https://pbs.twimg.com/profile_images/1183419770210848769/ynz9Lti8_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (70, 'lǝɥɔxI 🆁🆄🅸🆉', 'ixchelruiz', 'Basel', 'https://pbs.twimg.com/profile_images/1099974954957918208/MtDS7BsW_mini.png');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (71, 'JJ Asghar', 'jjasghar', 'Austin, TX', 'https://pbs.twimg.com/profile_images/1167210123208593408/iDrEeJwm_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (72, 'Todd Ginsberg', 'toddginsberg', 'Dallas, TX', 'https://pbs.twimg.com/profile_images/1154217781551874049/_Q6Qr-hj_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (73, 'Alex Riviere', 'fimion', 'Atlanta, GA', 'https://pbs.twimg.com/profile_images/1222122622307241984/4rIV3vU6_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (74, 'Chris Corriere', 'cacorriere', 'Atlanta, Georgia', 'https://pbs.twimg.com/profile_images/378800000283729854/3ba9fbd434b680714e11ec7238fdd95d_mini.jpeg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (75, 'Josh Long (龙之春, जोश, Джош Лонг,  جوش لونق)', 'starbuxman', 'in Production 🍃☁️', 'https://pbs.twimg.com/profile_images/868596967139450880/ZdDK0WyW_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (76, 'Angie Jones', 'techgirl1908', 'San Francisco, CA', 'https://pbs.twimg.com/profile_images/1141742921240104961/ylpMiYrr_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (77, 'Ivar Grimstad', 'ivar_grimstad', 'Malmö', 'https://pbs.twimg.com/profile_images/780421708406779904/yMOQGyAU_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (78, 'Neal Ford', 'neal4d', 'iPhone: 41.893692,-87.624336', 'https://pbs.twimg.com/profile_images/1508270852/2011-08-22.light_eyes_over_pencil_cropped_for_twitter__mini.png');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (79, 'Alasdair', 'nottycode', 'Toronto, Canada, 3rd Rock', 'https://pbs.twimg.com/profile_images/2403133817/5zkod3dhqnwphk2gda9t_mini.jpeg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (80, 'James Ward', '_JamesWard', 'Crested Butte, CO, USA', 'https://pbs.twimg.com/profile_images/378800000606902520/0c9b5897d0f28e53f5666639551a7512_mini.jpeg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (81, 'Matthew Y Knowles', 'MatthewYKnowles', '', 'https://pbs.twimg.com/profile_images/784121063357767680/yfK3d0Oz_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (82, 'Micah Silverman', 'afitnerd', '40.828538,-73.414207', 'https://pbs.twimg.com/profile_images/1169746170740137984/R7RpX8Q7_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (83, 'Chris Thalinger', 'christhalinger', 'Haleiwa, HI', 'https://pbs.twimg.com/profile_images/1221795643359989760/1POyzo70_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (84, 'David Neal 🥓🥑', 'reverentgeek', 'Dalton, GA', 'https://pbs.twimg.com/profile_images/1218557833962303490/PkOZefVF_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (85, 'Spencer Gibb', 'spencerbgibb', 'Michigan', 'https://pbs.twimg.com/profile_images/625504679745691649/am7GVbNx_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (86, 'Gerald Venzl 🚀', 'GeraldVenzl', 'San Francisco, CA', 'https://pbs.twimg.com/profile_images/1057877042438397952/DVNj9EiF_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (87, 'Mark West @ #Jfokus 2020', 'markawest', 'Oslo, Norway', 'https://pbs.twimg.com/profile_images/1140913913204285442/i1lsPDQC_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (88, 'Ken Kousen', 'kenkousen', 'Marlborough, CT', 'https://pbs.twimg.com/profile_images/1182331772635418626/t_LYszi2_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (89, 'Fabio Andres Turizo', 'fabturizo', 'Barranquilla, Colombia', 'https://pbs.twimg.com/profile_images/812095304615006209/DQ_gcdFY_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (90, 'Erin Schnabel', 'ebullientworks', '', 'https://pbs.twimg.com/profile_images/605729514266730498/MTyxv4i2_mini.jpg');
INSERT INTO public.twitteruser (id, fullname, handle, location, miniprofileimageurl) VALUES (91, 'Freddy Guime', 'fguime', 'United States', 'https://pbs.twimg.com/profile_images/2704139144/c859ec9be32acb8b4b1e7724b0dce608_mini.png');


--
-- PostgreSQL database dump complete
--

