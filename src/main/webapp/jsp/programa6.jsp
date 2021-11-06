<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Programa 6</title>
</head>
<body>
	<style><%@include file="../css/styles.css"%></style>
	<jsp:include page="../btn/btn-home.jsp"></jsp:include>
	
	<%
		float number1 = Float.parseFloat(request.getParameter("number1"));
		float number2 = Float.parseFloat(request.getParameter("number2"));
	%>
	
	<h1>Resultado</h1>
	
	<%@page import="java.text.DecimalFormat"%>

	<%
		DecimalFormat decimal = new DecimalFormat("#.00");
	%>
	
	<%
		if(number1>number2){
			out.print("<h5><span>El número " + decimal.format(number1) + " es el mayor</span></h5>");
			out.print("<h5><span>El número " + decimal.format(number2) + " es el menor</span></h5>");
		}else{
			out.print("<h5><span>El número " + decimal.format(number2) + " es el mayor</span></h5>");
			out.print("<h5><span>El número " + decimal.format(number1) + " es el menor</span></h5>");
		}
	%>
</body>
</html>