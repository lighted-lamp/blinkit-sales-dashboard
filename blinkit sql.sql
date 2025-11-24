select * from Blinkit_grocery_data

update Blinkit_grocery_data
set Item_Fat_Content= 'Low Fat'
where Item_Fat_Content in ('LF','low fat')

select * from Blinkit_grocery_data

update Blinkit_grocery_data
set Item_Fat_Content= 'Regular'
where Item_Fat_Content= 'reg'

select * from Blinkit_grocery_data

select distinct(Item_Fat_Content) from Blinkit_grocery_data

select cast(sum(sales)/1000000 as decimal(10,2)) as Total_Sales_Millions
from Blinkit_grocery_data

select cast(avg(sales) as decimal(10,0)) as Avg_sales
from Blinkit_grocery_data

select count(*) as No_of_items from Blinkit_grocery_data

select * from Blinkit_grocery_data

select cast(sum(sales)/1000000 as decimal(10,2)) as Total_Sales_Millions
from Blinkit_grocery_data
where Outlet_Establishment_Year=2022

select cast(avg(sales) as decimal(10,1)) as Avg_sales
from Blinkit_grocery_data
where Outlet_Establishment_Year=2022

select count(*) from Blinkit_grocery_data
where Outlet_Establishment_Year=2022

select cast(avg(Rating) as decimal(10,2)) as Avg_rating from Blinkit_grocery_data

select count(*) from Blinkit_grocery_data
where Item_Fat_Content='Low Fat'

select count(*) from Blinkit_grocery_data
where Item_Fat_Content='Regular'

select Item_Fat_Content,
       cast(sum(sales)/1000 as decimal(10,2)) as Total_Sales_in_thousands,
	   cast(avg(sales) as decimal(10,1)) as Avg_Sales,
	   count(*) as Total_items_sold,
	   cast(avg(Rating) as decimal(10,2)) as Avg_rating
from Blinkit_grocery_data
group by Item_Fat_Content

select * from Blinkit_grocery_data

select distinct(Item_Type) from Blinkit_grocery_data

select Item_Type,
       cast(sum(sales) as decimal(10,2)) as Total_Sales,
	   cast(avg(sales) as decimal(10,1)) as Avg_Sales,
	   count(*) as Total_items_sold,
	   cast(avg(Rating) as decimal(10,2)) as Avg_rating
from Blinkit_grocery_data
group by Item_Type
order by Total_Sales Desc

select * from Blinkit_grocery_data

select Item_Fat_Content,Outlet_Location_Type,
       cast(sum(sales) as decimal(10,2)) as Total_Sales,
	   cast(avg(sales) as decimal(10,1)) as Avg_Sales,
	   count(*) as Total_items_sold,
	   cast(avg(Rating) as decimal(10,2)) as Avg_rating
from Blinkit_grocery_data
group by Item_Fat_Content,Outlet_Location_Type
order by Total_Sales Desc

select Outlet_Establishment_Year,
       cast(sum(sales) as decimal(10,2)) as Total_sales
from Blinkit_grocery_data
group by Outlet_Establishment_Year
order by Total_sales desc

select	Outlet_Size,
	    cast(sum(sales) as decimal(10,2)) as Total_sales,
		cast((sum(sales)*100/sum(sum(sales)) over()) as decimal(10,2)) as Sales_percentage
from Blinkit_grocery_data
group by Outlet_Size
order by Total_sales

select Outlet_Location_Type,
       cast(sum(sales) as decimal(10,2)) as Total_Sales,
	   cast(avg(sales) as decimal(10,1)) as Avg_Sales,
	   count(*) as Total_items_sold,
	   cast(avg(Rating) as decimal(10,2)) as Avg_rating
from Blinkit_grocery_data
group by Outlet_Location_Type
order by Total_Sales Desc

select Outlet_Type,
       cast(sum(sales) as decimal(10,2)) as Total_Sales,
	   cast(avg(sales) as decimal(10,1)) as Avg_Sales,
	   count(*) as Total_items_sold,
	   cast(avg(Rating) as decimal(10,2)) as Avg_rating
from Blinkit_grocery_data
group by Outlet_Type
order by Total_Sales Desc


















