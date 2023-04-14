CREATE TABLE student_courses (
  studentid INTEGER,
  course VARCHAR(10),
  grade FLOAT DEFAULT NULL,
  FOREIGN KEY(studentid) REFERENCES students(id),
  FOREIGN KEY(course) REFERENCES courses(code)
);

-- Fred Flintstone
INSERT INTO student_courses VALUES (
  (SELECT id FROM students WHERE firstname="Fred" AND lastname='Flintstone'),
  "INFO330A",
  NULL
);

INSERT INTO student_courses VALUES (
  (SELECT id FROM students WHERE firstname="Fred" AND lastname='Flintstone'),
  "INFO448A",
  NULL
);

INSERT INTO student_courses VALUES (
  (SELECT id FROM students WHERE firstname="Fred" AND lastname='Flintstone'),
  "INFO314",
  NULL
);

-- Barney Rubble
INSERT INTO student_courses VALUES (
  (SELECT id FROM students WHERE firstname="Barney" AND lastname='Rubble'),
  "INFO330A",
  NULL
);

INSERT INTO student_courses VALUES (
  (SELECT id FROM students WHERE firstname="Barney" AND lastname='Rubble'),
  "INFO449A",
  NULL
);

-- Wilma Flintstone
INSERT INTO student_courses VALUES (
  (SELECT id FROM students WHERE firstname="Wilma" AND lastname='Flintstone'),
  "BAW010",
  NULL
);

INSERT INTO student_courses VALUES (
  (SELECT id FROM students WHERE firstname="Wilma" AND lastname='Flintstone'),
  "BAW100",
  NULL
);

-- Betty Rubble
INSERT INTO student_courses VALUES (
  (SELECT id FROM students WHERE firstname="Betty" AND lastname='Rubble'),
  "BAW010",
  NULL
);
