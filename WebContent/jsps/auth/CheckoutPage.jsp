<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=US-ASII">
<title>Login Success Page (checkout)</title>
</head>
<body>
	<%
		// allow access only if session exists
		if (session.getAttribute("userSession") == null) {
			response.sendRedirect("login.html");
		}
		String userName = null;
		String sessionID = null;
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("userCookie"))
					userName = cookie.getValue();
			}
		}
	%>
	<h3>
		Hi
		<%=userName%>, do the checkout.
	</h3>
	<br>
	<form action="<%=response.encodeURL("/biglog/LogoutServlet") %>" method="post">
		<input type="submit" value="Logout">
	</form>
</body>
</html>
