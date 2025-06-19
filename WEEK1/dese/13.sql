SELECT "name"
FROM "schools" where "id" = (
    SELECT "school_id"
    FROM "graduation_rates"
    WHERE "graduated" = 100
);

-- returns one schools with 100 graduation rate using subquery
