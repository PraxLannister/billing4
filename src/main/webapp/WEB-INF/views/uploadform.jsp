<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
   
<!DOCTYPE html>  
<html>  
 <head>  
 <title>Image File Upload</title>  
 </head>  
 <body>  
<h1>File Upload Example - JavaTpoint</h1>  
  
<h3 style="color:red">${filesuccess}</h3>  
<form method="post" action="savefile" enctype="multipart/form-data">  
<p><label for="image">Choose Image</label></p>  
<p><input name="file" id="image" type="file" accept="image/x-png,image/gif,image/jpeg"/></p>  
<p><input type="submit" value="Upload"></p>  
</form>  
</body>  
</html>  