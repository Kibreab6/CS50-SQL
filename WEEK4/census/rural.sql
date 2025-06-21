CREATE VIEW "rural" AS
SELECT * FROM "census"
WHERE LOWER(locality) LIKE '%rural%';
