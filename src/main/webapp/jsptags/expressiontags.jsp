<html>
    <head>
        <title>title</title>
    </head>
    <body>
        <%= "Hello "+ request.getParameter("uname") +" this is from Expression Tag" %><br>
        <%= "You can write Statements here" %><br>
        <%= "Current Date and time is : " + java.util.Calendar.getInstance().getTime() %>
    </body>
</html>