<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int x = Integer.parseInt(request.getParameter("x"));
	int y = Integer.parseInt(request.getParameter("y"));
	String op = request.getParameter("operator");
	int result = 0;
	switch(op)
	{
	case "sum":
		result = x + y;
		break;
	case "subtract":
		result = x - y;
		break;
	case "multiply":
		result = x * y;
		break;
	case "divide":
		result = x / y;
		break;
	default:
		break;
	}
	%>
	<div><%= result %></div>

</body>
</html>