CREATE TABLE wp_users (
    ID SERIAL PRIMARY KEY,
    display_name VARCHAR(100),
    user_email VARCHAR(100),
    user_registered TIMESTAMP
);
