psql -U postgres -d testdb << EOSQL
CREATE TABLE testtable
(
  id integer,
  value integer
);
COPY testtable (
  id,
  value
) FROM '/docker-entrypoint-initdb.d/initdata.csv' WITH CSV;
EOSQL
