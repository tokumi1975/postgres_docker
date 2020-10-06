psql << EOSQL
  CREATE DATABASE testdb;
  GRANT ALL PRIVILEGFES ON DATABASE testdb TO postgres;
  CREATE DATABASE sampledb;
  \c sampledb
  CREATE TABLE users (
    id integer NOT NULL,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(255),
    phone VARCHAR(50),
    update_date TIMESTAMP,
    create_date TIMESTAMP,
    delete_date TIMESTAMP,
    PRIMARY KEY (id));
EOSQL
