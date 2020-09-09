<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <body>
       C:out :<br><br>It display the result of an expression, similar to the way <%=...%> tag work<br><br>
       <c:out value="Welcome Mayank"/>

       C:Import
       <br><br>
       It Retrives relative or an absolute URL and display the contents to either a String in 'var',a Reader in 'varReader' or the page.
       <br><br>
       <c:import var="data" url="http://google.com"/><br><br>
       <c:out value="${data}"/>

    </body>
</html>