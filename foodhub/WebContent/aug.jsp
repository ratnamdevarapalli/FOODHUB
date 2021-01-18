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
#daily {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
    width: 95%;
  margin-left: 40px;
  margin-right : 40px;
}

#daily td, #daily  th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align :center;
  
}

#daily tr:nth-child(even){background-color: #f2f2f2;}

#daily tr:hover {background-color: #ddd;}

#daily th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #8A2BE2;
  color: white;
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
  
</div>
</nav><br>
<br>
<table id="daily">
 <tr>
    <th>Month</th>
    <th>Email</th>
    <th>tabletype</th>
    <th>Purpose</th>
    <th>Meetplan</th>
  </tr>
<%
 
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodhub","root","root");
  Statement st=con.createStatement();
  ResultSet rs=st.executeQuery("select email,tabletype,purpose,meetplan from reservetables  where date1 like '_____08___' ");
  String date1,email,tabletype,purpose,meetplan;
  int flag=0;
  while(rs.next())
  {
 email=rs.getString("email");
 tabletype=rs.getString("tabletype");
 purpose=rs.getString("purpose");
 meetplan=rs.getString("meetplan");
 %>
 <tr>
    <td>August</td>
    <td><%=email %></td>
    <td><%=tabletype %></td>
    <td><%=purpose%></td>
    <td><%=meetplan%></td>
  </tr>
 <%} %>
</body></html>