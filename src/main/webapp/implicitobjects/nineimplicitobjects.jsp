<html>
    <head><title></title></head>
    <body>

    1. For writing any data to the buffer, JSP provides an implicit object named out.
        <br><br>Out is an instance of JspWriter <br><br>
        In case of Servlet it is <br>PrintWriter out = response.getWriter();<br><br>

        <% out.print("Today is:"+java.util.Calendar.getInstance().getTime()); %> <br> <br>

    2. The JSP request is an implicit Object of type HttpServletRequest i.e. created for each jsp request by the web container.
       <br><br>
       <%
       String name = request.getParameter("uname") ;
       out.println("Welcome : " + name) ;
       %>
       <br><br>
    3.  In JSP, response is an implicit object of HttpServletResponse. Now, this is created by Web Container on each Jsp request.
        Go back and Enter "Google", it will redirect to google.com
        <%
            if(request.getParameter("uname").equals("Google"))
                response.sendRedirect("http://www.google.com") ;
         %>
         <br><br>
   <b> 4.</b>	<br>○ In JSP Config is an implicit object of type ServletConfig.<br>
      	○ This config object can be used to get initialization parameter for a particular JSP page.<br>
      	○ This config object is created by the web container for each jsp page.<br><br>
        <%
          out.println("Welcome " + request.getParameter("uname")) ;

          if(request.getParameter("uname").equals("init")){
              String driver = config.getInitParameter("dname") ;
              out.println("driver name is " + driver) ;
          }
        %>
        <br><br>

      5. Servlet Context <br> <br>

      	○ In JSP, application is an implicit object of type ServletContext.
      	○ The instance is created only once by the web Container when application or project is deployed on the server
      	○ This Object is used to get initialize the parameter from Configuration file (web.xml). It can also be used to get, set or remove the attribute from the application scope.

       <br><br>

       <%
          out.print("Welcome : " + request.getParameter("uname"));

          if(request.getParameter("uname").equals("context")){
              String driver = application.getInitParameter("dname") ;
              out.println("driver name is " + driver) ;
          }
       %>


    </body>
</html>