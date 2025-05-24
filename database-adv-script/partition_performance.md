# 📊 Booking Table Partitioning Report

## 🎯 Objective
Optimize query performance on the `bookings` table by implementing partitioning based on the `start_date` column.

---

## 🔧 Partitioning Strategy

- Used **RANGE partitioning** on the `start_date` column.
- Created yearly partitions: `bookings_2023`, `bookings_2024`, `bookings_2025`.

---

## 🧪 Performance Comparison

### Before Partitioning
Query:
```sql
SELECT * FROM bookings WHERE start_date BETWEEN '2024-06-01' AND '2024-06-30';
