create database Ola;
use Ola;
select count(*) from ola;

-- 1. Retrieve all successful ola: 
select * from ola where Booking_status = "success";

-- 2. Find the average ride distance for each vehicle type:
select vehicle_Type, avg(Ride_Distance) as avg_distance from ola group by 1 order by 2;

-- 3. Get the total number of cancelled rides by customers:
select count(*) from ola where Booking_status = "Canceled by Customer";

-- 4. List the top 5 customers who booked the highest number of rides:
select Customer_ID, count(*) as total_rides from ola group by 1 order by 2 desc limit 5;

-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
select count(*) from ola where Canceled_Rides_by_Driver = "Personal & Car related issue";

-- 6. Find the maximum and minimum driver ratings for Prime Sedan ola:
select max(Driver_Ratings) as Max_Driver_Rating, min(Driver_Ratings) as Min_Driver_Rating from ola where Vehicle_Type = "Prime Sedan";

-- 7. Retrieve all rides where payment was made using UPI:
select * from ola where Payment_Method = "UPI";

-- 8. Find the average customer rating per vehicle type:
select Vehicle_Type, round(avg(Customer_Rating),2) from ola group by Vehicle_Type; 

-- 9. Calculate the total booking value of rides completed successfully:
select sum(Booking_Value) as Total_Booking_value from ola where Booking_Status = "Success";

-- 10. List all incomplete rides along with the reason:
select Booking_ID,Incomplete_Rides_Reason from ola where Incomplete_Rides = "Yes";

