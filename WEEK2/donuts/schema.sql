    CREATE TABLE customers (
        "id" INT,
        "first_name" TEXT NOT NULL,
        "last_name" TEXT NOT NULL,
        PRIMARY KEY("id")
    );

    CREATE TABLE orders (
        "id" INT,
        "customer_id" INT,
        PRIMARY KEY("id"),
        FOREIGN KEY("customer_id") REFERENCES "customers"("id")
    );

    CREATE TABLE donuts(
        "id" INT,
        "name" TEXT NOT NULL,
        "price" REAL,
        "gluten_free" BOOLEAN NOT NULL,
        PRIMARY KEY("id")
    );

    CREATE TABLE ingredients (
    "id" INT,
    "name" TEXT NOT NULL,
    "price_per_unit" INT,
    PRIMARY KEY ("id")
    );

   CREATE TABLE order_donut(
    "order_id" INT NOT NULL,
    "donut_id" INT NOT NULL,
    "quantity" INT NOT NULL,
    PRIMARY KEY("order_id", "donut_id"),
    FOREIGN KEY("order_id") REFERENCES "orders"("id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id")
   );

   CREATE TABLE donut_ingredients(
    "donut_id" INT NOT NULL,
    "ingredient_id" INT NOT NULL,
    PRIMARY KEY("donut_id","ingredient_id"),
    FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY("ingredient_id") REFERENCES "ingredients"("id")
   );
