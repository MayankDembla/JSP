<html>
    <head>Head</head>
    <body>

    <!-- this is Scriptlt Tag where we can write the Java Code -->
    <%
        String name = request.getParameter("uname") ;
        out.println("Hi Mayank Dembla, your user name is : " + name) ;
    %>

    </body>
</html>