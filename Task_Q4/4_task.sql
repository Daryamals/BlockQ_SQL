SELECT DISTINCT up.author_name, u.user_registered
FROM users_posts up
JOIN wp_users u ON u.display_name = up.author_name;
