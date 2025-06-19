SELECT "players"."first_name", "players"."last_name", "salaries"."salary", "performances"."HR", "salaries"."year"
FROM "salaries"
JOIN "performances" ON "salaries"."player_id" = "performances"."player_id" AND "salaries"."year" = "performances"."year"
JOIN "players" ON "players"."id" = "salaries"."player_id"
ORDER BY "players"."id" ASC, "salaries"."year" DESC, "performances"."HR" DESC, "salaries"."salary" DESC;
