CREATE VIEW users_posts AS
SELECT
    wp_users.display_name AS author_name,
    wp_users.user_email,
    wp_posts.post_title,
    wp_posts.post_date
FROM
    wp_users
JOIN
    wp_posts ON wp_posts.post_author = wp_users.ID;
