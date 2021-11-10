<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
<h1>${hello}</h1>
<% 
	session.invalidate();
	response.sendRedirect("/billing/"); 
%>
</body>
</html>