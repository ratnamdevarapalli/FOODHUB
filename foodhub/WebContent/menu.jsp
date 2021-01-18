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
    .box{
   border: 5px solid white;
width: 300px;
height:300px;
float:left;
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

.ad{
  background-color: blue;
  width: 300px;
  border: 15px solid blue;
  padding: 20px;
  float:left;
  margin-left:30px;
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
 <% }}%>
 <%  if(flag==0){ %>
    <form class="form-inline my-2 my-lg-0">
     
     <a href="login_to_order.html" class="btn btn-success my-2 my-sm-0" >Place Order</a>
    </form>
 <% } %>
 <%  if(flag==1){ %>
    <form class="form-inline my-2 my-lg-0">
     
     <a href="placeorder.html" class="btn btn-success my-2 my-sm-0" >Place Order</a>
    </form>
 <% } %>
 <%  if(flag==0){ %>
    <form class="form-inline my-2 my-lg-0">
     
     <a href="login.html" class="btn btn-success my-2 my-sm-0" >My Account</a>
    </form>
 <% } %>
 <%  if(flag==1){ %>
    <form class="form-inline my-2 my-lg-0">
     
     <a href="welcome.jsp" class="btn btn-success my-2 my-sm-0" >My Account</a>
    </form>
 <% } %>
 
</div>
</nav>
<br>
<h1 style="color:#D2691E;text-align:center;font-weight:bold">Menu</h1>
<marquee style="color:green;font-size:20px;font-weight:bold;"> Explore our dishes</marquee>

   <h2 style="color:#4B0082;text-align:center;font-weight:bold">STARTERS</h2>
    <div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m1.png"
         width="300" height="300px">
     
 </div>
 
    <div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m2.png"
         width="300" height="300px">
     
 </div>

    <div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m3.png"
         width="300" height="300px">
     
 </div>

    <div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m4.png"
         width="300" height="300px">
     
 </div>
 <div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m5.png"
         width="300" height="300px">
     
 </div>

    <div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m6.png"
         width="300" height="300px">
     
 </div>
 <div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m7.png"
         width="300" height="300px">
     
 </div>

    <div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m8.png"
         width="300" height="300px">
     
 </div>
 <div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m9.png"
         width="300" height="300px">
     
 </div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<h2 style="color:#4B0082;text-align:center;font-weight:bold">MAIN COURSE</h2>
    <div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m10.png"
         width="300" height="300px">
     
 </div>
<div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m11.png"
         width="300" height="300px">
     
 </div>
<div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m12.png"
         width="300" height="300px">
     
 </div>
<div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m13.png"
         width="300" height="300px">
     
 </div>
<div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m14.png"
         width="300" height="300px">
     
 </div>
<div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m15.png"
         width="300" height="300px">
     
 </div>
<div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m16.png"
         width="300" height="300px">
     
 </div>
<div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m17.png"
         width="300" height="300px">
     
 </div>
<div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m18.png"
         width="300" height="300px">
     
 </div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<h2 style="color:#4B0082;text-align:center;font-weight:bold">DESSERTS</h2> 
<div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m19.png"
         width="300" height="300px">
     
 </div>
<div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m20.png"
         width="300" height="300px">
     
 </div>
<div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m21.png"
         width="300" height="300px">
     
 </div>
<div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m22.png"
         width="300" height="300px">
     
 </div>
<div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m23.png"
         width="300" height="300px">
     
 </div>
<div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m24.png"
         width="300" height="300px">
     
 </div>
<div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m25.png"
         width="300" height="300px">
     
 </div>
<div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m26.png"
         width="300" height="300px">
     
 </div>
<div class="box" style="margin-top: 30px; margin-left: 80px;">
     
                <img alt="Image" src="menu_images/m27.png"
         width="300" height="300px">
     
 </div>
 

 </body>
</html>  

    