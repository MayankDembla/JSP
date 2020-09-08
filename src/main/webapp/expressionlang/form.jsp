
<html>
    <body>
        <form action="./expressionlang/process.jsp" method="get">
          Enter name : <input type="text" name="name"/></br>
          <input type="submit" value="go"/>
        </form>

        <h3> Welcome to the index page </h3>
        <%
          session.setAttribute("user","Dembla") ;
        %>

      <a href="./expressionlang/process.jsp"> visit </a>
    </body>
</html>