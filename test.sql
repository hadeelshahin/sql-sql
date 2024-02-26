SELECT booking_date,
    amount_tipped,
    RANK() OVER(
        PARTITION BY booking_date
        ORDER BY amount_billed
    )
FROM bookings