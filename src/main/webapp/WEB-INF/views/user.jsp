<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="true"%>
<html>
<body onload='document.loginForm.username.focus();'>
	<h1>Spring Security 5 - Login Form</h1>


	<form name='new' action="/newuser" method='POST'>
		<table>
			<tr>
				<td>Pseudo:</td>
				<td><input type='text' name='pseudo' value=''></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='text' name='password' value=''></td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit"
					value="submit" /></td>
			</tr>
		</table>
	</form>
</body>
</html>