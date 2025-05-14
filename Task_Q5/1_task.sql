CREATE OR REPLACE PROCEDURE replace_empty_titles(new_title TEXT)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE wp_posts
    SET post_title = new_title
    WHERE TRIM(post_title) = '';
END;
$$;
