<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<body>
<h1>你好</h1>
<jsp:forward page="${pageContext.request.contextPath}/pages/user/login.jsp"></jsp:forward>
</body>
</html>
