<html>
    <body>
        <jsp:useBean id="obj" class= "beans.Employee"/>
        <%
           int m = obj.cube(5) ;
           out.println("Cube of 5 is  " + m ) ;
        %>

    </body>
</html>