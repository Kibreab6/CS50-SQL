SELECT "first_name", height AS "Player height"
FROM players
WHERE birth_state = 'CA'
ORDER BY height DESC
LIMIT 4;
