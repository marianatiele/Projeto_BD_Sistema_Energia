CREATE USER us_enge_teste PASSWORD '@Lhna16' createdb;

GRANT CONNECT ON DATABASE db_enge TO us_enge_teste;
GRANT USAGE ON SCHEMA sm_enge TO us_enge_teste;
GRANT SELECT ON ALL TABLES IN SCHEMA sm_enge TO us_enge_teste;
