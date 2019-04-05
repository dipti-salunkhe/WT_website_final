<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<font  face="Cooper Black" size="31" color="Orange" class="text-center">Welcome</font>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
div{
  background-color: lightgrey;
  width: 300px;
  border: 25px solid Tomato;
  padding: 25px;
  margin: 25px;
  text-orientation: center;
}
</style>

<script>
	//Javascript
function formValidate()
{
    var x=document.forms["myform"]["fname"].value;
    
    if (x=="@"| x=="#" | x=="$" | x=="%" | x=="&")
      {alert("Special Symbols are not allowed");
       return false;
      }
     else if (x=="")
      {alert("Feild cant be empty");
       return false;
      }
    
}
function refreshform()
{
document.getElementById("myform").reset(); 
}
</script>



</head>
<body background="F:\wt\dipti\WebContent\WEB-INF\images\20.png">

<h1><font face="Cooper Black" size="5" color="white">Register Yourself For Techligent</font></h1>
<p><font face="Cooper Black" size="3" color="white">



<form id="myform" name="myform"  style="padding: 55px">


FirstName       :   <input type="text" name="fname">
 <input type="submit" value="Submit" onclick="return formValidate()" method="post">

<br>
<br>

<br>
<br>
College Name    :  <input list="college" name="college">
                <datalist id="college">
<option value="Pccoe,nigdi">
<option value="PccoeR,Ravet">
<option value="NMIT">
<option value="MIT,kohrud">
<option value="COEP,Pune">
<option value="PICT,katraj">
<option value="Commins">
</datalist>
<br>
<br>
<br>
Event Name     : <select name="event">
           <option value="Codex">Invictus</option>
           <option value="Contraption">PCL</option>
	   <option value="Tresure Hunt">Idea Presentation</option>
	   <option value="DBug the Bugs">dronovation</option>
	   <option value="Fuge">Balance Weight</option>
	   <option value="SqaudGoals">SqaudGoals</option>
	   
           </select>
<br>
<br>

<br>
<br>
Pick your date :
<select name="date1" size="3">
<option value="20/1/19">20 Jan</option>
<option value="21/1/19">21 Jan</option>
<option value="22/1/19">22 Jan</option>
<option value="23/1/19">23 Jan</option>

</select>
<br>
<br>
<br>



</font>
<input type="submit" value="Submit">
<br>
<br>
<br>
<input type="button" onclick="refreshform()" value="reset form">



<div>
This is event organized by PCCOE.<br> 
We you want to register then<br> link is given below.<br>
for more contact:<br>
xyz:1454546656
</div>



</form>
</p>
</body>

<%
String val1,val2,val3,val4,query;
val1=request.getParameter("fname");
val2=request.getParameter("college");
val3=request.getParameter("event");
val4=request.getParameter("date1");




Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","kiran49","kiran49");

query="insert into dipti12 values (?,?,?,?)";
PreparedStatement pst=con.prepareStatement(query);

pst.setString(1,val1);
pst.setString(2,val2);
pst.setString(3,val3);
pst.setString(4,val4);
pst.executeUpdate(); 



%>







</html>