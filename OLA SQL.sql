create database Ola;
Use Ola;

#1. Retrieve all successful bookings:

create view Successful_booking as
select * from bookings where Booking_Status = 'Success';

select * from Successful_booking;

#2. Find the average ride distance for each vehicle type:
Create view ride_distance_for_each_vehicle as
Select Vehicle_Type, AVG(Ride_Distance) as Average_distance from bookings group by Vehicle_Type;

select * from ride_distance_for_each_vehicle;

#3. Get the total number of cancelled rides by customers:
create view cancelled_rides_by_customers as
select count(*) from bookings where Booking_Status =  'Canceled by Customer';

select * from cancelled_rides_by_customers;

#4. List the top 5 customers who booked the highest number of rides:
Create view highest_number_of_rides as
Select Customer_ID, count(Booking_ID) as total_rides from bookings group by Customer_ID order by total_rides desc limit 5;


select * from highest_number_of_rides;


#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
create view cancelled_by_drivers_due_to_personal_and_car_related_issues as
select count(*) as cnc_per_car_issues from bookings where Canceled_Rides_by_Driver = 'Personal & Car related issue';

select * from cancelled_by_drivers_due_to_personal_and_car_related_issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select max(Driver_Ratings), Min(Driver_Ratings) from bookings where Vehicle_Type = 'Prime Sedan';

#7. Retrieve all rides where payment was made using UPI:
Select * from bookings where Payment_Method = 'UPI';
#8. Find the average customer rating per vehicle type:
select Vehicle_Type, AVG(Customer_Rating) as average_customer_rating from bookings group by Vehicle_Type;

#9. Calculate the total booking value of rides completed successfully:
Select Sum(Booking_Value) as total_successful_value from bookings where Booking_Status = 'Success';

#10. List all incomplete rides along with the reason:
SELECT Booking_ID, Incomplete_Rides_Reason FROM bookings WHERE Incomplete_Rides =
'Yes';









