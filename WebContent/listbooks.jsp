<jsp:useBean  id="user"  scope="session" class="obs.User"/>
<%@ page import="java.sql.*"%>

<h3>List Of Books </h3>

<table border=1 width=100%>
<tr style="background-color:green;color:beige;font:700 10pt verdana">
<th>&nbsp;

<th>ISBN
<th>Title

<th>Author
<th>Publisher
<th>Cateogry

<th>Price
</tr>
<%
   
  String cond = (String) request.getAttribute("cond");
  if ( cond == null)
     cond = "1 = 1";
 
  Connection  con  = user.getConnection();
  Statement st= con.createStatement();

  ResultSet rs = st.executeQuery("select isbn, title, author, pub, cat, price from books where " + cond);

  while (rs.next())
  {

%>
<tr>
<td>
<a href=addbook.jsp?isbn=<%=rs.getString("isbn")%>>Add TO Cart </a>
<td><%=rs.getInt(1)%>
<td><%=rs.getString(2)%>
<td><%=rs.getString(3)%>
<td><%=rs.getString(4)%>

<td><%=rs.getString(5)%>
<td><%=rs.getInt(6)%>
</tr>

<%
  }
  rs.close();
  st.close();
  con.close();
%>

</table>





  
  