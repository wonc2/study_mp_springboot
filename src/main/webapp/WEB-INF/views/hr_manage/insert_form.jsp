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
    <title>Title</title>
</head>
<body>
<%@include file="/WEB-INF/views/commons/header.jsp"%>
<div class="container mt-5">
    <h2 class="mb-4">직원 근태 기록</h2>
    <form id="insertAttend" method="post" onsubmit="insertAttend()">
        <div class="mb-3">
            <label for="employeeName" class="form-label">직원 이름</label>
            <input type="text" class="form-control" id="employeeName" required>
        </div>
        <div class="mb-3">
            <label for="employeeId" class="form-label">직원 아이디</label>
            <input type="text" class="form-control" id="employeeId" required>
        </div>
        <div class="mb-3">
            <label for="attendanceDate" class="form-label">날짜</label>
            <input type="date" class="form-control" id="attendanceDate" required>
        </div>
        <div class="mb-3">
            <label for="workStatus" class="form-label">근무 상태</label>
            <select class="form-select" id="workStatus" required>
                <option value="" selected disabled>선택하세요</option>
                <option value="출근">출근</option>
                <option value="퇴근">퇴근</option>
                <option value="휴가">휴가</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">제출</button>
    </form>
</div>
<%@include file="/WEB-INF/views/commons/footer.jsp"%>

<script>
    function insertAttend() {
        var employeeEmail = document.getElementById("email").value;
        document.getElementById("insertAttend").action = '/insert/'+employeeEmail;
    }
</script>
</body>
</html>
