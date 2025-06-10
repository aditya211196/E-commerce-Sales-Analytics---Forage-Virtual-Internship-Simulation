/*Top 10 Countries Revenue*/
select top 10 Country,round(sum(UnitPrice*Quantity)/1000,0)as Revenue_in_1000s,round(sum(Quantity)/1000,0) as Tot_Qty_in_1000s
from Retail_Mode
where Country !='United Kingdom'
group by Country
order by Revenue_in_1000s desc;

/*Top 10 Spending Customers*/
select top 10 CustomerID,round(sum(UnitPrice*Quantity)/1000,0)as Revenue_in_1000s
from Retail_Mode
where customerID is not null
group by CustomerID
order by Revenue_in_1000s desc;



/*Top 10 countries by demand*/
select top 10 Country,round(sum(Quantity)/1000,2)as Rev_in_1000s
from Retail_Mode
where Country!='United Kingdom'
group by Country
order by Rev_in_1000s desc;

