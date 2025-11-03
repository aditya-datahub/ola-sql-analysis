create database Ola;
use Ola;

select * from bookings limit 10;

select count(*) as total_counts from bookings;

-- 1. Retrieve all successful bookings:
create View Successful_Bookings As
 Select * from bookings 
 where Booking_Status = 'Success';
 
 Select * from Successful_Bookings;

-- 2. Find the average ride distance for each vehicle type:
Select 
	Vehicle_Type, round(avg(Ride_Distance), 2) as avg_ride_distance 
from bookings
group by Vehicle_Type;

-- 3. Get the total number of cancelled rides by customers:
Create View Canceled_rides_by_customers As
Select 
	count(*) as cancelled_rides 
from bookings 
where Booking_Status = 'Canceled by Driver';

select * from Canceled_rides_by_customers;

-- 4. Lis the top 5 customers who booked the highest number of rides:
create View Top_5 AS
Select Customer_ID, count(Booking_ID) as total_rides from bookings 
group by Customer_ID
order by total_rides desc
limit 5;

Select * from Top_5;

-- 5. Get the number of rides canceled by drivers due to personal and acr related issues:
Create view Canceled_Rides_by_Driver As
Select 
	count(*) as Canceled_rides_By_Drivers
from bookings 
where Canceled_Rides_by_Driver = 'Personal & Car related issue';

Select * from Canceled_Rides_by_Driver;

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select 
	max(Driver_Ratings) as Max_Ratings ,
    min(Driver_Ratings) as Min_Ratings
from bookings 
where Vehicle_Type = 'Prime Sedan'; 

-- 7. Retrieve all rides where paymet was made using UPI:
Select * from bookings 
where Payment_Method = 'UPI';

-- 8. Find the average customer rating per vehicle type :
Select 
	Vehicle_Type, round(avg(Customer_Rating), 2) as avg_customer_rating
from bookings
group by Vehicle_Type
order by avg_customer_rating desc;

-- 9. Calculate the total booking avlue of rides completed successfully:
Select Sum(Booking_Value) as total_successful_value
from bookings
where Booking_Status='Success';

-- 10. List all incomplete rides along with the reason:
Create View Incomplete_Rides_Reason As
Select Booking_ID, Incomplete_Rides_Reason 
from bookings
where Incomplete_Rides='Yes';

Select * from Incomplete_Rides_Reason;

