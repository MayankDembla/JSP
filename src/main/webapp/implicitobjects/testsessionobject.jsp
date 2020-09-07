<html>
    <head></head>
    <body>

    <%
        String name = request.getParameter("uname") ;
        out.println("Welcome: " + name ) ;

     //   session.setAttribute("user",name) ;

        pageContext.setAttribute("user",name,pageContext.SESSION_SCOPE) ;

    %>

    <a href="./implicitobjects/nineimplicitobjects.jsp?uname=Mayank">move move move </a>

    <body>
</html>