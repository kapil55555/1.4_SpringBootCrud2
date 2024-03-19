<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<body>
<style>
   * {box-sizing: border-box}

/* Add padding to containers */
.container {
  padding: 16px;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit/register button */
.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity:1;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}


$glass: rgba(255, 255, 255, 0.2);
$glass-icon: rgba(255, 255, 255, 0.3);
$gradient: linear-gradient(35deg, red, purple);
$option: #320a28;

body {
  
}

}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
<form action="update">
  <div class="container">
    <h1>Edit Student</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="name"><b>Student Id</b></label>
    <input type="text" placeholder="Enter id" name="uid" id="email"  value="${list.uid}">
  
     <label for="name"><b>Name</b></label>
    <input type="text" placeholder="Enter Name" name="name" id="email" value="${list.name}">

      

      <label for="name"><b>Username</b></label>
    <input type="text" placeholder="Enter username" name="uname" id="email" value="${list.uname}" >
     
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" id="psw" value="${list.password}">

    
       <label for="name"><b>Mobile no</b></label>
    <input type="text" placeholder="Enter mobile no" name="mobileno"  value="${list.mobileno}">
  
<p>By creating an account you agree to our <a href="tosuccesspage">Terms & Privacy</a>.</p>
    <button type="submit" class="registerbtn">UPDATE</button>
  </div>

    
  </div>

  <div class="container signin">
    
  </div>
</form>
</body>