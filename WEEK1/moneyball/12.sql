WITH "per_hit" AS (
    SELECT "salaries"."player_id"
    FROM "salaries"
    JOIN "performances" ON "salaries"."player_id" = "performances"."player_id"
        AND "salaries"."year" = "performances"."year"
    WHERE "salaries"."year" = 2001 AND "performances"."H" > 0
    ORDER BY ("salaries"."salary" * 1.0 / "performances"."H") ASC
    LIMIT 10
),
"per_rbi" AS (
    SELECT "salaries"."player_id"
    FROM "salaries"
    JOIN "performances" ON "salaries"."player_id" = "performances"."player_id"
        AND "salaries"."year" = "performances"."year"
    WHERE "salaries"."year" = 2001 AND "performances"."RBI" > 0
    ORDER BY ("salaries"."salary" * 1.0 / "performances"."RBI") ASC
    LIMIT 10
)
SELECT "players"."first_name", "players"."last_name"
FROM "players"
WHERE "players"."id" IN (
    SELECT "player_id" FROM "per_hit"
    INTERSECT
    SELECT "player_id" FROM "per_rbi"
)
ORDER BY "players"."id" ASC;
