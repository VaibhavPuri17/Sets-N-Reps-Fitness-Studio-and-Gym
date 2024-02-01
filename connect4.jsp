<%@page import="java.sql.*"%>

<%String b1, b2, b3, b4, b5, b6, b7, b8,b9;
b1=request.getParameter("v1");
b2=request.getParameter("v2");
b3=request.getParameter("v3");
b4=request.getParameter("v4");
b5=request.getParameter("v5");
b6=request.getParameter("v6");
b7=request.getParameter("v7");
b8=request.getParameter("v8");
b9=request.getParameter("v9");
try
               {Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sample","app","app");
                PreparedStatement stat=con.prepareStatement("insert into enrollment values(?,?,?,?,?,?,?,?,?)");
                stat.setString(1,b1);
                stat.setString(2,b2);
                stat.setString(3,b3);
                stat.setString(4,b4);
                stat.setString(5,b5);
                stat.setString(6,b6);
                stat.setString(7,b7);
                stat.setString(8,b8);
                stat.setString(9,b9);
                stat.executeUpdate();
              response.sendRedirect("./payment.html");
                
                
                               }
catch(Exception e)
               {
    //out.println(e);
    
}
%>
