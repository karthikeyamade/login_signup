<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Home</title>
		<style>
		body{background:rgba(40,57,101,.9);
		box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
		}
		</style>
		
	</head>
	<body>
		<%
		//HERE WE GETTING THE ATTRIBUTE DECLARED IN VALIDATE.JSP AND CHECKING IF IT IS NULL, THE USER WILL BE REDIRECTED TO LOGIN PAGE
		
		
				String uid = (String)session.getAttribute("user");
				if (uid == null)
				{
		%><!-- NOT A VALID USER, IF THE USER TRIES TO EXECUTE LOGGED IN PAGE DIRECTLY, ACCESS IS RESTRICTED -->
					 <jsp:forward page="/car"/>
		<%	
				}
				else{  //IF THE VALUE IN SESSION IS NOT NULL THEN THE IS USER IS VALID
				
				HttpSession nsession = request.getSession(false);
if(nsession!=null){
					out.println(" <h1>Welcome, " +uid+"</h1>");
					%>
					<!-- WE HAVE GIVEN LOGOUT.JSP FILE INORDER TO LOGOUT THE SESSION -->
					<a href="logout.jsp">Logout</a>
				<% }else{%><jsp:forward page="/car"/>  <%}
				} %>
	</body>
</html>

