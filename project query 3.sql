use project;
select * from [dbo].[menu_items];
select * from [dbo].[order_details];

--1 combining the order details and menu items tables
select * from [dbo].[order_details] od left join
[dbo].[menu_items] mi
on od.item_id = mi.menu_item_id;

--least and most item id
select count(item_id) as num, item_name,category from(
select * from [dbo].[order_details] od left join
[dbo].[menu_items] mi
on od.item_id = mi.menu_item_id) as trans
group by item_name,category
order by count(item_id);

SELECT 
    od.order_id,
    SUM(mi.price) AS order_total
FROM [dbo].[order_details] od
LEFT JOIN [dbo].[menu_items] mi
ON od.item_id = mi.menu_item_id
GROUP BY od.order_id
ORDER BY order_total desc;

--5 looking at the highest order
SELECT *
FROM [dbo].[order_details] od
LEFT JOIN [dbo].[menu_items] mi
ON od.item_id = mi.menu_item_id
WHERE od.order_id = 440;