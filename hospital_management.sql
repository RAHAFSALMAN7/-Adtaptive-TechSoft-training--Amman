CREATE TABLE patients (
    patient_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    admission_date DATE,
    diagnosis VARCHAR2(100),
    doctor_assigned VARCHAR2(50),
    room_number NUMBER
);
 INSERT INTO patients (patient_id, first_name, last_name, admission_date, diagnosis, doctor_assigned, room_number) 
VALUES (101, 'John', 'Doe', TO_DATE('2024-10-15', 'YYYY-MM-DD'), 'Diabetes', 'Dr. Smith', 302);

INSERT INTO patients (patient_id, first_name, last_name, admission_date, diagnosis, doctor_assigned, room_number) 
VALUES (102, 'Jane', 'Doe', TO_DATE('2024-10-16', 'YYYY-MM-DD'), 'Fracture', 'Dr. Adams', 303);
SELECT patient_id, first_name, last_name, diagnosis 
FROM patients 
WHERE doctor_assigned = 'Dr. Smith';
BEGIN
   FOR patient IN (SELECT patient_id FROM patients WHERE room_number = 302) LOOP
       UPDATE patients
       SET diagnosis = 'Under Observation'
       WHERE patient_id = patient.patient_id;
   END LOOP;
END;
/
SELECT doctor_assigned, COUNT(patient_id) AS number_of_patients
FROM patients
GROUP BY doctor_assigned;
