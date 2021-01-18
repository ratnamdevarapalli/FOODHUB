<!-- send_messages.jsp  -->

<%@page import="java.sql.*"%>
<% 
 String name = request.getParameter("name");
 String message = request.getParameter("message");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodhub","root","root");
Statement st = con.createStatement();
st.executeUpdate("insert into drop_a_love values('"+name+"','"+message+"')");
response.sendRedirect("view_messages.jsp");
}
catch(Exception e)
{
out.println(e +"\n"+ "Oops a problem had encountered while submitting your message");
}
%>
