CREATE VIEW league_position AS
SELECT
    c.short_name AS Team,
    t.position AS Position
FROM
    tbl_team t
JOIN
    tbl_league l ON t.id_league = l.id_league
JOIN
    tbl_club c ON t.id_club = c.id_club
WHERE
    l.year = 2021
ORDER BY
    t.position;


CREATE VIEW team_list AS
SELECT
    c.short_name AS Team,
    CONCAT(i.name, ' ', i.last_name) AS Name,
    i.role AS Role
FROM
    tbl_squad s
JOIN
    tbl_team t ON s.id_team = t.id_team
JOIN
    tbl_club c ON t.id_club = c.id_club
JOIN
    tbl_individual i ON s.id_individual = i.id_individual
JOIN
    tbl_league l ON t.id_league = l.id_league
WHERE
    l.year = 2021 AND c.short_name = 'Estrella'
ORDER BY
    c.short_name, i.role;


CREATE VIEW match_result AS
SELECT
    m.date AS Date,
    st.name AS Stage,
    m.place AS Place,
    c_home.short_name AS Home,
    h.home_score AS HomeScore,
    c_away.short_name AS Away,
    a.away_score AS AwayScore,
    CASE
        WHEN h.home_score > a.away_score THEN c_home.short_name
        WHEN h.home_score < a.away_score THEN c_away.short_name
        WHEN h.home_score = a.away_score AND h.home_penalty IS NOT NULL AND a.away_penalty IS NOT NULL THEN
            CASE
                WHEN h.home_penalty > a.away_penalty THEN c_home.short_name
                WHEN h.home_penalty < a.away_penalty THEN c_away.short_name
                ELSE 'Draw'
            END
        ELSE 'Draw'
    END AS Winner
FROM
    tbl_match m
LEFT JOIN
    (tbl_home h JOIN tbl_team t_home ON h.id_team = t_home.id_team
                JOIN tbl_club c_home ON t_home.id_club = c_home.id_club) ON m.id_match = h.id_match
LEFT JOIN
    (tbl_away a JOIN tbl_team t_away ON a.id_team = t_away.id_team
                JOIN tbl_club c_away ON t_away.id_club = c_away.id_club) ON m.id_match = a.id_match
JOIN
    tbl_stage st ON m.id_stage = st.id_stage
ORDER BY
    m.date;


CREATE VIEW stage_table AS
SELECT
    c.short_name AS Team,
    COUNT(*) AS P,
    COUNT(CASE WHEN m.Winner = c.short_name THEN 1 END) AS W,
    SUM(CASE WHEN m.Winner = 'Draw' THEN 1 ELSE 0 END) AS D,
    COUNT(*) - COUNT(CASE WHEN m.Winner = c.short_name THEN 1 END) - SUM(CASE WHEN m.Winner = 'Draw' THEN 1 ELSE 0 END) AS L,
    3*COUNT(CASE WHEN m.Winner = c.short_name THEN 1 END) + SUM(CASE WHEN m.Winner = 'Draw' THEN 1 ELSE 0 END) AS Pts
FROM
    match_result m
JOIN
    tbl_club c ON (m.Home = c.short_name OR m.Away = c.short_name)
JOIN
    tbl_stage st ON m.Stage = st.name
JOIN
    tbl_league l ON st.id_league = l.id_league
WHERE
    l.year = 2021 AND st.name LIKE '%Regional'
GROUP BY
    Team
ORDER BY
    Pts DESC;


CREATE VIEW top_scorers AS
SELECT
    CONCAT(i.name, ' ', i.last_name) AS Player,
    c.short_name AS Team,
    SUM(inc.goal) AS Goals
FROM
    tbl_incident inc
JOIN
    tbl_squad s ON inc.id_squad = s.id_squad
JOIN
    tbl_individual i ON s.id_individual = i.id_individual
JOIN
    tbl_team t ON s.id_team = t.id_team
JOIN
    tbl_club c ON t.id_club = c.id_club
GROUP BY
    Player, Team
ORDER BY
    Goals DESC;


-- Federation ID

CREATE VIEW entity_id AS
SELECT
    CONCAT('E', LPAD(CAST(id_entity AS CHAR), 4, '0')) AS ID,
    short_name AS Name
FROM
    tbl_entity;


CREATE VIEW individual_id AS
SELECT
    CONCAT('I', LPAD(CAST(id_individual AS CHAR), 4, '0')) AS ID,
    CONCAT(name, ' ', last_name) AS Name
FROM
    tbl_individual;


CREATE VIEW club_id AS
SELECT
    CONCAT('C', LPAD(CAST(id_club AS CHAR), 4, '0')) AS ID,
    short_name AS Name
FROM
    tbl_club;
