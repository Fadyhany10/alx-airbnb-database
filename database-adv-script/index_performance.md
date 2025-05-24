# 📈 SQL Indexing for Performance Optimization

## 🎯 Objective

Improve the performance of queries by identifying high-usage columns in the `User`, `Booking`, `Property`, and `Review` tables and creating indexes accordingly.

---

## 🔍 Step 1: Identify High-Usage Columns

Based on query patterns (e.g., `WHERE`, `JOIN`, `ORDER BY`), the following columns are frequently accessed:

### 🧑‍💻 Users Table
- `id` — used in JOINs with `bookings.user_id`

### 🧾 Bookings Table
- `user_id` — used in JOINs and filtering
- `property_id` — used in JOINs with properties
- `booking_date` — used in filtering/sorting

### 🏘️ Properties Table
- `id` — used in JOINs with `bookings.property_id`
- `name` — potentially used in `ORDER BY` or search

### 📝 Reviews Table
- `property_id` — used in JOINs
- `rating` — used in filtering or aggregation

---

## ⚙️ Step 2: Create Indexes

The following SQL commands are included in `database_index.sql` to create appropriate indexes:

```sql
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

```
