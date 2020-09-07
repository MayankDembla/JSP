<html>
<body>
<jsp:useBean id="u" class="beans.Employee" scope="session"/>
<jsp:setProperty property="*" name="u"/>

Record: <br>
ID: <jsp:getProperty property="id" name="u"/><br>
Name: <jsp:getProperty property="name" name="u"/><br>
Standard : <jsp:getProperty property="standard" name="u"/><br>

Access on next page.. </br>

<a href="second.jsp">Click me</a>
</body>
</html>