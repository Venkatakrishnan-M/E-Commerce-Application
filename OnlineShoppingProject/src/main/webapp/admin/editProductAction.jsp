<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String category = request.getParameter("category");
	String price = request.getParameter("price");
	String active = request.getParameter("status");
	
try
{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("update product set name='"+name+"',category='"+category+"',price='"+price+"',status='"+active+"' where id='"+id+"';");
	if(active.equals("No"))
	{
		st.executeUpdate("delete from cart where product_id ='"+id+"'and address is NULL");
		
	}
	response.sendRedirect("allProductEditProduct.jsp?msg=done");


}
catch(Exception e)
{	
	e.printStackTrace();
	System.out.println("\n\n"+e);
	response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}
	
%>