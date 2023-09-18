<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./result.jsp" method="post">
		
		<h1>Calculator</h1>
		<input type="text" name="x"><br>
		<input type="text" name="y">
		<select id="operator" name="operator">
            <option value="sum">Sum (+)</option>
            <option value="subtract">Subtract (-)</option>
            <option value="multiply">Multiply (*)</option>
            <option value="divide">Divide (/)</option>
        </select><br>
		
		<button type="submit">Send</button>
	
	</form>
</body>
</html>