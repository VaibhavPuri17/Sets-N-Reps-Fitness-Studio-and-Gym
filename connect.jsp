<%@page import="java.sql.*"%>

<%
String a11,a12;
a11=request.getParameter("t11");
a12=request.getParameter("t12");

try { 
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/sample","app","app");
        Statement stat = con.createStatement();
       String query = "SELECT * FROM ADMIN WHERE EMAIL='" + a11 + "' AND PASSWORD='" + a12 + "'";
       
       ResultSet rs= stat.executeQuery(query);
        
        if(rs.next()){
            response.sendRedirect("indexadmin.jsp");
        }
             else{
           RequestDispatcher dispatcher = request.getRequestDispatcher("admin.html");
           request.setAttribute("errorMessage", "Invalid Email or password");
           dispatcher.forward(request, response);
             }
           
        rs.close();
        stat.close();
        

        
        //response.sendRedirect("index.html");
              }
 
 catch (Exception e)
         {
      //  out.println(e);
    }

%>







