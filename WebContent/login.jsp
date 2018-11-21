
<%-- 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
String userid=request.getParameter("usr"); 
session.putValue("userid",userid); 
String pwd=request.getParameter("pwd"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Rahul@123"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from users where user='"+userid+"'"); 
if(rs.next()) 
{ 
if(rs.getString(2).equals(pwd)) 
{ 
//out.println("welcome "+userid); 
response.sendRedirect("home.jsp");

} 
else 
{ 
out.println("Invalid password try again"); 
} 
}
else
%>
Invalid Username try again

</body>
</html>
--%>



<html>
<body bgcolor="beige">
<center>

<jsp:useBean id="user" class="obs.User" scope="session" />

<jsp:setProperty  name="user" property="*" />

<%
  user.login();
		
  out.println(user.isLogged());
		
  
		
  if (user.isLogged()){
	  out.println("you are logged in");
	  response.sendRedirect("home.jsp");
  }
  else
  {
	  out.println("<h1>Invalid login <a href=Login.html>here</a> try again </h1>");
  }
%>



</center>
</body>
</html>
     
    
   

     
    
   

