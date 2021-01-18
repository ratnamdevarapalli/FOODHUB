<%@page import="java.sql.*"%>
<% 
String email=request.getParameter("email");
String password=request.getParameter("password");

try
{
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodhub","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from user where email='"+email+"' and password='"+password+"'");
if(rs.next())
{
	session.setAttribute("email",email);
	response.sendRedirect("welcome.jsp");
}
else
{
	response.sendRedirect("login.html");
	out.println("Login Unsuccessful");
}
}
catch(Exception e)
{
out.println("Login Unsuccessful");
}
%>

    