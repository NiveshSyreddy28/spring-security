<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title> Welcome</title>
  </head>

  <body>
    <h2>Welcome to the home page</h2>

    <hr>
    <!-- display user and role -->
    <p>
        User: <security:authentication property="principal.username" />
        <br><br>
        Role(s): <security:authentication property="principal.authorities" />

    </p>
    <security:authorize access="hasRole('MANAGER')">
        <!--Add a link to point to/leaders....this is for the managers -->
        <p>
            <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
        </p>
    </security:authorize>


    <security:authorize access="hasRole('ADMIN')">
        <!--Add a link to point to /systems...this is for admins -->
        <p>
            <a href="${pageContext.request.contextPath}/systems">IT System Meeting</a>
        </p>
    </security:authorize>


    <hr>
    <!-- Add a logout button -->
    <form:form action="${pageContext.request.contextPath}/logout"
                        method="POST">
         <input type="submit" value="Logout" />

    </form:form>
  </body>
</html>