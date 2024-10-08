INSERT INTO `department` (`dep_id`, `dep_name`)
VALUES ('D001', '인사부'),
       ('D002', '마케팅부'),
       ('D003', 'IT부');

-- 인사부
INSERT INTO `employee` (`emp_id`, `dep_id`, `emp_name`, `emp_pw`, `emp_email`)
VALUES ('E001', 'D001', '앨리스', 'pw001', 'alice@example.com'),
       ('E002', 'D001', '밥', 'pw002', 'bob@example.com'),
       ('E003', 'D003', '찰리', 'pw003', 'charlie@example.com'),
       ('E004', 'D002', '데이비드', 'pw004', 'david@example.com'),
       ('E005', 'D002', '에바', 'pw005', 'eva@example.com'),
       ('E006', 'D003', '프랭크', 'pw006', 'frank@example.com'),
       ('E007', 'D002', '그레이스', 'pw007', 'grace@example.com'),
       ('E008', 'D002', '헨리', 'pw008', 'henry@example.com'),
       ('E009', 'D003', '아이다', 'pw009', 'ida@example.com');


-- 근태 데이터 입력 -- -- 근태 데이터 입력 -- -- 근태 데이터 입력 -- -- 근태 데이터 입력 --

INSERT INTO `attend` (`emp_id`, `workdate`, `status`)
VALUES ('E001', '2024-08-01', '출근'),
       ('E001', '2024-08-02', '출근'),
       ('E001', '2024-08-03', '출근'),
       ('E001', '2024-08-05', '출근'),
       ('E001', '2024-08-06', '출근'),
       ('E001', '2024-08-07', '출근'),
       ('E001', '2024-08-08', '출근'),
       ('E001', '2024-08-09', '출근'),
       ('E001', '2024-08-12', '출근'),
       ('E001', '2024-08-13', '출근'),
       ('E001', '2024-08-14', '출근'),
       ('E001', '2024-08-15', '출근'),
       ('E001', '2024-08-16', '출근'),
       ('E001', '2024-08-19', '출근'),
       ('E001', '2024-08-20', '출근'),
       ('E001', '2024-08-21', '출근'),
       ('E001', '2024-08-22', '출근'),
       ('E001', '2024-08-23', '결근'),
       ('E001', '2024-08-26', '출근'),
       ('E001', '2024-08-27', '출근'),
       ('E001', '2024-08-28', '출근'),
       ('E001', '2024-08-29', '휴가'),
       ('E001', '2024-08-30', '휴가'),
       ('E001', '2024-08-31', '출근');

INSERT INTO `attend` (`emp_id`, `workdate`, `status`)
VALUES ('E002', '2024-08-01', '출근'),
       ('E002', '2024-08-02', '출근'),
       ('E002', '2024-08-03', '출근'),
       ('E002', '2024-08-05', '출근'),
       ('E002', '2024-08-06', '출근'),
       ('E002', '2024-08-07', '출근'),
       ('E002', '2024-08-08', '출근'),
       ('E002', '2024-08-09', '출근'),
       ('E002', '2024-08-12', '출근'),
       ('E002', '2024-08-13', '출근'),
       ('E002', '2024-08-14', '출근'),
       ('E002', '2024-08-15', '출근'),
       ('E002', '2024-08-16', '출근'),
       ('E002', '2024-08-19', '출근'),
       ('E002', '2024-08-20', '출근'),
       ('E002', '2024-08-21', '출근'),
       ('E002', '2024-08-22', '출근'),
       ('E002', '2024-08-23', '결근'),
       ('E002', '2024-08-26', '출근'),
       ('E002', '2024-08-27', '출근'),
       ('E002', '2024-08-28', '출근'),
       ('E002', '2024-08-29', '출근'),
       ('E002', '2024-08-30', '출근'),
       ('E002', '2024-08-31', '출근'),
       ('E003', '2024-08-01', '출근'),
       ('E003', '2024-08-02', '출근'),
       ('E003', '2024-08-03', '출근'),
       ('E003', '2024-08-05', '출근'),
       ('E003', '2024-08-06', '출근'),
       ('E003', '2024-08-07', '출근'),
       ('E003', '2024-08-08', '출근'),
       ('E003', '2024-08-09', '출근'),
       ('E003', '2024-08-12', '출근'),
       ('E003', '2024-08-13', '출근'),
       ('E003', '2024-08-14', '출근'),
       ('E003', '2024-08-15', '출근'),
       ('E003', '2024-08-16', '출근'),
       ('E003', '2024-08-19', '출근'),
       ('E003', '2024-08-20', '출근'),
       ('E003', '2024-08-21', '출근'),
       ('E003', '2024-08-22', '출근'),
       ('E003', '2024-08-23', '결근'),
       ('E003', '2024-08-26', '출근'),
       ('E003', '2024-08-27', '출근'),
       ('E003', '2024-08-28', '출근'),
       ('E003', '2024-08-29', '결근'),
       ('E003', '2024-08-30', '결근'),
       ('E003', '2024-08-31', '결근'),
       ('E004', '2024-08-01', '출근'),
       ('E004', '2024-08-02', '출근'),
       ('E004', '2024-08-03', '출근'),
       ('E004', '2024-08-05', '출근'),
       ('E004', '2024-08-06', '출근'),
       ('E004', '2024-08-07', '출근'),
       ('E004', '2024-08-08', '출근'),
       ('E004', '2024-08-09', '출근'),
       ('E004', '2024-08-12', '출근'),
       ('E004', '2024-08-13', '출근'),
       ('E004', '2024-08-14', '출근'),
       ('E004', '2024-08-15', '출근'),
       ('E004', '2024-08-16', '출근'),
       ('E004', '2024-08-19', '출근'),
       ('E004', '2024-08-20', '출근'),
       ('E004', '2024-08-21', '출근'),
       ('E004', '2024-08-22', '출근'),
       ('E004', '2024-08-23', '결근'),
       ('E004', '2024-08-26', '출근'),
       ('E004', '2024-08-27', '출근'),
       ('E004', '2024-08-28', '출근'),
       ('E004', '2024-08-29', '출근'),
       ('E004', '2024-08-30', '출근'),
       ('E004', '2024-08-31', '출근'),
       ('E005', '2024-08-01', '출근'),
       ('E005', '2024-08-02', '출근'),
       ('E005', '2024-08-03', '출근'),
       ('E005', '2024-08-05', '출근'),
       ('E005', '2024-08-06', '출근'),
       ('E005', '2024-08-07', '출근'),
       ('E005', '2024-08-08', '출근'),
       ('E005', '2024-08-09', '출근'),
       ('E005', '2024-08-12', '출근'),
       ('E005', '2024-08-13', '출근'),
       ('E005', '2024-08-14', '출근'),
       ('E005', '2024-08-15', '출근'),
       ('E005', '2024-08-16', '출근'),
       ('E005', '2024-08-19', '출근'),
       ('E005', '2024-08-20', '출근'),
       ('E005', '2024-08-21', '출근'),
       ('E005', '2024-08-22', '출근'),
       ('E005', '2024-08-23', '결근'),
       ('E005', '2024-08-26', '출근'),
       ('E005', '2024-08-27', '출근'),
       ('E005', '2024-08-28', '출근'),
       ('E005', '2024-08-29', '출근'),
       ('E005', '2024-08-30', '휴가'),
       ('E005', '2024-08-31', '결근'),
       ('E006', '2024-08-01', '출근'),
       ('E006', '2024-08-02', '출근'),
       ('E006', '2024-08-03', '출근'),
       ('E006', '2024-08-05', '출근'),
       ('E006', '2024-08-06', '출근'),
       ('E006', '2024-08-07', '출근'),
       ('E006', '2024-08-08', '출근'),
       ('E006', '2024-08-09', '출근'),
       ('E006', '2024-08-12', '출근'),
       ('E006', '2024-08-13', '출근'),
       ('E006', '2024-08-14', '출근'),
       ('E006', '2024-08-15', '출근'),
       ('E006', '2024-08-16', '출근'),
       ('E006', '2024-08-19', '출근'),
       ('E006', '2024-08-20', '출근'),
       ('E006', '2024-08-21', '출근'),
       ('E006', '2024-08-22', '출근'),
       ('E006', '2024-08-23', '결근'),
       ('E006', '2024-08-26', '출근'),
       ('E006', '2024-08-27', '출근'),
       ('E006', '2024-08-28', '출근'),
       ('E006', '2024-08-29', '휴가'),
       ('E006', '2024-08-30', '출근'),
       ('E006', '2024-08-31', '출근'),
       ('E007', '2024-08-01', '결근'),
       ('E007', '2024-08-02', '결근'),
       ('E007', '2024-08-03', '출근'),
       ('E007', '2024-08-05', '출근'),
       ('E007', '2024-08-06', '출근'),
       ('E007', '2024-08-07', '출근'),
       ('E007', '2024-08-08', '출근'),
       ('E007', '2024-08-09', '출근'),
       ('E007', '2024-08-12', '출근'),
       ('E007', '2024-08-13', '출근'),
       ('E007', '2024-08-14', '출근'),
       ('E007', '2024-08-15', '출근'),
       ('E007', '2024-08-16', '출근'),
       ('E007', '2024-08-19', '출근'),
       ('E007', '2024-08-20', '출근'),
       ('E007', '2024-08-21', '출근'),
       ('E007', '2024-08-22', '출근'),
       ('E007', '2024-08-23', '결근'),
       ('E007', '2024-08-26', '출근'),
       ('E007', '2024-08-27', '출근'),
       ('E007', '2024-08-28', '출근'),
       ('E007', '2024-08-29', '휴가'),
       ('E007', '2024-08-30', '휴가'),
       ('E007', '2024-08-31', '출근'),
       ('E008', '2024-08-01', '출근'),
       ('E008', '2024-08-02', '출근'),
       ('E008', '2024-08-03', '출근'),
       ('E008', '2024-08-05', '출근'),
       ('E008', '2024-08-06', '출근'),
       ('E008', '2024-08-07', '출근'),
       ('E008', '2024-08-08', '출근'),
       ('E008', '2024-08-09', '출근'),
       ('E008', '2024-08-12', '출근'),
       ('E008', '2024-08-13', '출근'),
       ('E008', '2024-08-14', '출근'),
       ('E008', '2024-08-15', '출근'),
       ('E008', '2024-08-16', '출근'),
       ('E008', '2024-08-19', '출근'),
       ('E008', '2024-08-20', '출근'),
       ('E008', '2024-08-21', '출근'),
       ('E008', '2024-08-22', '출근'),
       ('E008', '2024-08-23', '결근'),
       ('E008', '2024-08-26', '출근'),
       ('E008', '2024-08-27', '출근'),
       ('E008', '2024-08-28', '출근'),
       ('E008', '2024-08-29', '휴가'),
       ('E008', '2024-08-30', '휴가'),
       ('E008', '2024-08-31', '출근'),
       ('E009', '2024-08-01', '출근'),
       ('E009', '2024-08-02', '결근'),
       ('E009', '2024-08-03', '결근'),
       ('E009', '2024-08-05', '결근'),
       ('E009', '2024-08-06', '결근'),
       ('E009', '2024-08-07', '출근'),
       ('E009', '2024-08-08', '출근'),
       ('E009', '2024-08-09', '출근'),
       ('E009', '2024-08-12', '출근'),
       ('E009', '2024-08-13', '출근'),
       ('E009', '2024-08-14', '출근'),
       ('E009', '2024-08-15', '출근'),
       ('E009', '2024-08-16', '출근'),
       ('E009', '2024-08-19', '출근'),
       ('E009', '2024-08-20', '출근'),
       ('E009', '2024-08-21', '출근'),
       ('E009', '2024-08-22', '출근'),
       ('E009', '2024-08-23', '결근'),
       ('E009', '2024-08-26', '출근'),
       ('E009', '2024-08-27', '출근'),
       ('E009', '2024-08-28', '출근'),
       ('E009', '2024-08-29', '출근'),
       ('E009', '2024-08-30', '출근'),
       ('E009', '2024-08-31', '출근');

INSERT INTO `attend` (`emp_id`, `workdate`, `status`)
VALUES
    ('E001', '2024-09-01', '출근'), ('E001', '2024-09-02', '출근'), ('E001', '2024-09-03', '출근'), ('E001', '2024-09-04', '휴가'), ('E001', '2024-09-05', '출근'),
    ('E002', '2024-09-01', '출근'), ('E002', '2024-09-02', '출근'), ('E002', '2024-09-03', '출근'), ('E002', '2024-09-04', '휴가'), ('E002', '2024-09-05', '출근'),
    ('E003', '2024-09-01', '출근'), ('E003', '2024-09-02', '출근'), ('E003', '2024-09-03', '출근'), ('E003', '2024-09-04', '휴가'), ('E003', '2024-09-05', '출근'),
    ('E004', '2024-09-01', '출근'), ('E004', '2024-09-02', '출근'), ('E004', '2024-09-03', '출근'), ('E004', '2024-09-04', '휴가'), ('E004', '2024-09-05', '출근'),
    ('E005', '2024-09-01', '출근'), ('E005', '2024-09-02', '출근'), ('E005', '2024-09-03', '출근'), ('E005', '2024-09-04', '휴가'), ('E005', '2024-09-05', '출근'),
    ('E006', '2024-09-01', '출근'), ('E006', '2024-09-02', '출근'), ('E006', '2024-09-03', '결근'), ('E006', '2024-09-04', '휴가'), ('E006', '2024-09-05', '출근'),
    ('E007', '2024-09-01', '출근'), ('E007', '2024-09-02', '출근'), ('E007', '2024-09-03', '출근'), ('E007', '2024-09-04', '휴가'), ('E007', '2024-09-05', '출근'),
    ('E008', '2024-09-01', '출근'), ('E008', '2024-09-02', '출근'), ('E008', '2024-09-03', '출근'), ('E008', '2024-09-04', '휴가'), ('E008', '2024-09-05', '출근'),
    ('E009', '2024-09-01', '출근'), ('E009', '2024-09-02', '결근'), ('E009', '2024-09-03', '결근'), ('E009', '2024-09-04', '휴가'), ('E009', '2024-09-05', '출근');

INSERT INTO `attend` (`emp_id`, `workdate`, `status`)
VALUES
    ('E001', '2024-09-06', '휴가'), ('E001', '2024-09-07', '출근'), ('E001', '2024-09-08', '결근'),
    ('E002', '2024-09-06', '출근'), ('E002', '2024-09-07', '결근'), ('E002', '2024-09-08', '휴가'),
    ('E003', '2024-09-06', '결근'), ('E003', '2024-09-07', '출근'), ('E003', '2024-09-08', '휴가'),
    ('E004', '2024-09-06', '출근'), ('E004', '2024-09-07', '휴가'), ('E004', '2024-09-08', '출근'),
    ('E005', '2024-09-06', '휴가'), ('E005', '2024-09-07', '출근'), ('E005', '2024-09-08', '결근'),
    ('E006', '2024-09-06', '출근'), ('E006', '2024-09-07', '결근'), ('E006', '2024-09-08', '출근'),
    ('E007', '2024-09-06', '결근'), ('E007', '2024-09-07', '휴가'), ('E007', '2024-09-08', '출근'),
    ('E008', '2024-09-06', '출근'), ('E008', '2024-09-07', '출근'), ('E008', '2024-09-08', '휴가'),
    ('E009', '2024-09-06', '휴가'), ('E009', '2024-09-07', '결근'), ('E009', '2024-09-08', '출근');