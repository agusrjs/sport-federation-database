INSERT INTO tbl_entity (name, short_name, foundation, entity_number)
VALUES
  ('Club Deportivo Aurora', 'D. Aurora', '1930-12-15', 125),
  ('Asociación Deportiva Renacer', 'A. Renacer', '1925-06-20', 456),
  ('Fundación Estrella Roja', 'Estrella Roja', '1942-03-10', 53),
  ('Club Atlético Victoria', 'CA Victoria', '1918-09-02', 1004),
  ('Fundación Universo Deportivo', 'F. Universo', '1935-11-18', 5456),
  ('Club Atlético Progreso', 'CA Progreso', '1928-07-07', 310),
  ('Asociación Deportiva Quasar', 'AA. Quasar', '1948-02-14', 708),
  ('Club Atlético Rayo Celeste', 'Rayo Celeste', '1933-04-25', 203),
  ('Fundación Galaxia Deportiva', 'F. Galaxia', '1955-10-30', 68),
  ('Club Atlético Fulgor', 'CA Fulgor', '1937-12-09', 14);


INSERT INTO tbl_membership (id_entity, start, end, membership_status)
VALUES
  (1, '2020-01-01', NULL, 'Active'),
  (2, '2015-02-15', '2018-12-31', 'Active'),
  (3, '2010-03-20', NULL, 'Active'),
  (4, '2008-04-10', '2012-11-30', 'Active'),
  (5, '2001-05-05', NULL, 'Adherent'),
  (6, '2006-06-12', NULL, 'Active'),
  (7, '2007-07-18', '2013-10-31', 'Adherent'),
  (8, '2010-08-25', NULL, 'Adherent'),
  (2, '2020-01-10', NULL, 'Active'),
  (9, '2016-09-30', NULL, 'Active'),
  (7, '2015-12-07', NULL, 'Adherent'),
  (4, '2018-04-10', NULL, 'Active'),
  (10, '1999-10-15', NULL, 'Active');


INSERT INTO tbl_club (id_entity, name, short_name, acronym)
VALUES
  (2, 'Renacer', 'Renacer', 'REN'),
  (8, 'Club Atlético Rayo Celeste', 'Rayo Celeste', 'RCE'),
  (3, 'Estrella Roja', 'Estrella', 'EST'),
  (10, 'Club Atlético Fulgor', 'CA Fulgor', 'FUL'),
  (4, 'Club Atlético Victoria', 'Victoria', 'VIC'),
  (5, 'Fundación Universo Deportivo', 'F. Universo', 'FUD'),
  (6, 'Club Atlético Progreso', 'Progreso', 'PRO'),
  (1, 'Club Deportivo Aurora', 'D. Aurora', 'CDA'),
  (6, 'Club Atlético Progreso B', 'Progreso B', 'PRB'),
  (7, 'Asociación Deportiva Quasar', 'Quasar', 'QUA'),
  (2, 'Renacer B', 'Renacer B', 'REB'),
  (9, 'Fundación Galaxia Deportiva', 'F. Galaxia', 'FGD'),
  (3, 'Estrella Roja U21', 'Estrella U21', 'ESY');


INSERT INTO tbl_individual (name, last_name, dni, birth, nationality, gender, visual_classification, role)
VALUES
  ('Gabriel', 'García', 11223344, '1993-04-25', 'Argentina', 'M', 'B2', 'Player'),
  ('Luisa', 'Ramírez', 55443322, '1991-07-12', 'Argentina', 'F', 'B3', 'Player'),
  ('Fernando', 'Fuentes', 66778899, '1987-12-05', 'Argentina', 'M', 'B1', 'Player'),
  ('Camila', 'Sánchez', 99887766, '1996-01-28', 'Argentina', 'F', 'SD', 'Guide'),
  ('Diego', 'Moreno', 11220033, '1990-09-03', 'Argentina', 'M', 'SD', 'Coach'),
  ('Valentina', 'Mendoza', 44001122, '1988-11-15', 'Argentina', 'F', 'B2', 'Player'),
  ('Alejandro', 'Romero', 77009988, '1994-03-20', 'Argentina', 'M', 'B1', 'Player'),
  ('Julieta', 'Gutierrez', 33224455, '1995-06-08', 'Argentina', 'F', 'B3', 'Player'),
  ('Hernán', 'Peralta', 66775544, '1992-02-14', 'Argentina', 'M', 'SD', 'Goalkeeper'),
  ('Luciana', 'Gomez', 99001122, '1989-10-10', 'Argentina', 'F', 'SD', 'Guide'),
  ('Maximiliano', 'Díaz', 22334455, '1997-03-18', 'Argentina', 'M', 'B2', 'Player'),
  ('Gimena', 'Alvarez', 99881122, '1986-05-22', 'Argentina', 'F', 'B1', 'Player'),
  ('Carlos', 'López', 66778811, '1993-09-30', 'Argentina', 'M', 'B3', 'Player'),
  ('Lucia', 'Rodriguez', 33221100, '1990-12-12', 'Argentina', 'F', 'SD', 'Guide'),
  ('Ricardo', 'Martinez', 11220011, '1988-06-05', 'Argentina', 'M', 'SD', 'Coach'),
  ('María', 'Suarez', 55446677, '1995-01-09', 'Argentina', 'F', 'B2', 'Player'),
  ('Pablo', 'Gimenez', 99001100, '1992-08-07', 'Argentina', 'M', 'B1', 'Player'),
  ('Mariana', 'Fernández', 44556677, '1987-11-21', 'Argentina', 'F', 'B3', 'Player'),
  ('Jorge', 'Ramírez', 66773322, '1991-02-14', 'Argentina', 'M', 'SD', 'Goalkeeper'),
  ('Ana', 'Torres', 33221188, '1994-10-18', 'Argentina', 'F', 'SD', 'Guide'),
  ('Matías', 'Ortega', 11223311, '1989-12-30', 'Argentina', 'M', 'B2', 'Player'),
  ('Isabella', 'Rojas', 55448800, '1996-05-17', 'Argentina', 'F', 'B1', 'Player'),
  ('Roberto', 'Alonso', 66772299, '1988-09-25', 'Argentina', 'M', 'B3', 'Player'),
  ('Laura', 'González', 99886633, '1993-02-28', 'Argentina', 'F', 'SD', 'Guide'),
  ('Juan', 'López', 22334411, '1990-07-14', 'Argentina', 'M', 'SD', 'Coach'),
  ('Carolina', 'Díaz', 44553300, '1997-11-10', 'Argentina', 'F', 'B2', 'Player'),
  ('Eduardo', 'Fernández', 99002211, '1986-04-02', 'Argentina', 'M', 'B1', 'Player'),
  ('Renata', 'Gómez', 66779988, '1995-09-22', 'Argentina', 'F', 'B3', 'Player'),
  ('Lautaro', 'Suarez', 11226677, '1992-12-15', 'Argentina', 'M', 'SD', 'Goalkeeper'),
  ('Celeste', 'Martinez', 55441199, '1989-01-28', 'Argentina', 'F', 'SD', 'Guide'),
  ('Santiago', 'Rojas', 99883322, '1996-07-20', 'Argentina', 'M', 'B2', 'Player'),
  ('Valeria', 'Alvarez', 22332211, '1991-10-05', 'Argentina', 'F', 'B1', 'Player'),
  ('Facundo', 'Torres', 66771100, '1987-03-18', 'Argentina', 'M', 'B3', 'Player'),
  ('Sol', 'Ortega', 44556622, '1994-06-30', 'Argentina', 'F', 'SD', 'Guide'),
  ('Ignacio', 'Gimenez', 11229988, '1988-02-09', 'Argentina', 'M', 'SD', 'Coach'),
  ('Antonella', 'Fernández', 99004411, '1995-05-24', 'Argentina', 'F', 'B2', 'Player'),
  ('Federico', 'Alonso', 55442200, '1992-09-28', 'Argentina', 'M', 'B1', 'Player'),
  ('Abril', 'González', 66774499, '1989-12-11', 'Argentina', 'F', 'B3', 'Player'),
  ('Ezequiel', 'López', 99885533, '1996-03-25', 'Argentina', 'M', 'SD', 'Goalkeeper'),
  ('Catalina', 'Martinez', 11227766, '1991-06-08', 'Argentina', 'F', 'SD', 'Guide'),
  ('Lucas', 'Rojas', 22334400, '1987-09-20', 'Argentina', 'M', 'B2', 'Player'),
  ('Renata', 'Alvarez', 44551122, '1994-01-13', 'Argentina', 'F', 'B1', 'Player'),
  ('Mariano', 'Torres', 66773300, '1988-04-26', 'Argentina', 'M', 'B3', 'Player'),
  ('Clara', 'Ortega', 99008811, '1995-08-18', 'Argentina', 'F', 'SD', 'Guide');


INSERT INTO tbl_league (name, short_name, year)
VALUES
  ('National Blind Football League', 'NBF League', 2021),
  ('National Blind Football League', 'NBF League', 2022),
  ('National Blind Football League', 'NBF League', 2023);

INSERT INTO tbl_team (id_league, id_club, position)
VALUES
  (1, 1,3), 
  (1, 2, 2), 
  (1, 3, 1), 
  (1, 4, 10), 
  (1, 5, 9),
  (1, 6, 6), 
  (1, 7, 5), 
  (1, 8, 8), 
  (1, 9, 7), 
  (1, 10, 4),
  (2, 1, 10), 
  (2, 2, 8), 
  (2, 3, 3), 
  (2, 4, 5), 
  (2, 5, 6),
  (2, 6, 4), 
  (2, 7, 7), 
  (2, 8, 2), 
  (2, 9, 1), 
  (2, 10, 9),
  (3, 1, NULL), 
  (3, 2, NULL), 
  (3, 3, NULL), 
  (3, 4, NULL), 
  (3, 5, NULL),
  (3, 6, NULL), 
  (3, 7, NULL), 
  (3, 8, NULL), 
  (3, 9, NULL), 
  (3, 10, NULL);


INSERT INTO tbl_squad (id_team, id_individual, national_team)
VALUES
  (1, 1, FALSE), (1, 2, FALSE), (1, 3, FALSE), (1, 4, FALSE), (1, 5, FALSE),
  (1, 6, FALSE), (1, 7, TRUE), (1, 8, FALSE), (1, 9, TRUE), (1, 10, FALSE),
  (2, 11, FALSE), (2, 12, FALSE), (2, 13, TRUE), (2, 14, FALSE), (2, 15, FALSE),
  (2, 16, FALSE), (2, 17, FALSE), (2, 18, FALSE), (2, 19, FALSE), (2, 20, FALSE),
  (3, 21, FALSE), (3, 22, FALSE), (3, 23, FALSE), (3, 24, FALSE), (3, 25, FALSE),
  (3, 26, TRUE), (3, 27, FALSE), (3, 28, FALSE), (3, 29, TRUE), (3, 30, FALSE),
  (8, 31, FALSE), (8, 32, FALSE), (8, 33, FALSE), (8, 34, FALSE), (8, 35, FALSE),
  (8, 36, FALSE), (8, 37, TRUE), (8, 38, FALSE), (8, 39, FALSE), (8, 40, TRUE);


INSERT INTO tbl_stage (id_league, name)
VALUES
  (1, 'North Regional'),
  (1, 'South Regional'),
  (1, 'East Regional'),
  (1, 'West Regional'),
  (1, 'Interzonal A'),
  (1, 'Interzonal B'),
  (1, 'Interzonal C'),
  (1, 'Interzonal D'),
  (1, 'Semifinal'),
  (1, 'Bronze'),
  (1, 'Final'),
  (2, 'North Regional'),
  (2, 'South Regional'),
  (2, 'East Regional'),
  (2, 'West Regional'),
  (2, 'Interzonal A'),
  (2, 'Interzonal B'),
  (2, 'Interzonal C'),
  (2, 'Interzonal D'),
  (2, 'Semifinal'),
  (2, 'Bronze'),
  (2, 'Final'),
  (3, 'North Regional'),
  (3, 'South Regional'),
  (3, 'East Regional'),
  (3, 'West Regional'),
  (3, 'Interzonal A'),
  (3, 'Interzonal B'),
  (3, 'Interzonal C'),
  (3, 'Interzonal D'),
  (3, 'Semifinal'),
  (3, 'Bronze'),
  (3, 'Final');


INSERT INTO tbl_group (id_stage, id_team)
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (1, 4),
  (1, 5),
  (2, 6),
  (2, 7),
  (2, 8),
  (2, 9),
  (2, 10),
  (5, 1),
  (5, 10),
  (5, 2),
  (5, 9),
  (6, 3),
  (6, 8),
  (6, 4),
  (6, 7),
  (9, 1),
  (9, 3),
  (9, 10),
  (9, 8),
  (10, 1),
  (10, 10),
  (11, 3),
  (11, 8);


INSERT INTO tbl_match (id_stage, date, place)
VALUES
  (9, '2021-08-15', 'Northern Stadium'),
  (9, '2021-08-16', 'Great Stadium'),
  (10, '2021-08-17', 'Great Stadium'),
  (11, '2021-08-18', 'Northern Stadium'),
  (1, '2021-05-2', 'Northern Stadium'),
  (1, '2021-05-2', 'Northern Stadium'),
  (1, '2021-05-3', 'Northern Stadium'),
  (1, '2021-05-3', 'Northern Stadium'),
  (1, '2021-05-4', 'Northern Stadium'),
  (1, '2021-05-4', 'Northern Stadium'),
  (1, '2021-05-5', 'Northern Stadium'),
  (1, '2021-05-5', 'Northern Stadium'),
  (1, '2021-05-6', 'Northern Stadium'),
  (1, '2021-05-6', 'Northern Stadium');


INSERT INTO tbl_home (id_match, id_team, home_score, home_penalty)
VALUES
  (4, 3, 1, 3),
  (5, 1,3, NULL),
  (6, 3, 2, NULL),
  (7, 1, 4, NULL),
  (8, 4, 1, NULL),
  (9, 1, 1, NULL),
  (10, 5, 0, NULL),
  (11, 2, 0, NULL),
  (12, 4, 0, NULL),
  (13, 1, 0, NULL),
  (14, 2, 0, NULL),
  (1, 3, 0, 3),
  (2, 1, 0, 2),
  (3, 1, 0, 4);


INSERT INTO tbl_away (id_match, id_team, away_score, away_penalty)
VALUES
  (4, 8, 1, 2),
  (5, 2,1, NULL),
  (6, 4, 0, NULL),
  (7, 5, 2, NULL),
  (8, 2, 0, NULL),
  (9, 4, 0, NULL),
  (10, 3, 3, NULL),
  (11, 3, 1, NULL),
  (12, 5, 0, NULL),
  (13, 3, 1, NULL),
  (14, 5, 1, NULL),
  (1, 5, 0, 1),
  (2, 8, 0, 4),
  (3, 7, 0, 3);


INSERT INTO tbl_incident (id_match, id_squad, played, goal, yellow_card, observation)
VALUES
      (11, 27, TRUE, 1, 0, NULL),
      (11, 40, TRUE, 1, 1, 'Excessive celebration'),
      (6, 27, TRUE, 2, 0, NULL),
      (10, 27, TRUE, 3, 0, NULL),
      (11, 27, TRUE, 1, 0, NULL),
      (5, 11, TRUE, 1, 0, NULL),
      (7, 7, TRUE, 4, 0, NULL),
      (9, 7, TRUE, 1, 0, NULL);


INSERT INTO tbl_agreement (date, id_entity, id_individual, start, end)
VALUES
      ('2023-02-20', 1, 1, '2023-02-21', '2023-05-21'),
      ('2023-02-22', 2, 2, '2023-02-23', '2023-04-23'),
      ('2023-02-25', 3, 3, '2023-02-26', '2023-03-26'),
      ('2023-02-28', 4, 4, '2023-03-01', '2023-05-01'),
      ('2023-03-02', 5, 5, '2023-03-03', '2023-06-03');


INSERT INTO tbl_contact (id_entity, id_individual, address, city, state, country, postal_code, phone, email)
VALUES
(1, 1, '123 Main St', 'Springfield', 'Mistate', 'Fictionland', '12345', 123456789, 'john.doe@example.com'),
(2, 2, '456 Oak Ave', 'Rivertown', 'Faketown', 'Imagineland', '67890', 987654321, 'jane.smith@example.com'),
(3, 3, '789 Maple Blvd', 'Fictionville', 'Nowhere', 'Dreamland', '45678', 567890123, 'bob.jones@example.com'),
(4, 4, '012 Pine Ln', 'Harbor City', 'Nonexistent', 'Fantasia', '89012', 234567890, 'alice.white@example.com'),
(5, 5, '345 Cedar Rd', 'Mountainville', 'Invented', 'Wonderland', '01234', 345678901, 'chris.black@example.com');
