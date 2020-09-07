<html>
    <head>
        <title>title</title>
    </head>
    <body>

     Declare Variable outside Service method <br>
       <%! int data = 50 ; %>
       <%= "Value of the variable is: "+ data %><br>

      Method call : <br>
       <%!
          int getvalue(int v){
            return v*data ;
          }
       %>

       <%= "value is " + getvalue(5) %><br>

      Another Method to get the cube <br>
       <%!
          int cube(int n){
            return n*n*n ;
          }
       %>

       <%= "Cube of 3 is  " + cube(3) %>

    </body>
</html>