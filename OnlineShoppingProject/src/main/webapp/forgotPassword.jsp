<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='forgotPassword'>
     <form action='forgotPasswordAction.jsp' method = 'post'>
     <input type='email' name ='email' placeholder ='Enter your email' required>
     <input type='number' name ='mobileNumber' placeholder= 'Enter your mobile no' required>
     <select name='securityQuestion' required>
    <option value='What was your first car?'>What was your first car?</option>
    <option value='What is the name of your first pet?'>What is the name of your first pet?</option>
    <option value='What elementary school did you attend?'>What elementary school did you attend?</option>
    <option value='What is the name of the town you were born?'>What is the name of the town you were born?</option>
    </select>
    <input type='text' name ='answer' placeholder ='Enter your answer' required>
    <input type='password' name ='password' placeholder ='Enter New Password' required>
    <input type = 'submit' value ='Save'>
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
<%
	String msg = request.getParameter("msg");
	if("done".equals(msg))
	{
%>
	<h1>Password Changed Successfully!</h1>
<%
	}
%>

<%
	if("Invalid".equals(msg))
	{
%>
	<h1>Some thing Went Wrong! Try Again !</h1>
<%
	}
%>
 
    <h2>Forgot Password ?</h2>
    <p>No sweat!Resetting your account password is easier than you think</p>
  </div>
</div>
</body>
</html>