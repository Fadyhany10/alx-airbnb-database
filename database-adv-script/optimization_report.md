# 🚀 SQL Query Optimization Report

## 🎯 Objective

Refactor a complex SQL query that retrieves bookings with user, property, and payment details to improve performance.

---

## 🧾 Initial Query

```sql
SELECT 
    b.id AS booking_id,
    b.booking_date,
    u.id AS user_id,
    u.name AS user_name,
    u.email AS user_email,
    p.id AS property_id,
    p.name AS property_name,
    p.location,
    pay.id AS payment_id,
    pay.amount,
    pay.status
FROM 
    bookings b
JOIN 
    users u ON b.user_id = u.id
JOIN 
    properties p ON b.property_id = p.id
JOIN 
    payments pay ON b.id = pay.booking_id;
