<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Admin</title>
</head>
<body>

<div>admin page</div>

<div>User: <b><c:out value="${pageContext.request.remoteUser}"/></b></div>
<div>Role: <b><sec:authentication property="principal.authorities" /></b></div>

</body>
</html>