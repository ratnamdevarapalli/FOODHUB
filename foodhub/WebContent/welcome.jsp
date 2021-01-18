<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%> 
<!DOCTYPE html>
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
  width: 300px;
  border: 15px solid blue;
  padding: 20px;
  float:left;
  margin-left:30px;
font-weight:bold;
}
.rcorners1
{
  
  width: 300px;
   border-radius: 25px;
   padding: 20px;
  margin-left:120px;
  color:white;
  float:left;
  font-size:25px;
  font-weight:bold;
}

#id
{
float:right;
}
a:hover {
  color:white ;
}
.adt
{
color:white;
font-family: "Lucida Console", Courier, monospace;
font-size:20px;
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
 %>
  <%  
  if(name.equals("admin")){%>
   <li class="nav-item active">
        <a class="nav-link" href="reports.jsp">Reports<span class="sr-only">(current)</span></a>
      </li>
     <%} %>
     </ul>
 
  <% }}%>
  
 
   <form action="logoutt.jsp">&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
     &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp     &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
      <input type="submit"  class="btn btn-success my-2 my-sm-0" style="cursor:pointer;float:right;color:white;" value="LOGOUT"></input>
   </form>
</div>
</nav>
<br>
<br>
<div class="ad"><a href="menu.jsp" class="adt" style="text-align:center;text-decoration:none;">&nbsp  &nbsp  &nbsp  Menu &nbsp  &nbsp  &nbsp </a></div>
<div class="ad"><a href="events.html" class="adt" style="text-decoration:none;"> Events and offers </a></div>
<div class="ad"><a href="book_a_table.jsp" class="adt" style="text-align:center;text-decoration:none;">  &nbsp Book a Table &nbsp   </a></div>
<% if(flag==0){ %>
<div class="ad"><a href="login_to_vieworder.html" class="adt" style="text-decoration:none;">&nbsp  &nbsp View Order  &nbsp</a></div>
<% } %>
<% if(flag==1){ %>
<div class="ad"><a href="vieworder.jsp" class="adt" style="text-decoration:none;">&nbsp  &nbsp View Order  &nbsp</a></div>
<% } %>
<marquee style="color:red;font-size:20px;font-weight:bold; "><br>Welcome to the World of Taste</marquee>
<br><br>

<div class="rcorners1" style="background-color: #DC143C; border: 15px solid #DC143C;text-align:center;"><a href="foodfilter.html" style="color:white;text-decoration:none;">Food Filters</a></div>
<div class="rcorners1" style="background-color: green; border: 15px solid green;text-align:center;"><a href="eyefeast.html" style="color:white;text-decoration:none;">Eye feast</a></div>
<div class="rcorners1" style="background-color: #00CED1; border: 15px solid #00CED1;text-align:center;"><a href="recommendations.html" style="color:white;text-decoration:none;">Recommendations</a></div>
<br><br><br><br><br><br><br>
<div class="rcorners1" style="background-color: #708090; border: 15px solid #708090;text-align:center;"><a href="junkymonk.html" style="color:white;text-decoration:none;">Junky monk</a></div>
<div class="rcorners1" style="background-color: gold; border: 15px solid gold;text-align:center;"><a href="drop_a_love.jsp" style="color:white;text-decoration:none;">Drop a love</a></div>
<div class="rcorners1" style="background-color: #000080; border: 15px solid #000080;text-align:center;"><a href="reviews.jsp" style="color:white;text-decoration:none;">Reviews</a></div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>