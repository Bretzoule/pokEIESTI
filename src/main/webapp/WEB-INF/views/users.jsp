<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="fr">

<body>
	<div class="container">


		<h1>All Users</h1>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>email</th>
					<th>Password</th>
				</tr>
			</thead>

			<c:forEach var="user" items="${usersModel}">
				<tr>
					<td>${user.email}</td>
					<td>${user.password}</td>
			
				</tr>
			</c:forEach>
		</table>

	</div>

<h1>Hello users</h1>
</body>
</html>