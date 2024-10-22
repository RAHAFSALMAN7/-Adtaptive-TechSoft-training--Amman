CREATE TABLE patients (
    patient_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    admission_date DATE,
    diagnosis VARCHAR2(100),
    doctor_assigned VARCHAR2(50),
    room_number NUMBER
);
  