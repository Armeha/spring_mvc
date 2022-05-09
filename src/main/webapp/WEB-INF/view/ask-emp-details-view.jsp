<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<h2>Dear Employee, Please enter ypur details</h2>
<br><br>
<%--<form action="showDetails" method="get">--%>
<%--    <input type="text" name="employeeName"--%>
<%--           placeholder="Write your name"/>--%>
<%--    <input type="submit">--%>
<%--</form>--%>
<form:form action ="showDetails" modelAttribute="employee" method="get">
    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br><br>

    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br><br>
    Department<form:select path="department">
    <form:options items="${employee.departments}"/>
    </form:select>
    <br><br>
    Witch car do you want?
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br><br>
Foreign Language(s)
    <form:checkboxes path="languages" items="${employee.languageList}"/>
    <br><br>
    Phone number <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br><br>
    Email <form:input path="email"/>
    <form:errors path="email"/>
    <br><br>
<input type="submit" value="OK">

</form:form>

</body>
</html>
