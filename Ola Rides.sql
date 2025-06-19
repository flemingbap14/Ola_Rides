create database Ola;
Use Ola;

#1. Retrieve all successful bookings:

create view Booking_Successful as
select * from bookings where Booking_Status ='Success';

select * from Booking_Successful;


#2. Find the average ride distance for each vehicle type:

create view Avg_Distance as
select Vehicle_Type, Avg(Ride_Distance) as avg_distance from bookings 
group by Vehicle_Type;
select * from Avg_Distance;

#3. Get the total number of cancelled rides by customers:
 
 create view Total_Cancelled as 
 select count(*) from bookings where Booking_Status = 'Canceled by Customer';
 select * from Total_Cancelled;
 
 #4. List the top 5 customers who booked the highest number of rides:
 
Create View Top_5_Customers As
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;

Select * from Top_5_Customers;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:

Create view Ride_cancelled_by_driver as
select count(*) from bookings where Canceled_Rides_by_Driver = 'Personal & Car related issue';
select * from Ride_cancelled_by_driver;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

create view Max_and_Min_Driver_Rating as
SELECT MAX(Driver_Ratings) as max_rating, MIN(Driver_Ratings) as min_rating FROM
bookings WHERE Vehicle_Type = 'Prime Sedan';
Select * from Max_and_Min_Driver_Rating;

#7. Retrieve all rides where payment was made using UPI:

Create view Rides_Payment as
select * from bookings where Payment_Method = 'UPI';
select * from Rides_Payment;

#8. Find the average customer rating per vehicle type:

create view Avg_Customer_rating as
select Vehicle_Type, Avg(Customer_Rating) as avg_customer_ratings from bookings 
group by Vehicle_Type;

select * from Avg_Customer_rating;

#9. Calculate the total booking value of rides completed successfully:

create view Total_Booking_value as
select sum(Booking_value) as total_booking_value from bookings
where Booking_status = 'Success';
select * from Total_Booking_value;

#10. List all incomplete rides along with the reason:

create view Incomplete_rides as 
select Booking_ID, Incomplete_Rides_Reason from bookings where Incomplete_Rides = 'Yes';
select * from Incomplete_rides;


#1. Retrieve all successful bookings:
Select * From Booking_Successful;

#2. Find the average ride distance for each vehicle type:
Select * from Avg_Distance;

#3. Get the total number of cancelled rides by customers:
Select * from Total_Cancelled;

#4. List the top 5 customers who booked the highest number of rides:
Select * from Top_5_Customers;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Select * from Ride_cancelled_by_driver;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select * from Max_and_Min_Driver_Rating;

#7. Retrieve all rides where payment was made using UPI:
Select * from Rides_Payment;

#8. Find the average customer rating per vehicle type:
Select * from Avg_Customer_rating;

#9. Calculate the total booking value of rides completed successfully:
Select * from Total_Booking_value;

#10. List all incomplete rides along with the reason:
Select * from Incomplete_rides;


