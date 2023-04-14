CREATE TABLE courses (
  code VARCHAR(40) NOT NULL PRIMARY KEY CHECK (length(code) >= 7),
  description VARCHAR(400),
  start DATE NOT NULL,
  end DATE NOT NULL CHECK (end > start)
);

INSERT OR IGNORE INTO courses (code, start, end, description)
VALUES 
  ('INFO330A', '04-01-2023', '06-01-2023', 'Data and databases'),
  ('INFO314', '04-01-2023', '06-01-2023', 'Networking and distributed Systems'),
  ('INFO448A', '09-25-2023', '12-19-2023', 'Introduction to iOS'),
  ('INFO449A', '09-25-2023', '12-19-2023', 'Introduction to Android'),
  ('BAW010', '04-01-2023', '06-01-2023', 'Introduction to Basket-Weaving'),
  ('BAW100A', '04-01-2023', '06-01-2023', 'Underwater Basket-Weaving');

