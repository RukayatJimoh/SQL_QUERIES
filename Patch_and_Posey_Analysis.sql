### Limits
/*
Query that limits the response to only the first 15 rows and includes the date, account_id, and channel fields in the web_events table.
*/
SELECT *
FROM public.web_events
LIMIT 15

/* query that displays the order ID, account ID, and total dollar amount for all the
 orders, sorted by account ID,total dollar amount(DESC).*/
SELECT id, account_id,total_amt_usd
FROM public.orders
ORDER BY account_id




/* Now write a query that again displays order ID, account ID, and total dollar amount for each
order, but this time sorted first by total dollar amount (in descending order), and then by
account ID (in ascending order). */


/* Pulls the first 5 rows and all columns from the orders table that have a dollar amount of
gloss_amt_usd greater than or equal to 1000 */


/* Pulls the first 10 rows and all columns from the orders table that have a total_amt_usd less than 500 */


/* Filter the accounts table to include the company name, website, and the primary point of contact
(primary_poc) just for the Exxon Mobil company in the accounts table*/


##Arithmetic operators
/* Here we divide the standard paper dollar amount by the total order amount to find the standard paper
percent for the order, and use the AS keyword to name this new column "std_percent */

/* Create a column that divides the standard_amt_usd by the standard_qty to find the unit price for standard
 paper for each order. Limit the results to the first 10 orders, and include the id and account_id fields*/
 

/* Write a query that finds the percentage of revenue that comes from poster paper for each order. You will
need to use only the columns that end with _usd. (Try to do this without using the total column.) Display
the id and account_id fields also */


##Logical operators
/* Use the accounts table to find- */
/* All the companies whose names start with 'C' */


/* All companies whose names contain the string 'one' somewhere in the name */


/* All companies whose names end with 's' */

/* Use the accounts table to find the account name, primary_poc, and sales_rep_id for Walmart, Target, and
Nordstrom */


/* Use the web_events table to find all information regarding individuals who were contacted via the channel
of organic or adwords */


/* Use the accounts table to find the account name, primary poc, and sales rep id for all stores except
Walmart, Target, and Nordstrom */


/* Use the accounts table to find: */
/* All the companies whose names do not start with 'C' */

/* All companies whose names do not contain the string 'one' somewhere in the name */


/* All companies whose names do not end with 's' */


/* Write a query that returns all the orders where the standard_qty is over 1000, the poster_qty is 0, and
the gloss_qty is 0 */

/* Using the accounts table, find all the companies whose names do not start with 'C' and end with 's' */

/* When you use the BETWEEN operator in SQL, do the results include the values of your endpoints, or not?
Figure out the answer to this important question by writing a query that displays the order date and
gloss_qty data for all orders where gloss_qty is between 24 and 29. Then look at your output to see if the
BETWEEN operator included the begin and end values or not */

/* You should notice that there are a number of rows in the output of this query where the gloss_qty values
are 24 or 29. So the answer to the question is that yes, the BETWEEN operator in SQL is inclusive; that is,
the endpoint values are included. So the BETWEEN statement in this query is equivalent to having written
"WHERE gloss_qty >= 24 AND gloss_qty <= 29." */

/* Use the web_events table to find all information regarding individuals who were contacted via the
organic or adwords channels, and started their account at any point in 2016, sorted from newest to oldest */




/* Use the web_events table to find all information regarding individuals who were contacted via any method
except using organic or adwords methods. */



/* You will notice that using BETWEEN is tricky for dates! While BETWEEN is generally inclusive of
endpoints, it assumes the time is at 00:00:00 (i.e. midnight) for dates. This is the reason why we set the
right-side endpoint of the period at '2017-01-01' */



/* Find list of orders ids where either gloss_qty or poster_qty is greater than 4000. Only include the id
field in the resulting table */



/* Write a query that returns a list of orders where the standard_qty is zero and either the gloss_qty or
poster_qty is over 1000 */



/* Find all the company names that start with a 'C' or 'W', and the primary contact contains 'ana' or
'Ana', but it doesn't contain 'eana' */




/*
        SQL JOINS
*/

/* Try pulling all the data from the accounts table, and all the data from the orders table */

/* Try pulling standard_qty, gloss_qty, and poster_qty from the orders table, and the website and the
primary_poc from the accounts table */

/* Provide a table for all web_events associated with account name of Walmart. There should be three
columns. Be sure to include the primary_poc, time of the event, and the channel for each event.
Additionally, you might choose to add a fourth column to assure only Walmart events were chosen */




/* Provide a table that provides the region for each sales_rep along with their associated accounts. Your
final table should include three columns: the region name, the sales rep name, and the account name. Sort
the accounts alphabetically (A-Z) according to account name */
