
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='login'>
     <form action='loginAction.jsp' method='post' >
     <input name='email' type='email' placeholder ='Enter email' required>
     <input name='password' type='password' placeholder='Enter password' required>
     <input type='submit' name='login'> 
     </form>
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
  String msg= request.getParameter("msg");
  if("notexist".equals(msg))
  {%>
  <h3>Incorrect Username or Password </h3>
  <%}%>
  <%
  if("invalid".equals(msg)) 
  {%>
  <h3>Some thing Went Wrong! Try Again ! Possible Error</h3>
 <%} %>
    <h2>Login</h2>
    <p>Please login in using your email and password.</p>
  </div>
</div>

</body>
</html>