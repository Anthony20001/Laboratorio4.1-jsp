<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Programa 7</title>
	<link href="../css/styles.css" rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="../btn/btn-home.jsp"></jsp:include>
	<%@page import="java.text.DecimalFormat" %>
	
	<h1>Resultado</h1>
	
	<%
		DecimalFormat decimal = new DecimalFormat("#.00");
		float number = Float.parseFloat(request.getParameter("number"));
		
		if(number==0){
			out.print("<h5><span>El numero ingresado es cero</span></h5>");
		}else if(number>0){
			out.print("<h5><span>El numero " + number + " es positivo</span></h5>");
		}else if(number<0){
			out.print("<h5><span>El numero " + number + " es negativo</span></h5>");
		}else{
			out.print("Se ha producido un error");
		}
	%>

</body>
</html>