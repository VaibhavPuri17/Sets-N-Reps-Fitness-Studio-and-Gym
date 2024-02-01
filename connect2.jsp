<%@page import="java.sql.*"%>
<%
String b31, b32, b33, b34, b35, b36;
b31=request.getParameter("r31");
b32=request.getParameter("r32");
b33=request.getParameter("r33");
b34=request.getParameter("r34");
b35=request.getParameter("r35");
b36=request.getParameter("r36");
try
               {Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/sample","app","app");
                PreparedStatement stat=con.prepareStatement("insert into signup values(?,?,?,?,?,?)");
                stat.setString(1,b31);
                stat.setString(2,b32);
                stat.setString(3,b33);
                stat.setString(4,b34);
                stat.setString(5,b35);
                stat.setString(6,b36);
                stat.executeUpdate();
                out.println("Data inserted successfully");
                
                 
                               }
catch(Exception e)
               {
    //out.println(e);
    
}
%>
<%

b35=request.getParameter("r21");
b36=request.getParameter("r22");

try { 
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/sample","app","app");
        Statement stat = con.createStatement();
       String query = "SELECT * FROM SIGNUP WHERE EMAIL='" + b35 + "' AND PASSWORD='" + b36 + "'";
       
       ResultSet rs= stat.executeQuery(query);
        
        if(rs.next()){
            response.sendRedirect("userindex.html");
        }
             else{
           RequestDispatcher dispatcher = request.getRequestDispatcher("signin.html");
           request.setAttribute("errorMessage", "Invalid Email or password");
           dispatcher.forward(request, response);
             }
           
        rs.close();
        stat.close();
        

        
              }
 
 catch (Exception e)
         {
      //  out.println(e);
    }
%>



