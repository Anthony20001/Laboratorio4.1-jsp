<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Programa 3</title>
</head>
<body>
	<style><%@include file="../css/styles.css" %></style>
	<jsp:include page="../btn/btn-home.jsp"></jsp:include>
	
	<%! float result, number1, number2;%>
	
	<% 
		number1 = Float.parseFloat(request.getParameter("number1"));
		number2 = Float.parseFloat(request.getParameter("number2"));
	%>
	
	<%!
		public float sum(float a, float b){
			result = a+b;
			return result;
		}
		
		public float subtraction(float a, float b){
			result = a-b;
			return result;
		}
		
		public float multiplication(float a, float b){
			result = a*b;
			return result;
		}
		
		public float division(float a, float b){
			if(b>0){
				result = a/b;
			}
			return result;
		}
	%>
	
	<h1>Resultado</h1>
	<h5><%= number1%> + <%= number2%> = <span><%=sum(number1, number2) %></span></h5>
	<h5><%= number1%> - <%= number2%> = <span><%=subtraction(number1, number2) %></span></h5>
	<h5><%= number1%> * <%= number2%> = <span><%=multiplication(number1, number2) %></span></h5>
	<h5><%= number1%> / <%= number2%> = <span><%=division(number1, number2) %></span></h5>
</body>
</html>