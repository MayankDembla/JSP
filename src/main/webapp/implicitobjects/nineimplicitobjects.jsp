<%@ page errorPage = "showerror.jsp" %>

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
       <br><br>
      6.
      	○ In JSP, session is an implicit object of type HttpSession.
      	○ The Java developer can use this object to set, get or remove the attribute or to get the session information.<br><br>
        <%
            String newname = (String) session.getAttribute("user") ;
            out.println("Hello . " + newname ) ;
        %>
       <br><br>

       7. 	○ In JSP, pageContext is an implicit object of type PageContext class.
          	○ The PageContext object is used to set, get or remove attribute from one of the following scopes:

          		○ Page
          		○ Request
          		○ Session
                   Application
              <br><br>

           <%
             String newnewname =(String) pageContext.getAttribute("user",PageContext.SESSION_SCOPE) ;
             out.println("Name using Page Context is : " + newnewname ) ;
           %>
           <br><br>
        8. Page Implicit Object
        	○ In JSP, page is an implicit object of type Object class.
            ○ This object is assigned to the reference of auto generated servlet class.

           <br><br>
          <%!

            int getvaluenew(int x){
               x = x +2  ;
               return x ;
            }

           %>

          <%
             int x = this.getvaluenew(5) ;
             this.log("message");
             out.println("Value is + " + x);
          %>

         <br><br>
     9.  Exception Implicit Object

     	○ In JSP, exception is an implicit object of type java.lang.Throwable class.
        ○ This object can be used to print the exception, but it can only be used in error pages.

       <%
                // Throw an exception to invoke the error page
                int xnew = 1;

                if (xnew == 1) {
                  // throw new RuntimeException("Error condition!!!");
                }
             %>

    </body>
</html>