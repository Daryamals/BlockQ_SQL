CREATE OR REPLACE FUNCTION set_default_title()
RETURNS TRIGGER AS $$
BEGIN
    IF TRIM(NEW.post_title) IS NULL OR TRIM(NEW.post_title) = '' THEN
        NEW.post_title := 'Anonymous';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
