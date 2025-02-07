--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    best_guess integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    frequent_games integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 266);
INSERT INTO public.games VALUES (2, 1, 674);
INSERT INTO public.games VALUES (3, 2, 438);
INSERT INTO public.games VALUES (4, 2, 222);
INSERT INTO public.games VALUES (5, 1, 826);
INSERT INTO public.games VALUES (6, 1, 463);
INSERT INTO public.games VALUES (7, 1, 526);
INSERT INTO public.games VALUES (8, 3, 687);
INSERT INTO public.games VALUES (9, 3, 31);
INSERT INTO public.games VALUES (10, 4, 182);
INSERT INTO public.games VALUES (11, 4, 687);
INSERT INTO public.games VALUES (12, 3, 646);
INSERT INTO public.games VALUES (13, 3, 496);
INSERT INTO public.games VALUES (14, 3, 258);
INSERT INTO public.games VALUES (15, 5, 739);
INSERT INTO public.games VALUES (16, 5, 957);
INSERT INTO public.games VALUES (17, 6, 248);
INSERT INTO public.games VALUES (18, 6, 205);
INSERT INTO public.games VALUES (19, 5, 964);
INSERT INTO public.games VALUES (20, 5, 683);
INSERT INTO public.games VALUES (21, 5, 813);
INSERT INTO public.games VALUES (22, 7, 177);
INSERT INTO public.games VALUES (23, 7, 120);
INSERT INTO public.games VALUES (24, 8, 792);
INSERT INTO public.games VALUES (25, 8, 858);
INSERT INTO public.games VALUES (26, 7, 704);
INSERT INTO public.games VALUES (27, 7, 987);
INSERT INTO public.games VALUES (28, 7, 334);
INSERT INTO public.games VALUES (29, 9, 187);
INSERT INTO public.games VALUES (30, 9, 426);
INSERT INTO public.games VALUES (31, 10, 82);
INSERT INTO public.games VALUES (32, 10, 741);
INSERT INTO public.games VALUES (33, 9, 91);
INSERT INTO public.games VALUES (34, 9, 771);
INSERT INTO public.games VALUES (35, 9, 913);
INSERT INTO public.games VALUES (36, 11, 997);
INSERT INTO public.games VALUES (37, 11, 213);
INSERT INTO public.games VALUES (38, 12, 228);
INSERT INTO public.games VALUES (39, 12, 465);
INSERT INTO public.games VALUES (40, 11, 938);
INSERT INTO public.games VALUES (41, 11, 812);
INSERT INTO public.games VALUES (42, 11, 286);
INSERT INTO public.games VALUES (43, 13, 717);
INSERT INTO public.games VALUES (44, 13, 640);
INSERT INTO public.games VALUES (45, 14, 872);
INSERT INTO public.games VALUES (46, 14, 252);
INSERT INTO public.games VALUES (47, 13, 662);
INSERT INTO public.games VALUES (48, 13, 206);
INSERT INTO public.games VALUES (49, 13, 245);
INSERT INTO public.games VALUES (50, 15, 679);
INSERT INTO public.games VALUES (51, 15, 795);
INSERT INTO public.games VALUES (52, 16, 41);
INSERT INTO public.games VALUES (53, 16, 280);
INSERT INTO public.games VALUES (54, 15, 684);
INSERT INTO public.games VALUES (55, 15, 189);
INSERT INTO public.games VALUES (56, 15, 109);
INSERT INTO public.games VALUES (57, 17, 13);
INSERT INTO public.games VALUES (58, 17, 935);
INSERT INTO public.games VALUES (59, 18, 152);
INSERT INTO public.games VALUES (60, 18, 59);
INSERT INTO public.games VALUES (61, 17, 748);
INSERT INTO public.games VALUES (62, 17, 789);
INSERT INTO public.games VALUES (63, 17, 981);
INSERT INTO public.games VALUES (64, 19, 879);
INSERT INTO public.games VALUES (65, 19, 376);
INSERT INTO public.games VALUES (66, 20, 774);
INSERT INTO public.games VALUES (67, 20, 292);
INSERT INTO public.games VALUES (68, 19, 192);
INSERT INTO public.games VALUES (69, 19, 922);
INSERT INTO public.games VALUES (70, 19, 817);
INSERT INTO public.games VALUES (71, 21, 661);
INSERT INTO public.games VALUES (72, 21, 564);
INSERT INTO public.games VALUES (73, 22, 563);
INSERT INTO public.games VALUES (74, 22, 821);
INSERT INTO public.games VALUES (75, 21, 523);
INSERT INTO public.games VALUES (76, 21, 156);
INSERT INTO public.games VALUES (77, 21, 644);
INSERT INTO public.games VALUES (78, 23, 111);
INSERT INTO public.games VALUES (79, 23, 532);
INSERT INTO public.games VALUES (80, 24, 936);
INSERT INTO public.games VALUES (81, 24, 569);
INSERT INTO public.games VALUES (82, 23, 684);
INSERT INTO public.games VALUES (83, 23, 46);
INSERT INTO public.games VALUES (84, 23, 941);
INSERT INTO public.games VALUES (85, 25, 324);
INSERT INTO public.games VALUES (86, 25, 171);
INSERT INTO public.games VALUES (87, 26, 63);
INSERT INTO public.games VALUES (88, 26, 395);
INSERT INTO public.games VALUES (89, 25, 648);
INSERT INTO public.games VALUES (90, 25, 699);
INSERT INTO public.games VALUES (91, 25, 27);
INSERT INTO public.games VALUES (92, 27, 17);
INSERT INTO public.games VALUES (93, 28, 839);
INSERT INTO public.games VALUES (94, 28, 122);
INSERT INTO public.games VALUES (95, 29, 175);
INSERT INTO public.games VALUES (96, 29, 711);
INSERT INTO public.games VALUES (97, 28, 721);
INSERT INTO public.games VALUES (98, 28, 263);
INSERT INTO public.games VALUES (99, 28, 556);
INSERT INTO public.games VALUES (100, 30, 48);
INSERT INTO public.games VALUES (101, 30, 884);
INSERT INTO public.games VALUES (102, 31, 87);
INSERT INTO public.games VALUES (103, 31, 958);
INSERT INTO public.games VALUES (104, 30, 504);
INSERT INTO public.games VALUES (105, 30, 990);
INSERT INTO public.games VALUES (106, 30, 830);
INSERT INTO public.games VALUES (107, 32, 161);
INSERT INTO public.games VALUES (108, 32, 412);
INSERT INTO public.games VALUES (109, 33, 161);
INSERT INTO public.games VALUES (110, 33, 443);
INSERT INTO public.games VALUES (111, 32, 654);
INSERT INTO public.games VALUES (112, 32, 743);
INSERT INTO public.games VALUES (113, 32, 325);
INSERT INTO public.games VALUES (114, 34, 628);
INSERT INTO public.games VALUES (115, 34, 526);
INSERT INTO public.games VALUES (116, 35, 347);
INSERT INTO public.games VALUES (117, 35, 520);
INSERT INTO public.games VALUES (118, 34, 187);
INSERT INTO public.games VALUES (119, 34, 452);
INSERT INTO public.games VALUES (120, 34, 619);
INSERT INTO public.games VALUES (121, 36, 15);
INSERT INTO public.games VALUES (122, 36, 244);
INSERT INTO public.games VALUES (123, 37, 627);
INSERT INTO public.games VALUES (124, 37, 614);
INSERT INTO public.games VALUES (125, 36, 734);
INSERT INTO public.games VALUES (126, 36, 214);
INSERT INTO public.games VALUES (127, 36, 868);
INSERT INTO public.games VALUES (128, 27, 11);
INSERT INTO public.games VALUES (129, 38, 642);
INSERT INTO public.games VALUES (130, 38, 115);
INSERT INTO public.games VALUES (131, 39, 985);
INSERT INTO public.games VALUES (132, 39, 538);
INSERT INTO public.games VALUES (133, 38, 391);
INSERT INTO public.games VALUES (134, 38, 919);
INSERT INTO public.games VALUES (135, 38, 907);
INSERT INTO public.games VALUES (136, 40, 573);
INSERT INTO public.games VALUES (137, 40, 751);
INSERT INTO public.games VALUES (138, 41, 829);
INSERT INTO public.games VALUES (139, 41, 233);
INSERT INTO public.games VALUES (140, 40, 920);
INSERT INTO public.games VALUES (141, 40, 212);
INSERT INTO public.games VALUES (142, 40, 988);
INSERT INTO public.games VALUES (143, 42, 694);
INSERT INTO public.games VALUES (144, 42, 913);
INSERT INTO public.games VALUES (145, 43, 408);
INSERT INTO public.games VALUES (146, 43, 598);
INSERT INTO public.games VALUES (147, 42, 610);
INSERT INTO public.games VALUES (148, 42, 743);
INSERT INTO public.games VALUES (149, 42, 838);
INSERT INTO public.games VALUES (150, 44, 99);
INSERT INTO public.games VALUES (151, 44, 732);
INSERT INTO public.games VALUES (152, 45, 74);
INSERT INTO public.games VALUES (153, 45, 481);
INSERT INTO public.games VALUES (154, 44, 344);
INSERT INTO public.games VALUES (155, 44, 690);
INSERT INTO public.games VALUES (156, 44, 494);
INSERT INTO public.games VALUES (157, 46, 708);
INSERT INTO public.games VALUES (158, 46, 77);
INSERT INTO public.games VALUES (159, 47, 733);
INSERT INTO public.games VALUES (160, 47, 675);
INSERT INTO public.games VALUES (161, 46, 312);
INSERT INTO public.games VALUES (162, 46, 899);
INSERT INTO public.games VALUES (163, 46, 913);
INSERT INTO public.games VALUES (164, 48, 290);
INSERT INTO public.games VALUES (165, 48, 619);
INSERT INTO public.games VALUES (166, 49, 484);
INSERT INTO public.games VALUES (167, 49, 834);
INSERT INTO public.games VALUES (168, 48, 616);
INSERT INTO public.games VALUES (169, 48, 757);
INSERT INTO public.games VALUES (170, 48, 343);
INSERT INTO public.games VALUES (171, 50, 679);
INSERT INTO public.games VALUES (172, 50, 739);
INSERT INTO public.games VALUES (173, 51, 478);
INSERT INTO public.games VALUES (174, 51, 486);
INSERT INTO public.games VALUES (175, 50, 380);
INSERT INTO public.games VALUES (176, 50, 713);
INSERT INTO public.games VALUES (177, 50, 71);
INSERT INTO public.games VALUES (178, 52, 366);
INSERT INTO public.games VALUES (179, 52, 979);
INSERT INTO public.games VALUES (180, 53, 701);
INSERT INTO public.games VALUES (181, 53, 488);
INSERT INTO public.games VALUES (182, 52, 236);
INSERT INTO public.games VALUES (183, 52, 245);
INSERT INTO public.games VALUES (184, 52, 971);
INSERT INTO public.games VALUES (185, 54, 571);
INSERT INTO public.games VALUES (186, 54, 817);
INSERT INTO public.games VALUES (187, 55, 294);
INSERT INTO public.games VALUES (188, 55, 6);
INSERT INTO public.games VALUES (189, 54, 503);
INSERT INTO public.games VALUES (190, 54, 135);
INSERT INTO public.games VALUES (191, 54, 934);
INSERT INTO public.games VALUES (192, 56, 851);
INSERT INTO public.games VALUES (193, 56, 666);
INSERT INTO public.games VALUES (194, 57, 355);
INSERT INTO public.games VALUES (195, 57, 644);
INSERT INTO public.games VALUES (196, 56, 876);
INSERT INTO public.games VALUES (197, 56, 34);
INSERT INTO public.games VALUES (198, 56, 911);
INSERT INTO public.games VALUES (199, 58, 446);
INSERT INTO public.games VALUES (200, 58, 791);
INSERT INTO public.games VALUES (201, 59, 278);
INSERT INTO public.games VALUES (202, 59, 574);
INSERT INTO public.games VALUES (203, 58, 454);
INSERT INTO public.games VALUES (204, 58, 904);
INSERT INTO public.games VALUES (205, 58, 754);
INSERT INTO public.games VALUES (206, 60, 644);
INSERT INTO public.games VALUES (207, 60, 710);
INSERT INTO public.games VALUES (208, 61, 312);
INSERT INTO public.games VALUES (209, 61, 341);
INSERT INTO public.games VALUES (210, 60, 376);
INSERT INTO public.games VALUES (211, 60, 379);
INSERT INTO public.games VALUES (212, 60, 895);
INSERT INTO public.games VALUES (213, 27, 7);
INSERT INTO public.games VALUES (214, 62, 261);
INSERT INTO public.games VALUES (215, 62, 123);
INSERT INTO public.games VALUES (216, 63, 733);
INSERT INTO public.games VALUES (217, 63, 164);
INSERT INTO public.games VALUES (218, 62, 977);
INSERT INTO public.games VALUES (219, 62, 11);
INSERT INTO public.games VALUES (220, 62, 817);
INSERT INTO public.games VALUES (221, 27, 12);
INSERT INTO public.games VALUES (222, 64, 514);
INSERT INTO public.games VALUES (223, 64, 62);
INSERT INTO public.games VALUES (224, 65, 14);
INSERT INTO public.games VALUES (225, 65, 179);
INSERT INTO public.games VALUES (226, 64, 886);
INSERT INTO public.games VALUES (227, 64, 887);
INSERT INTO public.games VALUES (228, 64, 18);
INSERT INTO public.games VALUES (229, 66, 740);
INSERT INTO public.games VALUES (230, 66, 725);
INSERT INTO public.games VALUES (231, 67, 694);
INSERT INTO public.games VALUES (232, 67, 344);
INSERT INTO public.games VALUES (233, 66, 297);
INSERT INTO public.games VALUES (234, 66, 591);
INSERT INTO public.games VALUES (235, 66, 586);
INSERT INTO public.games VALUES (236, 68, 744);
INSERT INTO public.games VALUES (237, 68, 738);
INSERT INTO public.games VALUES (238, 69, 584);
INSERT INTO public.games VALUES (239, 69, 415);
INSERT INTO public.games VALUES (240, 68, 470);
INSERT INTO public.games VALUES (241, 68, 907);
INSERT INTO public.games VALUES (242, 68, 865);
INSERT INTO public.games VALUES (243, 70, 175);
INSERT INTO public.games VALUES (244, 70, 982);
INSERT INTO public.games VALUES (245, 71, 769);
INSERT INTO public.games VALUES (246, 71, 639);
INSERT INTO public.games VALUES (247, 70, 15);
INSERT INTO public.games VALUES (248, 70, 383);
INSERT INTO public.games VALUES (249, 70, 722);
INSERT INTO public.games VALUES (250, 72, 408);
INSERT INTO public.games VALUES (251, 72, 61);
INSERT INTO public.games VALUES (252, 73, 366);
INSERT INTO public.games VALUES (253, 73, 987);
INSERT INTO public.games VALUES (254, 72, 802);
INSERT INTO public.games VALUES (255, 72, 567);
INSERT INTO public.games VALUES (256, 72, 729);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1738940643124', 2);
INSERT INTO public.users VALUES (1, 'user_1738940643125', 5);
INSERT INTO public.users VALUES (26, 'user_1738941387818', 2);
INSERT INTO public.users VALUES (4, 'user_1738940685246', 2);
INSERT INTO public.users VALUES (68, 'user_1738942740804', 5);
INSERT INTO public.users VALUES (3, 'user_1738940685247', 5);
INSERT INTO public.users VALUES (25, 'user_1738941387819', 5);
INSERT INTO public.users VALUES (6, 'user_1738940959535', 2);
INSERT INTO public.users VALUES (5, 'user_1738940959536', 5);
INSERT INTO public.users VALUES (51, 'user_1738942230628', 2);
INSERT INTO public.users VALUES (8, 'user_1738940989636', 2);
INSERT INTO public.users VALUES (29, 'user_1738941550385', 2);
INSERT INTO public.users VALUES (7, 'user_1738940989637', 5);
INSERT INTO public.users VALUES (10, 'user_1738941020876', 2);
INSERT INTO public.users VALUES (28, 'user_1738941550386', 5);
INSERT INTO public.users VALUES (9, 'user_1738941020877', 5);
INSERT INTO public.users VALUES (12, 'user_1738941041776', 2);
INSERT INTO public.users VALUES (50, 'user_1738942230629', 5);
INSERT INTO public.users VALUES (11, 'user_1738941041777', 5);
INSERT INTO public.users VALUES (31, 'user_1738941600163', 2);
INSERT INTO public.users VALUES (14, 'user_1738941053503', 2);
INSERT INTO public.users VALUES (13, 'user_1738941053504', 5);
INSERT INTO public.users VALUES (30, 'user_1738941600164', 5);
INSERT INTO public.users VALUES (16, 'user_1738941076884', 2);
INSERT INTO public.users VALUES (15, 'user_1738941076885', 5);
INSERT INTO public.users VALUES (53, 'user_1738942243599', 2);
INSERT INTO public.users VALUES (18, 'user_1738941119812', 2);
INSERT INTO public.users VALUES (71, 'user_1738942914567', 2);
INSERT INTO public.users VALUES (17, 'user_1738941119813', 5);
INSERT INTO public.users VALUES (33, 'user_1738941832394', 2);
INSERT INTO public.users VALUES (20, 'user_1738941145547', 2);
INSERT INTO public.users VALUES (52, 'user_1738942243600', 5);
INSERT INTO public.users VALUES (19, 'user_1738941145548', 5);
INSERT INTO public.users VALUES (32, 'user_1738941832395', 5);
INSERT INTO public.users VALUES (22, 'user_1738941213380', 2);
INSERT INTO public.users VALUES (21, 'user_1738941213381', 5);
INSERT INTO public.users VALUES (24, 'user_1738941217857', 2);
INSERT INTO public.users VALUES (35, 'user_1738941954328', 2);
INSERT INTO public.users VALUES (23, 'user_1738941217858', 5);
INSERT INTO public.users VALUES (34, 'user_1738941954329', 5);
INSERT INTO public.users VALUES (55, 'user_1738942263280', 2);
INSERT INTO public.users VALUES (37, 'user_1738941981545', 2);
INSERT INTO public.users VALUES (70, 'user_1738942914568', 5);
INSERT INTO public.users VALUES (36, 'user_1738941981546', 5);
INSERT INTO public.users VALUES (54, 'user_1738942263281', 5);
INSERT INTO public.users VALUES (39, 'user_1738942049884', 2);
INSERT INTO public.users VALUES (38, 'user_1738942049885', 5);
INSERT INTO public.users VALUES (41, 'user_1738942061586', 2);
INSERT INTO public.users VALUES (57, 'user_1738942328906', 2);
INSERT INTO public.users VALUES (73, 'user_1738942942733', 2);
INSERT INTO public.users VALUES (40, 'user_1738942061587', 5);
INSERT INTO public.users VALUES (43, 'user_1738942065135', 2);
INSERT INTO public.users VALUES (56, 'user_1738942328907', 5);
INSERT INTO public.users VALUES (42, 'user_1738942065136', 5);
INSERT INTO public.users VALUES (45, 'user_1738942098885', 2);
INSERT INTO public.users VALUES (59, 'user_1738942511389', 2);
INSERT INTO public.users VALUES (44, 'user_1738942098886', 5);
INSERT INTO public.users VALUES (72, 'user_1738942942734', 5);
INSERT INTO public.users VALUES (47, 'user_1738942114128', 2);
INSERT INTO public.users VALUES (58, 'user_1738942511390', 5);
INSERT INTO public.users VALUES (46, 'user_1738942114129', 5);
INSERT INTO public.users VALUES (49, 'user_1738942138172', 2);
INSERT INTO public.users VALUES (48, 'user_1738942138173', 5);
INSERT INTO public.users VALUES (61, 'user_1738942534841', 2);
INSERT INTO public.users VALUES (60, 'user_1738942534842', 5);
INSERT INTO public.users VALUES (63, 'user_1738942648230', 2);
INSERT INTO public.users VALUES (62, 'user_1738942648231', 5);
INSERT INTO public.users VALUES (27, 'Jc', 4);
INSERT INTO public.users VALUES (65, 'user_1738942696338', 2);
INSERT INTO public.users VALUES (64, 'user_1738942696339', 5);
INSERT INTO public.users VALUES (67, 'user_1738942717414', 2);
INSERT INTO public.users VALUES (66, 'user_1738942717415', 5);
INSERT INTO public.users VALUES (69, 'user_1738942740803', 2);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 256, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 73, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

