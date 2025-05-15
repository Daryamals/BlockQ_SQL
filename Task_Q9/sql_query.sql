SELECT display_name, user_email FROM wp_users;
BEGIN;
UPDATE wp_users SET display_name = 'SavepointName' WHERE ID = 1;
SAVEPOINT GOTO_NICKNAME;
UPDATE wp_users SET user_email = 'transaction@transaction' WHERE ID = 1;
SELECT display_name, user_email FROM wp_users;
ROLLBACK TO SAVEPOINT GOTO_NICKNAME;
SELECT display_name, user_email FROM wp_users;