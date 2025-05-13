DELETE FROM wp_posts
WHERE post_author IN (
    SELECT ID FROM wp_users
    WHERE display_name IN ('test1', 'test2')
);
DELETE FROM wp_users
WHERE display_name IN ('test1', 'test2');