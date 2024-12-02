# Database Indexing for Performance Optimization

## Objective:
Identify and create indexes to improve query performance.

## Identified Columns for Indexing:
1. **User Table**:
   - `email` (frequently queried in `WHERE` clauses)
2. **Booking Table**:
   - `user_id` (foreign key, used in `JOIN`)
   - `property_id` (foreign key, used in `JOIN`)
   - `start_date`, `end_date` (used in date range queries)
3. **Property Table**:
   - `location` (frequently filtered by)
   - `pricepernight` (used for sorting and filtering)


