SELECT "year", ROUND(AVG(salary), 2) AS "average_salary"
FROM "salaries"
GROUP BY year
GROUP BY year DESC
