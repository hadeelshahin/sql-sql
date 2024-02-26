SELECT SUM(amount_billed)
FROM bookings;
SELECT AVG(num_guests)
FROM bookings;
SELECT ROUND(AVG(num_guests),2)
FROM bookings;