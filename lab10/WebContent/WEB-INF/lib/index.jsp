<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<script type="text/javascript" src=Controllers/jQuery.js></script>
</head>
<body>

	<form id="formlogin"action="index.jsp" method="post">
	UserName <input id="textUserName" name="txtUserName" type="text"><br>
	Password <input id="txtPassword" name="txtPassword" type="password"><br>
	<input id="divStsMsgLogin">
	<%out.println(loginMsg); %>
	
	</div>
	</form>

</body>
</html>