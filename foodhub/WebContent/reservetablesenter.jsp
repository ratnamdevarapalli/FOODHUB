<%@page import="java.sql.*"%>
<% 
 String email=request.getParameter("email");
 String tabletype=request.getParameter("tabletype");
 String purpose=request.getParameter("purpose");
 String meetplan=request.getParameter("meetplan");
 String date1=request.getParameter("date1"); 
 
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodhub","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into reservetables values('"+email+"','"+tabletype+"','"+purpose+"','"+meetplan+"','"+date1+"')");
response.sendRedirect("view_reserved_tables.jsp");
}
catch(Exception e)
{
out.println("Not"+e);
}
%>