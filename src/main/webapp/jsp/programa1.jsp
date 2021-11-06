<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Programa 1</title>
</head>
<body>
	<style><%@include file="../css/styles.css" %></style>
	<jsp:include page="../btn/btn-home.jsp"></jsp:include>
	
	<%
		int score1 = Integer.parseInt(request.getParameter("score1"));
		int score2 = Integer.parseInt(request.getParameter("score2"));
		int score3 = Integer.parseInt(request.getParameter("score3"));
		int score4 = Integer.parseInt(request.getParameter("score4"));
		int score5 = Integer.parseInt(request.getParameter("score5"));
		
		int [] score = {score1, score2, score3, score4, score5};
		
		int prom = (score1+score2+score3+score4+score5)/5;
	%>
	<h1>Resultado</h1>
	<h5>Nombre: <span><%=request.getParameter("name")%></span></h5> 
	<h5>Promedio: <span><%=prom %></span></h5>
	<h5>Calificaciones: <% for(int i=0; i<5; i++) out.print(score[i]+" - ");%></h5>
	
	<!--  
	<ul>
		<%
			for(int i=0; i<5; i++){
				out.print("<li>"+score[i]+"</li>");
			}
		%>
	</ul>
	-->
</body>
</html> 