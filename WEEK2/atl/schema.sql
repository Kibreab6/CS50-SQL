CREATE TABLE passengers (

    "id" INT ,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "age" INT NOT NULL CHECK("age">=0),
    PRIMARY KEY ("id")
);
-- The passenger has one to many relation with the checkins

CREATE TABLE checkins (

    "id" INT,
    "passenger_id" INT NOT NULL,
    "flight_id" INT NOT NULL,
    "checkn_time" DATETIME NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("passenger_id") REFERENCES passengers("id"),
    FOREIGN KEY("flight_id") REFERENCES flights("id")
);
-- The flights has many to one relation with checkin
-- therefore flight table is operated by the tables passengers and flights

CREATE TABLE airlines (
    "id" INT,
    "name" TEXT NOT NULL,
    "concourse" TEXT NOT NULL CHECK("concourse" IN ('A', 'B', 'C', 'D', 'E','F','T')),
    PRIMARY KEY("id")
);

CREATE TABLE flights (
    "id" INT,
    "flight_number" NOT NULL,
    "airline_id" INT NOT NULL,
    "from_airport" TEXT NOT NULL,
    "to_airport" TEXT NOT NULL,
    "depature_time" DATETIME NOT NULL,
    "arrival_time" DATETIME NOT NULL,
    PRIMARY KEY("id"),
    FOREIGN KEY("airline_id") REFERENCES airlines("id")
);
-- The table airline has many to one relationship with the flight table
