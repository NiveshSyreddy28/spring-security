<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Custom Login Page</title>
    <style>
    .failed{
        color: red;
        }
    </style>
  </head>
  <body>
    <h3>My Custom Login Page</h3>

    <form:form  action="${pageContext.request.contextPath}/authenticateTheUser" method="post">
      <!-- Check for login error -->

      <c:if test="${param.error != null}">
        <i class = "failed">Invalid username/password </i>
      </c:if>

      <p>
        User name: <input type="text" name="username" value="" />
      </p>

      <p>
        Password: <input type="password" name="password" value="" />
      </p>
      <input type="submit" name="" value="login">
  </form:form>
  </body>
</html>