<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<body>
	<style><%@include file="../css/styles.css" %></style>
	<jsp:include page="../btn/btn-home.jsp"></jsp:include>
	
	<%!
		float weight;
		float lenght;
		String name;
	%>
	
	<%@ page import = "java.text.DecimalFormat"%>
	
	<%
		DecimalFormat decimal = new DecimalFormat("#.00");
	%>
	
	<%
		name = request.getParameter("name");
		weight = Float.parseFloat(request.getParameter("weight"));
		lenght = Float.parseFloat(request.getParameter("lenght"));	
	%>
	
	<h1>Resultado</h1>
	
	<h5>Datos del dinosaurio</h5> 
	<h5>Nombre: <span><%=name %></span></h5>
	<h5>Peso: <span><%=decimal.format(weight*1000)%></span></h5>
	<h5>Longitud: <span><%=decimal.format(lenght/3.28)%></span></h5>
</body>
</html>