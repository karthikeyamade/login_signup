<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Validate</title>
	</head>
	<body><!-- values given at login page are taken here and checks if the valid details are not -->
	<%@page import="java.sql.*,java.util.*"%>
		<%
		String user=request.getParameter("usernamelogin");
session.putValue("user",user);
String password=request.getParameter("passwordlogin");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hi","root","bye");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from hitable where username='"+user+"' and passwd='"+password+"'"); 
try{
rs.next();
if(rs.getString("passwd").equals(password)&&rs.getString("username").equals(user)) 
		
		{
		//if(username.equals("hi") && password.equals("bye"))
			//if the user is valid, then this block executes and WE ARE KEEPING THE USER IN A SESSION
			
			if (rs.getString("utype").equals("admin")){
			session.setAttribute("user", user);//THIS IS HOW WE DECLARE THE USER IN A SESSION
			response.sendRedirect("admin.jsp"); //AND WE REDIRECTED TO LOGIN PAGE
			}
			else if (rs.getString("utype").equals("user")){session.setAttribute("user",user);
			response.sendRedirect("home.jsp");}
			}
		else{
			
			//IF THE USER IS NOT AUTHORISED THEN AGAIN HE WILL BE REDIRECTED TO THE SAME LOGIN PAGE
			response.sendRedirect("/car");%>
			<script>alert("invalid username or password")</script>
			<%
		}
		}
catch (Exception e) {
response.sendRedirect("/car");
}

%> 
	</body>
</html>

