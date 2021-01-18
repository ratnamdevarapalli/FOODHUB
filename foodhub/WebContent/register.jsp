<%@page import="java.sql.*"%>
<% 
 String name=request.getParameter("name");
 String email=request.getParameter("email");
 String password=request.getParameter("password");
 String phonenumber=request.getParameter("phonenumber");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodhub","root","root");
Statement st=con.createStatement();
st.executeUpdate("insert into user values('"+name+"','"+email+"','"+password+"','"+phonenumber+"')");
response.sendRedirect("home.jsp");
}
catch(Exception e)
{
out.println("Not");
}
%>

    