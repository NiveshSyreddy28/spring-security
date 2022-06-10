<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title> Welcome</title>
  </head>
  <body>
    <h2>Welcome to the home page</h2>
    <!-- Add a logout button -->
    <form:form action="${pageContext.request.contextPath}/logout"
                        method="POST">
         <input type="submit" value="Logout" />

    </form:form>
  </body>
</html>