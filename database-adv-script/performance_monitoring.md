# 📈 Database Performance Monitoring and Refinement Report

## 🎯 Objective

Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

---

## 🧪 Step 1: Monitor Query Performance Using EXPLAIN ANALYZE

```sql
EXPLAIN ANALYZE
SELECT 
    b.id, b.start_date, b.end_date, b.status, u.name, u.email
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.id
WHERE 
    b.status = 'confirmed'
    AND b.start_date >= '2024-01-01';
-- Add an index on status and start_date for filtering
CREATE INDEX idx_bookings_status_start_date 
ON bookings(status, start_date);

-- Add an index on user_id to speed up join
CREATE INDEX idx_bookings_user_id 
ON bookings(user_id);

EXPLAIN ANALYZE
SELECT 
    b.id, b.start_date, b.end_date, b.status, u.name, u.email
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.id
WHERE 
    b.status = 'confirmed'
    AND b.start_date >= '2024-01-01';
```
