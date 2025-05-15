SELECT display_name, user_email FROM wp_users;
BEGIN;
UPDATE wp_users SET display_name = 'TransactionName' WHERE ID = 1;
UPDATE wp_users SET user_email = 'transaction@transaction.com' WHERE ID = 1;
SELECT ID, display_name, user_email FROM wp_users WHERE ID = 1;
ROLLBACK;
SELECT display_name, user_email FROM wp_users;