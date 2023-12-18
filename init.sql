-- Create the 'keycloak' database
CREATE DATABASE IF NOT EXISTS keycloak;
GRANT ALL PRIVILEGES ON keycloak.* TO 'lab'@'%' WITH GRANT OPTION;

-- Create the 'paperless' database
CREATE DATABASE IF NOT EXISTS paperless;
GRANT ALL PRIVILEGES ON paperless.* TO 'lab'@'%' WITH GRANT OPTION;

-- Grant all privileges on the database to 'root' user
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

-- Flush privileges to apply changes
FLUSH PRIVILEGES;