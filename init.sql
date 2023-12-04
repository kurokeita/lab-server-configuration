-- Create the 'keycloak' database
CREATE DATABASE IF NOT EXISTS keycloak;

-- Grant all privileges on 'keycloak' database to 'lab' user
GRANT ALL PRIVILEGES ON keycloak.* TO 'lab'@'%' WITH GRANT OPTION;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;

-- Flush privileges to apply changes
FLUSH PRIVILEGES;