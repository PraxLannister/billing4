<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv='refresh' content='2; url=/billing/adminpanel'>
<meta charset="ISO-8859-1">
<title>Admin Logout</title>
</head>
<body>
<% 
	
	response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	
	session.invalidate();  
	response.sendRedirect("/billing/adminpanel"); 
%>
</body>
</html>