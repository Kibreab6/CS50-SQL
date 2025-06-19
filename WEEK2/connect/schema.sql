
CREATE TABLE users (
    "id" INT,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT NOT NULL UNIQUE,
    "password" TEXT NOT NULL,
    PRIMARY KEY("id")
    );

CREATE TABLE schools(
    "id" INT,
    "name" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "year_founded" INT NOT NULL,
    PRIMARY KEY("id")
);
CREATE TABLE companies(
    "id" INT,
    "name" TEXT NOT NULL,
    "industry" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    PRIMARY KEY("id")
    );

CREATE TABLE connections (
    "user1_id" INT NOT NULL,
    "user2_id" INT NOT NULL,
    PRIMARY KEY("user1_id", "user2_id"),
    FOREIGN KEY ("user1_id") REFERENCES "users"("id"),
    FOREIGN KEY ("user2_id") REFERENCES "users"("id")
    );

CREATE TABLE user_schools(
    "user_id" INT NOT NULL,
    "school_id" INT NOT NULL,
    "start_date" NUMERIC NOT NULL,
    "end_date" NUMERIC NOT NULL,
    "degree" TEXT,
    PRIMARY KEY("user_id", "school_id","start_date"),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("school_id") REFERENCES "schools"("id")
);

CREATE TABLE user_companies (

    "user_id" INT NOT NULL,
    "company_id" INT NOT NULL,
    "start_date" NUMERIC NOT NULL,
    "end_date" NUMERIC ,
    "title" TEXT,
    PRIMARY KEY("user_id", "company_id", "start_date"),
    FOREIGN KEY ("user_id") REFERENCES "users"("id"),
    FOREIGN KEY ("company_id") REFERENCES "companies"("id")
);
