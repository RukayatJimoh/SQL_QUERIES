/*--creating web_events table
CREATE TABLE web_events(
id int,
account_id int,
occured_at timestamptz,
channel char
)

ALTER TABLE web_events
ALTER COLUMN channel TYPE char(50)


SELECT *
FROM web_events

COPY web_events
FROM '/Applications/PostgreSQL 16/web_events.csv'
WITH (FORMAT CSV, HEADER TRUE)

-- creating accounts table
CREATE TABLE accounts(
id int,
name varchar(100),
website varchar(100),
lat numeric(3,12),
long numeric(4,12),
primary_poc varchar(100),
sales_rep_id int
)

ALTER TABLE accounts
ALTER COLUMN lat TYPE numeric(11,8),
ALTER COLUMN long TYPE numeric(11,8)

COPY accounts
FROM '/Applications/PostgreSQL 16/accounts.csv'
WITH (FORMAT CSV, HEADER TRUE)

--creating region table
CREATE TABLE region (
	id integer,
	name char(50)
);

COPY region
FROM '/Applications/PostgreSQL 16/region.csv'
WITH (FORMAT CSV, HEADER TRUE)

--creating orders table
CREATE TABLE orders (
	id integer,
	account_id integer,
	occurred_at timestamp,
	standard_qty integer,
	gloss_qty integer,
	poster_qty integer,
	total integer,
	standard_amt_usd numeric(10,2),
	gloss_amt_usd numeric(10,2),
	poster_amt_usd numeric(10,2),
	total_amt_usd numeric(10,2)
);

COPY region
FROM '/Applications/PostgreSQL 16/region.csv'
WITH (FORMAT CSV, HEADER TRUE)

--creating sales_reps table
CREATE TABLE sales_reps (
	id integer,
	name char(50),
	region_id integer
);
COPY sales_reps
FROM '/Applications/PostgreSQL 16/sales_reps.csv'
WITH (FORMAT CSV, HEADER TRUE)
