<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Login</title>
<link rel="icon" href="https://www.iconpacks.net/icons/4/free-icon-user-security-11932.png">
</head>
<body>


<!-- partial:index.partial.html -->
<div id="bg"></div>

<form action="Login" method="post">
<h3 id="headline">${msg}</h3>
  <div class="form-field">
    <input type="email" placeholder="Email / Username" required name="email"/>
  </div>
  
  <div class="form-field">
    <input type="password" placeholder="Password" required name="password"/> 
      </div>
  
  <div class="form-field">

<button class="btn" >Log in</button>
<button class="btn" type="reset">Cancle</button>
  </div>
  <a href="load" id="atag"> <h3> New? Click here to Sign Up</h3></a>
</form>
<!-- partial -->
  


<style>
@import url("https://fonts.googleapis.com/css?family=Lato:400,700");

#headline{
color: maroon;
position: relative;
left: 60px;
}
#bg {
  background-image:url(https://images.unsplash.com/photo-1519682577862-22b62b24e493?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Ym9vayUyMGFuZCUyMHRlYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1400&q=60);
  background-size:cover;
  position: fixed;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background-size: cover;
  filter: blur(5px);
}
#atag{
position: relative;
left: 70px;
color: maroon;
}

body {
  font-family: 'Lato', sans-serif;
  color: #4A4A4A;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  overflow: hidden;
  margin: 0;
  padding: 0;
}

form {
  width: 350px;
  position: relative;
}
form .form-field::before {
  font-size: 20px;
  position: absolute;
  left: 15px;
  top: 17px;
  color: #888888;
  content: " ";
  display: block;
  background-size: cover;
  background-repeat: no-repeat;
}
form .form-field:nth-child(1)::before {
  background-image: url(https://www.iconpacks.net/icons/4/free-icon-user-security-11932.png);
  width: 20px;
  height: 20px;
  top: 15px;
}
form .form-field:nth-child(2)::before {
  background-image: url(https://www.iconpacks.net/icons/2/free-user-icon-3296-thumb.png);
  width: 16px;
  height: 16px;
 
}
form .form-field {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  margin-bottom: 1rem;
  position: relative;
}
form input {
  font-family: inherit;
  width: 100%;
  outline: none;
  background-color: #fff;
  border-radius: 4px;
  border: none;
  display: block;
  padding: 0.9rem 0.7rem;
  box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
  font-size: 17px;
  color: #4A4A4A;
  text-indent: 40px;
}
form .btn {
  outline: none;
  border: none;
  cursor: pointer;
  display: inline-block;
  margin: 0 auto;
  padding: 0.9rem 2.5rem;
  text-align: center;
  background-color: #47AB11;
  color: #fff;
  border-radius: 4px;
  box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.16);
  font-size: 17px;
}
</style>

</body>
</html>