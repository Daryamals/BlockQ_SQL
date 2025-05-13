CREATE TABLE wp_posts (
    ID SERIAL PRIMARY KEY,
    post_author INTEGER REFERENCES wp_users(ID),
    post_title VARCHAR(255),
    post_date TIMESTAMP
);
