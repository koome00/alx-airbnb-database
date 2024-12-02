EXPLAIN SELECT * FROM Booking b 
JOIN Property p ON b.property_id = p.property_id
WHERE p.location = 'New York'
ORDER BY b.start_date;


CREATE INDEX idx_user_email ON User (email);


CREATE INDEX idx_booking_user_id ON Booking (user_id);
CREATE INDEX idx_booking_property_id ON Booking (property_id);
CREATE INDEX idx_booking_dates ON Booking (start_date, end_date);


CREATE INDEX idx_property_location ON Property (location);
CREATE INDEX idx_property_price ON Property (pricepernight);


EXPLAIN SELECT * FROM Booking b 
JOIN Property p ON b.property_id = p.property_id
WHERE p.location = 'New York'
ORDER BY b.start_date;
