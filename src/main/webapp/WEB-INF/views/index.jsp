<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2017/6/9
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>辽宁航空欢迎您！</title>
    <%@ include file="linkCSS.html"%>
</head>
<body>
<div id="content">
    <jsp:include page="${requestScope.contentUrl}" />
    <div class="placeholder"></div>
    <%@ include file="footer.jsp" %>
</div>
<%@include file="linkJS.html"%>

</body>
</html>