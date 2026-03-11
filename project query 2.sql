--1 viwing data from table
use project;
select * from [dbo].[order_details];
-- what is the date range of the table
select min([order_date]) from [dbo].[order_details];
select min([order_date]) from [dbo].[order_details];

--3. how many order ere made in this range
select count(distinct [order_id]) from [dbo].[order_details];

--4 how many items were order
select count(*) from [dbo].[order_details] ;

--5 which order had the most no of items
SELECT 
    [order_id],
    COUNT([order_details_id]) AS item_count
FROM [dbo].[order_details]
GROUP BY [order_id]
order by COUNT([order_details_id]) desc;

--6 how many order had more than 12 items
SELECT count(*)
FROM (
    SELECT 
        [order_id],
        COUNT([item_id]) AS item_count
    FROM [dbo].[order_details]
    GROUP BY [order_id]
) AS order_counts
WHERE item_count > 12;