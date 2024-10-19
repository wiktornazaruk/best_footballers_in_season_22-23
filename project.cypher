// Best footballers in season 2022/2023

// players
CREATE (n:player {
    fullname: 'Lionel Messi',
    club: 'Inter Miami', 
    nationality: 'Argentina', 
    goals: 42, // total number of goals in season 2022/2023
    assists: 26, // total number of assists in season 2022/2023
    date_of_birth: date('1987-06-24'), 
    official_weight: 67, // in kg
    official_height: 1.70 // in meters
});

CREATE (n:player {
    fullname: 'Erling Haaland',
    club: 'Manchester City',  
    nationality: 'Norway', 
    goals: 56, 
    assists: 9, 
    date_of_birth: date('2000-07-21'), 
    official_weight: 88,  
    official_height: 1.94 
});

CREATE (n:player {
    fullname: 'Kylian Mbappé', 
    club: 'Paris Saint-Germain', 
    nationality: 'France', 
    goals: 55, 
    assists: 14, 
    date_of_birth: date('1998-12-20'), 
    official_weight: 73, 
    official_height: 1.78
});

CREATE (n:player {
    fullname: 'Kevin De Bruyne',
    club: 'Manchester City', 
    nationality: 'Belgium', 
    goals: 10, 
    assists: 32, 
    date_of_birth: date('1991-06-28'), 
    official_weight: 70, 
    official_height: 1.81
});

CREATE (n:player {
    fullname: 'Rodri',
    club: 'Manchester City', 
    nationality: 'Spain', 
    goals: 4, 
    assists: 7, 
    date_of_birth: date('1996-06-22'), 
    official_weight: 82, 
    official_height: 1.91
});

CREATE (n:player {
    fullname: 'Vinícius Júnior',
    club: 'Real Madrid',  
    nationality: 'Brazil', 
    goals: 25, 
    assists: 26, 
    date_of_birth: date('2000-07-12'), 
    official_weight: 73, 
    official_height: 1.76
});

CREATE (n:player {
    fullname: 'Julián Álvarez',
    club: 'Manchester City', 
    nationality: 'Argentina', 
    goals: 23, 
    assists: 6, 
    date_of_birth: date('2000-01-31'), 
    official_weight: 71, 
    official_height: 1.70
});

CREATE (n:player {
    fullname: 'Victor Osimhen',
    club: 'SSC Napoli',  
    nationality: 'Nigeria', 
    goals: 33, 
    assists: 5, 
    date_of_birth: date('1998-12-29'), 
    official_weight: 78, 
    official_height: 1.86
});

CREATE (n:player {
    fullname: 'Bernardo Silva',
    club: 'Manchester City',   
    nationality: 'Portugal', 
    goals: 10, 
    assists: 8, 
    date_of_birth: date('1994-08-10'), 
    official_weight: 64, 
    official_height: 1.73
});

CREATE (n:player {
    fullname: 'Luka Modric',
    club: 'Real Madrid',  
    nationality: 'Croatia', 
    goals: 6, 
    assists: 6, 
    date_of_birth: date('1985-09-09'), 
    official_weight: 66, 
    official_height: 1.72
});


// leagues
CREATE (n:league {
    name: 'French Ligue 1',
    scope: 'France'
});

CREATE (n:league {
    name: 'English Premier League',
    scope: 'England'
});

CREATE (n:league {
    name: 'Italian Serie a League',
    scope: 'Italy'
});

// cups
CREATE (n:cup {
    name: 'English FA Cup',
    scope: 'England'
});
CREATE (n:cup {
    name: 'Spanish Copa del Rey Cup',
    scope: 'Spain'
});
CREATE (n:cup {
    name: 'Champions League',
    scope: 'Europe'
});
CREATE (n:cup {
    name: 'World Cup',
    scope: 'World'
});

// ballon d'or 
CREATE (n:ballon_dor {
    name: "Ballon d'or",
    scope: 'World'
});

// connections between players and achievements including their statistics in a given competition

// league victory
MATCH (n {fullname: 'Lionel Messi'}), (m {name: 'French Ligue 1'})
CREATE (n)-[:WON_LEAGUE {number_of_goals: 16, number_of_assists: 16}]->(m);

MATCH (n {fullname: 'Erling Haaland'}), (m {name: 'English Premier League'})
CREATE (n)-[:WON_LEAGUE {number_of_goals: 36, number_of_assists: 8}]->(m);

MATCH (n {fullname: 'Kylian Mbappé'}), (m {name: 'French Ligue 1'})
CREATE (n)-[:WON_LEAGUE {number_of_goals: 29, number_of_assists: 6}]->(m);

MATCH (n {fullname: 'Kevin De Bruyne'}), (m {name: 'English Premier League'})
CREATE (n)-[:WON_LEAGUE {number_of_goals: 7, number_of_assists: 18}]->(m);

MATCH (n {fullname: 'Rodri'}), (m {name: 'English Premier League'})
CREATE (n)-[:WON_LEAGUE {number_of_goals: 2, number_of_assists: 6}]->(m);

MATCH (n {fullname: 'Julián Álvarez'}), (m {name: 'English Premier League'})
CREATE (n)-[:WON_LEAGUE {number_of_goals: 9, number_of_assists: 1}]->(m);

MATCH (n {fullname: 'Victor Osimhen'}), (m {name: 'Italian Serie a League'})
CREATE (n)-[:WON_LEAGUE {number_of_goals: 26, number_of_assists: 5}]->(m);

MATCH (n {fullname: 'Bernardo Silva'}), (m {name: 'English Premier League'})
CREATE (n)-[:WON_LEAGUE {number_of_goals: 4, number_of_assists: 6}]->(m);

// national cup victory
MATCH (n {fullname: 'Erling Haaland'}), (m {name: 'English FA Cup'})
CREATE (n)-[:WON_NATIONAL_CUP {number_of_goals: 3, number_of_assists: 0}]->(m);

MATCH (n {fullname: 'Kevin De Bruyne'}), (m {name: 'English FA Cup'})
CREATE (n)-[:WON_NATIONAL_CUP {number_of_goals: 1, number_of_assists: 4}]->(m);

MATCH (n {fullname: 'Rodri'}), (m {name: 'English FA Cup'})
CREATE (n)-[:WON_NATIONAL_CUP {number_of_goals: 0, number_of_assists: 0}]->(m);

MATCH (n {fullname: 'Vinícius Júnior'}), (m {name: 'Spanish Copa del Rey Cup'})
CREATE (n)-[:WON_NATIONAL_CUP {number_of_goals: 3, number_of_assists: 4}]->(m);

MATCH (n {fullname: 'Julián Álvarez'}), (m {name: 'English FA Cup'})
CREATE (n)-[:WON_NATIONAL_CUP {number_of_goals: 3, number_of_assists: 2}]->(m);

MATCH (n {fullname: 'Bernardo Silva'}), (m {name: 'English FA Cup'})
CREATE (n)-[:WON_NATIONAL_CUP {number_of_goals: 0, number_of_assists: 1}]->(m);

MATCH (n {fullname: 'Luka Modric'}), (m {name: 'Spanish Copa del Rey Cup'})
CREATE (n)-[:WON_NATIONAL_CUP {number_of_goals: 0, number_of_assists: 2}]->(m);


// champions league (european cup) victory
MATCH (n {fullname: 'Erling Haaland'}), (m {name: 'Champions League'})
CREATE (n)-[:WON_CHAMPIONS_LEAGUE {number_of_goals: 12, number_of_assists: 1}]->(m);

MATCH (n {fullname: 'Kevin De Bruyne'}), (m {name: 'Champions League'})
CREATE (n)-[:WON_CHAMPIONS_LEAGUE {number_of_goals: 2, number_of_assists: 7}]->(m);

MATCH (n {fullname: 'Rodri'}), (m {name: 'Champions League'})
CREATE (n)-[:WON_CHAMPIONS_LEAGUE {number_of_goals: 2, number_of_assists: 0}]->(m);

MATCH (n {fullname: 'Julián Álvarez'}), (m {name: 'Champions League'})
CREATE (n)-[:WON_CHAMPIONS_LEAGUE {number_of_goals: 3, number_of_assists: 2}]->(m);

MATCH (n {fullname: 'Bernardo Silva'}), (m {name: 'Champions League'})
CREATE (n)-[:WON_CHAMPIONS_LEAGUE {number_of_goals: 3, number_of_assists: 1}]->(m);


// world cup victory
MATCH (n {fullname: 'Lionel Messi'}), (m {name: 'World Cup'})
CREATE (n)-[:WON_WORLD_CUP {number_of_goals: 7, number_of_assists: 3}]->(m);

MATCH (n {fullname: 'Julián Álvarez'}), (m {name: 'World Cup'})
CREATE (n)-[:WON_WORLD_CUP {number_of_goals: 4, number_of_assists: 0}]->(m);

// been in top 10 ballon d'or
MATCH (n {fullname: 'Lionel Messi'}), (m {name: "Ballon d'or"})
CREATE (n)-[:RANKED_IN {place: 1, number_of_points: 452}]->(m);

MATCH (n {fullname: 'Erling Haaland'}), (m {name: "Ballon d'or"})
CREATE (n)-[:RANKED_IN {place: 2, number_of_points: 357 }]->(m);

MATCH (n {fullname: 'Kylian Mbappé'}), (m {name: "Ballon d'or"})
CREATE (n)-[:RANKED_IN {place: 3, number_of_points: 270}]->(m);

MATCH (n {fullname: 'Kevin De Bruyne'}), (m {name: "Ballon d'or"})
CREATE (n)-[:RANKED_IN {place: 4, number_of_points: 100}]->(m);

MATCH (n {fullname: 'Rodri'}), (m {name: "Ballon d'or"})
CREATE (n)-[:RANKED_IN {place: 5, number_of_points: 57}]->(m);

MATCH (n {fullname: 'Vinícius Júnior'}), (m {name: "Ballon d'or"})
CREATE (n)-[:RANKED_IN {place: 6, number_of_points: 49}]->(m);

MATCH (n {fullname: 'Julián Álvarez'}), (m {name: "Ballon d'or"})
CREATE (n)-[:RANKED_IN {place: 7, number_of_points:28 }]->(m);

MATCH (n {fullname: 'Victor Osimhen'}), (m {name: "Ballon d'or"})
CREATE (n)-[:RANKED_IN {place: 8, number_of_points: 24}]->(m);

MATCH (n {fullname: 'Bernardo Silva'}), (m {name: "Ballon d'or"})
CREATE (n)-[:RANKED_IN {place: 9, number_of_points:20 }]->(m);

MATCH (n {fullname: 'Luka Modric'}), (m {name: "Ballon d'or"})
CREATE (n)-[:RANKED_IN {place: 10, number_of_points:19 }]->(m);
