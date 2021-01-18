<%@page import="java.sql.*"%>
<% 
 String name=request.getParameter("name");
 String email=request.getParameter("email");
 String starter=request.getParameter("starter");
 String maincourse=request.getParameter("maincourse");
 String dessert=request.getParameter("dessert");

 
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodhub","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into place_order values('"+name+"','"+email+"','"+starter+"','"+maincourse+"','"+dessert+"')");
response.sendRedirect("vieworder.jsp");
}
catch(Exception e)
{
out.println("Not"+e);
}
%>