<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Programa 8</title>
</head>
<body>
	<style><%@include file="../css/styles.css" %></style>
	<jsp:include page="../btn/btn-home.jsp"></jsp:include>
	
	<h1>Respuesta</h1>
	
	<h5>Potencias: 
		<span>
			<%
				int number = Integer.parseInt(request.getParameter("number")), temp=1, result=0;
		
				if(number>1 && number<10){
				out.print(temp);
					do{
						result = 2 * temp; temp = result;
						if(result<=2000){out.print(", " + result);}
					}while(result<=2000);
				}else if(number==1){out.print(temp);}
			%>
		</span>
	</h5>
	
	
</body>
</html>