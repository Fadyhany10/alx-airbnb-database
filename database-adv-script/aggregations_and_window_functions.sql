SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM 
    bookings
GROUP BY 
    user_id;


SELECT 
    property_id,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM (
    SELECT 
        property_id,
        COUNT(*) AS total_bookings
    FROM 
        bookings
    GROUP BY 
        property_id
) AS ranked_properties;


SELECT 
    property_id,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS booking_row_number
FROM (
    SELECT 
        property_id,
        COUNT(*) AS total_bookings
    FROM 
        bookings
    GROUP BY 
        property_id
) AS numbered_properties;

