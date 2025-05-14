CREATE TRIGGER trg_replace_empty_title
BEFORE INSERT ON wp_posts
FOR EACH ROW
EXECUTE FUNCTION set_default_title();
