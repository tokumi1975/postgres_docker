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
\c sampledb
INSERT INTO users (id, name, address, phone, update_date, create_date) VALUES ('1', 'テスト太郎', '東京都サンプル区1-1', '080-0000-0000', '2019-05-06 12:00:00', '2019-05-01 12:00:00');
EOSQL
