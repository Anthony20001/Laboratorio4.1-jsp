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

	<%!double cost, cash, result;%>
	
	<%
		double cost = Double.parseDouble(request.getParameter("cost"));
		double cash = Double.parseDouble(request.getParameter("cash"));
	%>
	
	<%!
		public double buy(double cash, double cost){
			double result = cash - cost;
			return result;
		}
	%>
	
	<h1>Resultado</h1>
	<h5>Costo del articulo: <%=cost %></h5>
	<h5>Dinero entregado: <%=cash %></h5>
	<h5>Cambio: <%=buy(cash, cost) %></h5>

</body>
</html>