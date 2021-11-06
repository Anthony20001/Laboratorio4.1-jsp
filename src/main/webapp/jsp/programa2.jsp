<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Programa 2</title>
</head>
<body>
	<style><%@include file="../css/styles.css"%></style>
	<jsp:include page="../btn/btn-home.jsp"></jsp:include>
	
	<%
		int base = Integer.parseInt(request.getParameter("base"));
		int height = Integer.parseInt(request.getParameter("base"));
	%>

	<%!
		public float perimeter(float base, float height){
			float perimeter= 2*(base+height);
			return perimeter;
		}
	
		public float area(float base, float height){
			float area = base*height;
			return area;
		}
	%>
	<h1>Respuesta</h1>
	<h5>Perímetro: <span><%=perimeter(base, height) %></span></h5>
	<h5>Área: <span><%=area(base, height) %></span></h5>
</body>
</html>