<html>
    <head></head>
    <body>

    <%
        String name = request.getParameter("uname") ;
        out.println("Welcome: " + name ) ;

        session.setAttribute("user",name) ;

    %>

    <a href="./implicitobjects/nineimplicitobjects.jsp?uname=Mayank">move move move </a>

    <body>
</html>