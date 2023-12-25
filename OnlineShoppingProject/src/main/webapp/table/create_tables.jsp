<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<% try
{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	String q1 = "create table users(name varchar(100),email varchar(100) primary key,mobileNumber bigint,securityQuestion varchar(200),answer varchar(100),password varchar(100),address varchar(500),city varchar(100),state varchar(100),country varchar(100))";
	String q2 = "create table product(id int primary key, name varchar(500),category varchar(200),price int, status varchar(10))";
	String q3 = "create table cart(email varchar(100), product_id int, quantity int,price int,total int,address varchar(500),city varchar(100),state varchar(100),country varchar(100),mobileNumber bigint, orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transactionId varchar(100),status varchar(50))";
	String q4 ="create table message(id int AUTO_INCREMENT PRIMARY KEY,email varchar(100),subject varchar(500),body varchar(1000))";
	//System.out.println("\n"+q1);
	//System.out.println(q2);
	System.out.println(q4);
	//st.execute(q2);
	//st.execute(q1);
	st.execute(q4);
	System.out.println("Tables Created");
	con.close();
}
catch (Exception e)
{
System.out.println(e);
} %>
