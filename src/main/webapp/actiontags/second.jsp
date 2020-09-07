<jsp:useBean id="u" class="beans.Employee" scope="session"/>

Record: <br>
ID: <jsp:getProperty property="id" name="u"/><br>
Name: <jsp:getProperty property="name" name="u"/><br>
Standard : <jsp:getProperty property="standard" name="u"/><br>