INSERT INTO Department (Dep_PK, Field) VALUES
('D001', '개발팀'),
('D002', '인사팀'),
('D003', '재무팀');

INSERT INTO Auth_Names (Auth_PK, Auth_Name) VALUES
('A001', '관리자'),
('A002', '사용자'),
('A003', '게스트');

INSERT INTO Employees (Emp_PK, Dep_FK, Field, Password, Email, Job) VALUES
('E001', 'D001', '개발', 'password1', 'employee1@example.com', '개발자'),
('E002', 'D001', '개발', 'password2', 'employee2@example.com', '개발자'),
('E003', 'D002', '인사', 'password3', 'employee3@example.com', '인사담당자'),
('E004', 'D002', '인사', 'password4', 'employee4@example.com', '인사담당자'),
('E005', 'D003', '재무', 'password5', 'employee5@example.com', '재무담당자');

INSERT INTO Auths (Auths_PK, Auth_FK, Emp_FK) VALUES
('AU001', 'A001', 'E001'),
('AU002', 'A001', 'E002'),
('AU003', 'A002', 'E003'),
('AU004', 'A002', 'E004'),
('AU005', 'A003', 'E005');

INSERT INTO TimeAttendance (TA_PK, Emp_FK, Workday, Status) VALUES
('TA001', 'E001', '2023-08-01', '출근'),
('TA002', 'E001', '2023-08-02', '출근'),
('TA003', 'E001', '2023-08-03', '결근'),
('TA004', 'E002', '2023-08-01', '출근'),
('TA005', 'E002', '2023-08-02', '휴가'),
('TA006', 'E002', '2023-08-03', '출근'),
('TA007', 'E003', '2023-08-01', '출근'),
('TA008', 'E003', '2023-08-02', '출근'),
('TA009', 'E003', '2023-08-03', '결근'),
('TA010', 'E004', '2023-08-01', '휴가'),
('TA011', 'E004', '2023-08-02', '출근'),
('TA012', 'E004', '2023-08-03', '출근'),
('TA013', 'E005', '2023-08-01', '출근'),
('TA014', 'E005', '2023-08-02', '출근'),
('TA015', 'E005', '2023-08-03', '휴가');