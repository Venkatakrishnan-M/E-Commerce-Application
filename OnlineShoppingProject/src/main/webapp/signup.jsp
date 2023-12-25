<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Register</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action='signupAction.jsp' method='post'>
    <input type='text' name='name' placeholder='Enter your name' required >
    <input type='email' name='email' placeholder='Enter your email' required>
    <input type='number' name='mobileNumber' placeholder='Enter your Mobile no' required>
   	<br>
    <label class="hello" for="securityQuestion">Choose a Security Question:</label><br>
    <select name='securityQuestion' required>
    <option value='What was your first car?'>What was your first car?</option>
    <option value='What is the name of your first pet?'>What is the name of your first pet?</option>
    <option value='What elementary school did you attend?'>What elementary school did you attend?</option>
    <option value='What is the name of the town you were born?'>What is the name of the town you were born?</option>
    </select>
    <input type='text' name='answer' placeholder='Enter your answer' required>
    <input type='password' name='password' placeholder ='Set your password' required>
    <input type='submit' value='signup'>
      
    </form>	
  <h3><a href="login.jsp">Login</a></h3>
  </div>
  <div class='whysign'>
<%
	String msg = request.getParameter("msg");
	if("valid".equals(msg))
	{
%>
	<h1>Successfully Registered</h1>
<%}%>

<%
	if("invalid".equals(msg))
	{
%>
	<h1>Some thing Went Wrong! Try Again !</h1>
<%}%>

    <h2>Are you a new user ?</h2>
    <p>Sign Up Now and Dive into a Shopping Experience Like Never Before! <br><br>
It's quick, easy, and the gateway to a world of shopping convenience. <br><br>Don't miss out on the latest trends and unbeatable offers!.</p>
  </div>
</div>

</body>
</html>