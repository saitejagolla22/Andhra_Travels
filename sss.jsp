<%@page import="java.sql.*"%>
<%
try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","saiteja");
 
String sql="select name,noof,sdate,m1,m2,email from booking";
PreparedStatement stmt=con.prepareStatement(sql);  
ResultSet rs=stmt.executeQuery();  

%>
<html>
<body bgcolor=black>
<table border=1 bgcolor=black width=1500>
<br>
<tr>
<td bgcolor=black colspan=8 ><center>
<img src="gif.gif" height=100 width=180 align=left>
<img src="volvo.gif" height=100 width=200 align=right>
<img src="title.jpg" height=100 width=1100 align=center>

</center><br></td>
</tr> </table>
<center>
<font color="green">
<h1><i>Welcome to User Details</i></h1>
</font>
<!DOCTYPE html>
<html>
<head>
<style>
.button {
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  cursor: pointer;
}

.button2 {background-color: #008CBA;} /* Blue */
input[type=text], select {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border;
}
.center {
  margin: auto;
  width: 60%;
  padding: 10px;
}



</style>
</head>
<body>
<div class=container>
<div class="center">
<h2>Search User By Mail Id</h2>
<form action="mailsearch.jsp">
<input type="text" placeholder="enter user email id" name="email"><input type="submit" value="Search" required="required" class="button button2" >
</form>
</div>
</div>
</body>
</html>
<table border="3" bgcolor="white" width=1200 height=250>

<tr>

<th colspan="7" bgcolor="green" align="center"><font color="red" size=7><b>User Details</b></font></th></tr>
<tr>
<td><font color="red" size=5>Name of the Head</font></td>
<td><font color="red" size=5>No of members</font></td>
<td><font color="red" size=5>Starting Date</font></td>
<td><font color="red" size=5>Mobile Number 1</font></td>
<td><font color="red" size=5>Mobile Number 2</font></td>
<td><font color="red" size=5>Email Address</font></td>
<td><font color="red" size=5>Password</font></td>
</tr></font>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(7)%></td>
</tr>
<%
}
%>
</table>
<br>
<br>
<A href="admin.html">
 <img src="back to home.jpg" height=100 width=500 align=right</A>
<% }
catch(Exception e)
{
 out.println(e.toString());
}
%>