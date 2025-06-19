SELECT DISTINCT name
FROM
"performances"
JOIN "players" ON "performances"."player_id" = "players"."id"
JOIN "teams" ON "performances"."team_id" = "teams"."id"
WHERE "first_name" = 'Satchel' AND "last_name" = 'Paige';
