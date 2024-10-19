// 1 find top 5 players with the most goals in the whole season? how many?
MATCH (n:player)
RETURN n.fullname AS name, n.goals AS goals
 ORDER BY n.goals DESC
LIMIT 5;

// 2 what is the average number of goals scored in the whole season?
MATCH (n:player)
RETURN avg(n.goals) AS average_number_of_goals_in_the_whole_season;

// 3 who scored the most goals in the last World Cup?
MATCH (p:player)-[r:WON_WORLD_CUP]->(c:cup { name: 'World Cup' })
RETURN p.fullname AS name , r.number_of_goals AS goals
 ORDER BY r.number_of_goals DESC
LIMIT 1;

// 4 list the 3 oldest players
MATCH (n:player)
RETURN n.fullname AS name, duration.between(n.date_of_birth, date()).years AS age
 ORDER BY age DESC
LIMIT 3;

// 5 what is the average height of the players?
MATCH (n:player)
RETURN avg(n.official_height) AS average_height_of_the_players;

// 6 what is the average number of assists in the Chamiopns League?
MATCH (p:player)-[r:WON_CHAMPIONS_LEAGUE]->(c:cup { name: 'Champions League' })
RETURN avg(r.number_of_assists) AS avg_assists;

// 7 find the top 3 players with the highest combined goals and assists across all competitions
MATCH (p:player)
OPTIONAL MATCH (p)-[r]->(c)
WHERE type(r) IN ['WON_LEAGUE', 'WON_NATIONAL_CUP', 'WON_CHAMPIONS_LEAGUE', 'WON_WORLD_CUP']
WITH p,
sum(r.number_of_goals) + sum(r.number_of_assists) AS total_contributions,
sum(r.number_of_goals) AS total_goals,
sum(r.number_of_assists) AS total_assists
RETURN p.fullname, total_contributions, total_goals, total_assists
 ORDER BY total_contributions DESC
LIMIT 3
