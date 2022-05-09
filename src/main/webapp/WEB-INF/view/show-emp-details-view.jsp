<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 26.04.2022
  Time: 23:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<body>
<h2>Dear Employee you areWELCOME!!!</h2>
<br><br><br>
Your name ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your salary: ${employee.salary}
<br>
Your department: ${employee.department}
<br>
Your car: ${employee.carBrand}
<br>
Language (s) :
<ul>
    <c:forEach var="lang" items="${employee.languages}">

        <li>${lang}</li>

    </c:forEach>

</ul>
<br>
Phone number: ${employee.phoneNumber}
<br>
Email : ${employee.email}

<%--Your name: ${nameAttribute}--%>

</body>
</html>

