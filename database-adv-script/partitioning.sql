
CREATE TABLE Booking (
    booking_id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    amount DECIMAL(10, 2)
) PARTITION BY RANGE (start_date);


CREATE TABLE Booking_2020 PARTITION OF Booking
    FOR VALUES FROM ('2020-01-01') TO ('2021-01-01');

CREATE TABLE Booking_2021 PARTITION OF Booking
    FOR VALUES FROM ('2021-01-01') TO ('2022-01-01');

CREATE TABLE Booking_2022 PARTITION OF Booking
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');


CREATE INDEX idx_booking_2020_start_date ON Booking_2020 (start_date);
CREATE INDEX idx_booking_2021_start_date ON Booking_2021 (start_date);
CREATE INDEX idx_booking_2022_start_date ON Booking_2022 (start_date);


EXPLAIN ANALYZE
SELECT booking_id, user_id, property_id, start_date, end_date, amount
FROM Booking
WHERE start_date BETWEEN '2021-06-01' AND '2021-06-30';



EXPLAIN ANALYZE
SELECT booking_id, user_id, property_id, start_date, end_date, amount
FROM Booking
WHERE start_date BETWEEN '2021-06-01' AND '2021-06-30';
