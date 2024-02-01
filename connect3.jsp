<%@page import="java.sql.*"%>
<%String a1, a2, a3, a4;
a1=request.getParameter("t1");
a2=request.getParameter("t2");
a3=request.getParameter("t3");
a4=request.getParameter("t4");
try
               {Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sample","app","app");
                PreparedStatement stat=con.prepareStatement("insert into contact_us values(?,?,?,?)");
                stat.setString(1,a1);
                stat.setString(2,a2);
                stat.setString(3,a3);
                stat.setString(4,a4);
                stat.executeUpdate();
                response.sendRedirect("./contact.html");
                               }
catch(Exception e)
               {
    //out.println(e);
    
}
%>

<%String d1, d2, d3, d4;
d1=request.getParameter("y1");
d2=request.getParameter("y2");
d3=request.getParameter("y3");
d4=request.getParameter("y4");
try
               {Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sample","app","app");
                PreparedStatement stat=con.prepareStatement("insert into bmi values(?,?,?,?)");
                stat.setString(1,d1);
                stat.setString(2,d2);
                stat.setString(3,d3);
                stat.setString(4,d4);
                stat.executeUpdate();
                response.sendRedirect("./bmi-calculator.html");
                               }
catch(Exception e)
               {
    //out.println(e);
    
}
%>  
