-- Users table
CREATE INDEX idx_users_id ON users(id);

-- Bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_booking_date ON bookings(booking_date);

-- Properties table
CREATE INDEX idx_properties_id ON properties(id);
CREATE INDEX idx_properties_name ON properties(name);

-- Reviews table
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
CREATE INDEX idx_reviews_rating ON reviews(rating);

EXPLAIN ANALYZE
SELECT 
    u.name, COUNT(*) AS total_bookings
FROM 
    users u
JOIN 
    bookings b ON u.id = b.user_id
GROUP BY 
    u.name
ORDER BY 
    total_bookings DESC;
