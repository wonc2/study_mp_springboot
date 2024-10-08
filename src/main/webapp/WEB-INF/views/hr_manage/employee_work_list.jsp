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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap 5 Template</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<%@include file="/WEB-INF/views/commons/header.jsp" %>
<% List result = (List) request.getAttribute("workingList");
// 근태 pk (attend_Id), 근태 상태(status), 날짜(workday)e
    HashMap params = (HashMap) request.getAttribute("totalMap");
    HashMap userInfo = (HashMap) request.getAttribute("empInfo");

    // 총 출근 일수(total_workdays) 결근 일수(total_absence) 휴가 일수(total_vacation)
%>


<form action="" method="">
    <div class="container mt-4">
        <div class="row">
            <div class="col-md-8">
                <h1>Work Status List</h1>
                <div class="mb-3 mt-3">
                    <h5>Name: <%=userInfo.get("empName")%></h5>
                    <h5>Department: <%=userInfo.get("depName")%></h5>
                </div>
                <div class="mb-3">
                    <label for="sortOption" class="form-label">정렬 옵션:</label>
                    <select class="form-select" id="sortOption" name="month">
                        <option value="08" selected>8월</option>
                        <option value="07">7월</option>
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
                        for (Object obj : result) {
                            HashMap record = (HashMap) obj;
                    %>
                    <tr>
                        <td><%= record.get("workday")%></td>
                        <td><%= record.get("status")%>
                        </td>
                        <td>
                            <button formaction='/deleteWorkAttendance/<%= record.get("attend_Id") %>' formmethod="post">Del
                            </button>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
                <hr style="border: none; border-top: 2px solid black; margin-bottom: 1rem;">
                <div class="totalWorkParams">
                    <h5>총 출근 일수: <%=params.get("total_workdays")%>
                    </h5>
                    <h5>총 결근 일수: <%=params.get("total_absence")%>
                    </h5>
                    <h5>총 휴가 일수: <%=params.get("total_vacation")%>
                    </h5>
                </div>
            </div>
        </div>
    </div>
</form>
<%@include file="/WEB-INF/views/commons/footer.jsp" %>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
