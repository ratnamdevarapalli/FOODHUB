<%@page import="java.sql.*"%>
<% 
 String name=request.getParameter("name");
 String email=request.getParameter("email");
 String rating=request.getParameter("rating");
 String suggestion=request.getParameter("suggestion");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodhub","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into user_review values('"+name+"','"+email+"','"+rating+"','"+suggestion+"')");
response.sendRedirect("view_reviews.jsp");
}
catch(Exception e)
{
out.println("Not");
}
%>