<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: jhta
  Date: 2024-08-14
  Time: 오후 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap 5 Template</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>
<body>
<%@include file="/WEB-INF/views/commons/header.jsp" %>
<% List result = (List) request.getAttribute("result"); %>
<%--result에 담겨야 할 것 : 근무자 이름(emp_Name), 근무자 이메일(emp_Email), 부서명(dep_Name), 출근율(att_Rate)
    삭제용 근무자 ID(PK) (emp_Id)
--%>

<form action="" method="">
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-8">
                <h2>Employee List</h2>
                <div class="mb-3">
                    <label for="sortOption" class="form-label">정렬 옵션:</label>
                    <select class="form-select" id="sortOption">
                        <option value="employee" selected>직원별</option>
                        <option value="department">부서별</option>
                    </select>
                </div>
                <table class="table">
                    <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Department</th>
                        <th>attendance rate</th>
                        <th>del</th>
                    </tr>
                    </thead>
                    <tbody id="employeeList">
                    <%
                        for (Object obj : result) {
                            HashMap record = (HashMap) obj;

                    %>
                    <tr onclick="">
                        <td><%=record.get("emp_Name")%>></td>
                        <td><%=record.get("emp_Email")%>></td>
                        <td><%=record.get("dep_Name")%>></td>
                        <td><%=record.get("att_Rate")%>
                        </td>
                        <td>
                            <button formaction='/hr/deleteEmp<%=record.get("emp_ID")%>' formmethod="post">Del</button>
                        </td>
                    </tr>
                    <% } %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</form>

<%@include file="/WEB-INF/views/commons/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
