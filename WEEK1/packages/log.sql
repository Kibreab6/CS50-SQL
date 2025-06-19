
-- *** The Lost Letter ***
SELECT * FROM "scans"
WHERE "package_id" = (
    SELECT "id" FROM "packages"
    WHERE "from_address_id" = (
        SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue'
    )
    AND "to_address_id" = (
        SELECT "id" FROM "addresses" WHERE "address" = '2 Finnegan Street'
    )
);

-- ID = 94 package_id = 384 address_id = 854 and action = drop
--
-- so this query gives the scan history for the lost letter and to find the
-- congratulatory letter and address with type, we exexute the following queries
SELECT * FROM "packages" where id = 384;
SELECT * FROM "addresses" where id = 854;


-- *** The Devious Delivery ***
SELECT "contents" FROM "packages" WHERE "from_address_id" IS NULL;


SELECT "type" FROM "addresses" WHERE "id" = (
    SELECT "address_id" FROM "scans" WHERE "package_id" =
    (SELECT "package_id" FROM "scans" WHERE "address_id" = (SELECT "to_address_id" FROM "packages" WHERE "from_address_id" IS NULL) AND "action" = 'Pick') AND "action" = 'Drop'
);

-- *** The Forgotten Gift ***

SELECT * FROM "scans" WHERE "package_id" = (
    SELECT "id" FROM "packages" WHERE "from_address_id" = (SELECT "id" from "addresses" where "address" = "109 Tileston Street")
);

SELECT "address" from addresses WHERE id = 7432;

SELECT * from drivers WHERE id = 17;
