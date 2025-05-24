# 📘 SQL Joins Practice

## 🎯 Objective

The goal of this project is to **master SQL JOINs** by writing and understanding complex queries using different types of JOINs.

---

## 📂 Tables Used

- `users`: Contains user information.
- `bookings`: Contains booking records made by users.
- `properties`: Contains listed properties available for booking.
- `reviews`: Contains reviews submitted for properties.

---

## 🧩 JOIN Queries

### 1. 🔄 INNER JOIN — Bookings with Users

**Query**: Retrieve all bookings and the respective users who made those bookings.

```sql
SELECT 
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.booking_date,
    users.id AS user_id,
    users.name AS user_name,
    users.email
FROM 
    bookings
INNER JOIN 
    users ON bookings.user_id = users.id;
```
