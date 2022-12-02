<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css">
<meta charset="ISO-8859-1">
<title>Main Login Page</title>

<style>


body {
  background-image: url('https://external-preview.redd.it/FV27aYe4HWLZZeT11rijFqvKJDd8iGDjy8YSx1wYGDI.jpg?auto=webp&s=2a9a6d52d25f8bcbdfac7f44f861545a39edb22a') ;
  background-repeat: no-repeat;
   background-size: cover;
   background-attachment: fixed;
}




.fa{
    font-size: 50px;
    cursor: pointer;
    user-select: none;
    }
    
    .fa:hover{
        color:darkblue;
    }
</style>
</head>

<body>
<h1 > <span style="color:#FF6700">E CAR </span><span>Store</span></h1>
<h1 style="color:#5ced73">User Account Login Page</h1>

	<form action="login" method="post">
		<table>
			<tr>
				<td>
				<td>
					<p style="color:red"><%= session.getAttribute("message") != null ? session.getAttribute("message") : "" %></p>
					<% session.setAttribute("message", ""); %>
				</td>
				<td>
			
			<tr>
				<td>User Name:</td>
				<td><input type="text" name="username" required placeholder="Username"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" id="pass" required id="pass" placeholder="Password" maxlength=8 pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,8}$">
			 
				
				
				</td></tr>
				<ul>
    			<tr><td><input type="checkbox" onclick="show()">Show Password</td></tr>
	
		
				<td>
	</td>
				<td><input id="submitBtn" type="submit" value="Click to Login"
					onclick="lock"><br>
					
					<ul >
					<li class="maxLength">Password length 8 characters</li>
        <li class="upCase">1 Upper Case</li>
        <li class="lowerCase">1 Lower Case </li>
        <li class="oneSpecial">1 Special Charecter</li>
        
    </ul></td>
		

<form name="frm" method="post" action="../ErrorMessage">



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
			<script>
				function show() {
					var p = document.getElementById("pass");
					if (p.type == "password") {
						p.type = "text";
					} else {
						p.type = "password";
					}
				}
			
			        $(document).ready(function(){
			            var upperCase=new RegExp('[A-Z]');
			            var lowerCase=new RegExp('[a-z]');
			            
			            $("#pass").keyup(function(){
			                var password=$(this).val()
			                if(password.length==8){
			                    $(".maxLength").css("color","white");
			                }else{
			                    $(".maxLength").css("color","red");
			                }
			                
			                
			                if(password.match(upperCase)){
			                    $(".upCase").css("color","white");
			                }else{
			                    $(".upCase").css("color","red");
			                }
			                 
			                if(password.match(lowerCase)){
			                    $(".lowerCase").css("color","white");
			                }else{
			                    $(".lowerCase").css("color","red");
			                }
			                
			                
			                if(/^[a-zA-Z0-9- ]*$/.test(password)==false){
			                    $(".oneSpecial").css("color","white");
			                }else{
			                    $(".oneSpecial").css("color","red");
			                }    })    })
				
			</script>

		</table>
		
		
	</form>

		<br>
		<br>
		
		<a href="mainpage.jsp"> <button>Go to Home Page</button></a>

</body>
</html>