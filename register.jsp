<%@ page import="java.sql.*"%>


<%
String Fname=request.getParameter("fname");
String Lname=request.getParameter("lname");
String email=request.getParameter("email");
String password=request.getParameter("password");
String cpassword=request.getParameter("cpassword");

	try{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","saiteja");
		PreparedStatement ps=conn.prepareStatement("insert into register values(?,?,?,?,?)");
		ps.setString(1,Lname);
		ps.setString(2,Fname);
		ps.setString(3,email);
		ps.setString(4,password);
		ps.setString(5,cpassword);
		int i=ps.executeUpdate();
		if(i!=0){
			out.println("registration is completed");
		}
		else{
			out.println("once again please check the information");
		}
	}
	catch(Exception e){
		out.print(e);
	}
%>