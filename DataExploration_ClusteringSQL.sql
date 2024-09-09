select * from churned_df cd 

-- thinking about and exploring things i was to know about current customers v those who have left

--AVG LENGTH BEING A CUSTOMER (IN MONTHS) for churned customer
--SHOULD THIS BE CONVERTED TO YEARS?
SELECT AVG(account_length) as avg_service_len
from churned_df cd 
-- about 18 months

--avg length of service - non-churned/current cusomers
SELECT avg(account_length) AS avg_service_len
FROM non_churned_df ncd 

--about 36 months

-- conclusion: current customer on avg have longer service, duh, shoukd check that data is reasonable though

__________________________________________________________

--average monthly charge--

--churned
SELECT avg(monthly_charge)
FROM churned_df cd 

--about 36
--current customer
SELECT avg(monthly_charge)
FROM non_churned_df ncd 

--about 29

-- current customers pay about 7 dollars less than the customers that churned
-- paying more could be a reason they left

__________________________________________________________

-- avg number of customer service calls--

--churned
SELECT avg(customer_service_calls)
FROM churned_df cd 

--about 2

--current customer
SELECT avg(customer_service_calls)
FROM non_churned_df ncd  

--less than 1 (~.4)

--seems churned customers have more interations with customer service than current
--how can be determine if this different is significant?

__________________________________________________________

