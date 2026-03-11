Use project;

--1. view the menu items table
select * from [dbo].[menu_items];

--2 no of items in the menu
select count(*) from [dbo].[menu_items];

--3 what are the least and most expesive 
select [item_name],[price] from [dbo].[menu_items]
order by price;

--4 no of italian dishes in the menu
select count(*) from [dbo].[menu_items]
Where category = 'mexican'; 

--5 least and most expensive dishes
select * from [dbo].[menu_items]
Where category = 'itallian'
order by price;

--6 HO MANY DISHES IN EACH CATEGORY
select count([item_name]) as no_of_items, category from [dbo].[menu_items]
group by category;

--7 avg price for each category
select avg([price]) as avg_price, category from [dbo].[menu_items]
group by category;
