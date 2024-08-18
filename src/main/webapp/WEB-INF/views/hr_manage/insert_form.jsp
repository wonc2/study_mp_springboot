<%--
  Created by IntelliJ IDEA.
  User: jhta
  Date: 2024-08-14
  Time: 오후 12:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap 5 Template</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<%@include file="/WEB-INF/views/commons/header.jsp"%>
<div class="container mt-5">
    <h2 class="mb-4">직원 근태 기록</h2>
    <form id="insertAttend" method="post" action="/insert">
        <div class="mb-3">
            <label for="employeeName" class="form-label">직원 이름</label>
            <input type="text" class="form-control" id="employeeName" name="empName" required>
        </div>
        <div class="mb-3">
            <label for="employeeEmail" class="form-label">직원 이메일</label>
            <input type="text" class="form-control" id="employeeEmail" name="empEmail" required>
        </div>
        <div class="mb-3">
            <label for="attendanceDate" class="form-label">날짜</label>
            <input type="date" class="form-control" id="attendanceDate" name="attendanceDate" required>
        </div>
        <div class="mb-3">
            <label for="workStatus" class="form-label">근무 상태</label>
            <select class="form-select" id="workStatus" name="workStatus" required>
                <option value="" selected disabled>선택하세요</option>
                <option value="출근">출근</option>
                <option value="휴가">휴가</option>
                <option value="결근">결근</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">제출</button>
    </form>
</div>
<%@include file="/WEB-INF/views/commons/footer.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
