<!-- book_a_table.jsp -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" text="text/css" href="style.css">
<style>
body {
   background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQjS2fTVKzyjwexmKH64f1oHNR2Gsl_hsyXlg&usqp=CAU");
   background-repeat: no-repeat;
   background-size:cover;
}
.ad{
  background-color: blue;
  width: 550px;
  height:400px;
  border: 15px solid blue;
  padding: 140px 0;
  float:left;
  border-radius: 25px;
  text-align:center;
  margin-left: 100px;
  font-weight:bold;
}


#id
{
float:right;
}
a:hover {
  color:yellow;
}
.adt
{
color:white;
font-family: "Lucida Console", Courier, monospace;
font-size:40px;
}
li a:hover{
background-color:brown;
color:white;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
  <a class="navbar-brand" href="#">FOODHUB</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
     <li class="nav-item active">
        <a class="nav-link" href="about.html">About <span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link" href="gallery.html">Gallery <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="contact.html">Contact <span class="sr-only">(current)</span></a>
      </li>
     
    </ul>
     <form class="form-inline my-2 my-lg-0">
     
     <a href="table_costs.html" class="btn btn-success my-2 my-sm-0" >Table Costs</a>
    </form>
   <%
  response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodhub","root","root");
  Statement st=con.createStatement();
  String email=(String)session.getAttribute("email");
  ResultSet rs=st.executeQuery("select * from user where email='"+email+"' ");
  String name;
  int flag=0;
  while(rs.next())
  {
 name=rs.getString("name");

 email=rs.getString("email");

 if(name!=null)
 {
	 flag=1;
 %> <form class="form-inline my-2 my-lg-0">
     
     <a href="welcome.jsp" class="btn btn-success my-2 my-sm-0" >My Account</a>
    </form>
   <% }}%>
   <% if(flag==0){%>
    <form class="form-inline my-2 my-lg-0">
      
     <a href="login.html" class="btn btn-success my-2 my-sm-0" >My Account</a>
    </form>
   <% }%>
    
</div>
</nav><br>
<br><br><br>
<%if(flag==1) {%>
<div class="ad"><a href="reservetableform.html" class="adt" style="text-decoration:none;text-align:center;">&nbsp  &nbsp &nbspReserve Table&nbsp  &nbsp  &nbsp </a></div>
<div class="ad"><a href="view_reserved_tables.jsp" class="adt" style="text-decoration:none;text-align:center;">&nbsp &nbsp Reserved Table&nbsp  &nbsp  &nbsp </a></div>
<%} %>
<%if(flag==0){%>
<div class="ad"><a href="login_to_reserve.html" class="adt" style="text-decoration:none;text-align:center;">&nbsp  &nbsp &nbspReserve Table&nbsp  &nbsp  &nbsp </a></div>
<div class="ad"><a href="login_to_view.html" class="adt" style="text-decoration:none;text-align:center;">&nbsp &nbsp Reserved Table&nbsp  &nbsp  &nbsp </a></div>
<%} %>
</body>
</html>
    