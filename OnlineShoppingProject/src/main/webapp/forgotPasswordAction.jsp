<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");
String mobileNumber= request.getParameter("mobileNumber");
String securityQuestion = request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
int check =0;
try
{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from users where email ='"+email+"' and mobileNumber = '"+mobileNumber+"'and securityQuestion='"+securityQuestion+"' and answer='"+answer+"'");
	while(rs.next())
	{
		System.out.print("hello");
		check=1;
		st.executeUpdate("update users set password ='"+password+"' where email='"+email+"'");
		response.sendRedirect("forgotPassword.jsp?msg=done");
	}
	if(check==0)
	{
		System.out.print("world");
		response.sendRedirect("forgotPassword.jsp?msg=Invalid");
	}
}
catch(Exception e)
{
	System.out.println(e);	
}

%>