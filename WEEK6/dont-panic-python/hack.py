from cs50 import SQL
db = SQL("sqlite:///dont-panic.db")
password = input("Enter the password: ")
db.execute (
    """
    UPDATE "users"
    SET "password" = ?
    WHERE "username" = "admin";
    """,
    password
);
