monthly_report.jsp

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" text="text/css" href="style.css">
<style>
* {
  box-sizing: border-box;
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

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
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
background-color:white;
color:maroon;
}
}
li a.active{
background-color: silver;
color:black;
}
#lp
{
float:right;
}
#sp
{
float:right;
}
a
{
text-decoration:None;
}
#myTable th, #myTable td {
  text-align: center;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
li a:hover{
background-color:brown;
color:white;
}
</style>
</head>
<body>


<br>
<nav class="navbar navbar-expand-lg navbar-dark bg-danger">
  <a class="navbar-brand" href="home.jsp">FOODHUB</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
     <li class="nav-item active">
        <a class="nav-link" href="aboutus.html">About <span class="sr-only">(current)</span></a>
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

<table id="myTable">
  <tr class="header">
    <th style="width:100%;font-size:30px;color:#6B5B95">Months</th>
   
  </tr>
  <tr>
   
    <td style="background-color:red;"><a href="jan.jsp" style="color:white;font-weight:bold;">January</a></td>
  </tr>
  <tr>
 
    <td style="background-color:white;"><a href="feb.jsp" style="color:red;font-weight:bold;">February</a></td>
  </tr>
   <tr>
   <td style="background-color: red;"><a href="march.jsp" style="color:white;font-weight:bold;">March</a></td>
  </tr>
  <tr>
 
    <td style="background-color:white;"><a href="april.jsp" style="color:red;font-weight:bold;">April</a></td>
  </tr>
  <tr>
 <tr>
 
    <td style="background-color:red;"><a href="may.jsp" style="color:white;font-weight:bold;">May</a></td>
  </tr>
<tr>
    <td style="background-color:white"><a href="june.jsp" style="color:red;font-weight:bold;">June</a></td>
  </tr>
  <tr>
   
    <td style="background-color:red;"><a href="july.jsp" style="color:white;font-weight:bold;">July</a></td>
  </tr>
  <tr>
   
    <td style="background-color:white;"><a href="aug.jsp" style="color:red;font-weight:bold;">August</a></td>
  </tr>
  <tr>
   
    <td style="background-color:red;"><a href="sept.jsp" style="color:white;font-weight:bold;">September</a></td>
  </tr>
  <tr>
   
    <td style="background-color:white;"><a href="oct.jsp" style="color:red;font-weight:bold;">October</a></td>
  </tr>
  <tr>
   
    <td style="background-color:red;"><a href="nov.jsp" style="color:white;font-weight:bold;">November</a></td>
  </tr>
<tr>
 
  <td style="background-color:white;"><a href="dec.jsp" style="color:red;font-weight:bold;">December</a></td>
</tr>

    </table>



</body>
</html>
