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
#bill{
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
    width: 95%;
  margin-left: 40px;
  margin-right : 40px;
}

#bill td, #bill th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align :center;
  
}

#bill tr:nth-child(even){background-color: #f2f2f2;}

#bill tr:hover {background-color: #ddd;}

#bill th {
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
</nav><br><br>

<table id="bill">
 <tr>
    <th>Item</th>
    <th>Cost</th>
   
  </tr>
<%

  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/foodhub","root","root");
  Statement st=con.createStatement();
  String starter,maincourse,dessert;
  String email=(String)session.getAttribute("email");
  ResultSet rs=st.executeQuery("select * from place_order where email='"+email+"' ");
 
  int flag=0;
  int cost1=0,cost2=0,cost3=0,sum=0,total=0;
  while(rs.next())
  {
 starter=rs.getString("starter");
 maincourse=rs.getString("maincourse");
 dessert=rs.getString("dessert");
 %>
 <% 


 if(starter.equals("spring rolls"))
		cost1=200;
 if(starter.equals("bacon rings"))
		cost1=250;
 if(starter.equals("gobi manchuria"))
		cost1=150;
 if(starter.equals("masala chaas"))
		cost1=50;
 if(starter.equals("tomato soup"))
		cost1=75;
 if(starter.equals("chickenm ajestic"))
		cost1=175;
 if(starter.equals("cheese balls"))
		cost1=100;
if(starter.equals("paneer tikka"))
	    cost1=250;
if(starter.equals("fish fingers"))
	cost1=220;
if(starter.equals("no need"))
	cost1=0;
if(maincourse.equals("kadai paneer"))
	cost2=250;
if(maincourse.equals("vegetable fried rice"))
	cost2=125;
if(maincourse.equals("chicken dum biryani"))
	cost2=300;
if(maincourse.equals("butternaan with veg mixed curry"))
	cost2=200;
if(maincourse.equals("palak paneer"))
	cost2=120;
if(maincourse.equals("chicken tikki masala"))
	cost2=400;
if(maincourse.equals("aloo matar curry"))
	cost2=150;
if(maincourse.equals("brinjal curry"))
	cost2=80;
if(maincourse.equals("chana masala curry"))
	cost2=125;
if(maincourse.equals("no need"))
	cost2=0;
if(dessert.equals("fried ice cream"))
	cost3=210;
if(dessert.equals("samosa dessert lasanga"))
	cost3=185;
if(dessert.equals("oreo truffles"))
	cost3=280;
if(dessert.equals("vanilla pudding"))
	cost3=350;
if(dessert.equals("cookie dough ice cream sandwich"))
	cost3=130;
if(dessert.equals("swis roll cake"))
	cost3=235;
if(dessert.equals("lafthouse cookies"))
	cost3=214;
if(dessert.equals("keto peanut butter"))
	cost3=115;
if(dessert.equals("keto taquitoes"))
	cost3=165;
if(dessert.equals("no need"))
	cost3=0;
sum=cost1+cost2+cost3;
total=total+sum;
 %>
 <tr>
    <td><%=starter %></td>
    <td><%=cost1%> /-</td>
 </tr>
 <tr>
    <td><%=maincourse %></td>
    <td><%=cost2%> /-</td>
   </tr> 
   <tr>
    <td><%=dessert %></td>
    <td><%=cost3%> /-</td>
  </tr>
 
 <%} %>
 <tr>
 <td style="font-weight:bold">Total</td>
 <td style="font-weight:bold"><%=total%> /-</td>
 </tr>
 </table>
 
 
</body></html>