<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: jhta
  Date: 2024-08-14
  Time: 오후 12:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="/WEB-INF/views/commons/header.jsp" %>
<% List result= (List) request.getAttribute("result");
// 근태 pk (attend_Id), 근태 상태(status), 날짜(workday)
HashMap params=(HashMap)request.getAttribute("params");
// 총 출근 일수(total_workdays) 결근 일수(total_absence) 휴가 일수(total_vacation)
%>

<form action="" method="">
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-8">
                <h1>Work Status List</h1>
                <div class="mb-3 mt-3">
                    <h5>Name: 김다영</h5>
                    <h5>Department: 부서1</h5>
                </div>
                <div class="mb-3">
                    <label for="sortOption" class="form-label">정렬 옵션:</label>
                    <select class="form-select" id="sortOption">
                        <option value="month" selected>8월</option>
                        <option value="month2">7월</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">조회</button>

                <table class="table">
                    <thead>
                    <tr>
                        <th>Date</th>
                        <th>Status</th>
                        <th>del</th>
                    </tr>
                    </thead>
                    <tbody id="workStatusTable">
                    <%
                        for(Object obj : result) {
                            HashMap record = (HashMap) obj;
                    %>
                    <tr>
                        <td><%= record.get("workday")%>></td>
                        <td><%= record.get("status")%></td>
                        <td>
                            <button formaction='/hr/deleteStatus<%= record.get("attend_Id") %>' formmethod="post">Del</button>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
                <hr style="border: none; border-top: 2px solid black; margin-bottom: 1rem;">
                <div>
                    <h5>총 출근 일수: <%=params.get("total_workdays")%></h5>
                    <h5>총 결근 일수: <%=params.get("total_absence")%></h5>
                    <h5>총 휴가 일수: <%=params.get("total_vacation")%></h5>
                </div>
            </div>
        </div>
    </div>
</form>
<%@include file="/WEB-INF/views/commons/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
