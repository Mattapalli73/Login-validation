<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style> .fa{
    font-size: 50px;
    cursor: pointer;
    user-select: none;
    }
    
    .fa:hover{
        color:darkblue;
    }
    </style>
    </head></style>
</head>
<body>

<h1 > <span style="color:#FF6700">E CAR </span><span>Store</span></h1>

<h1 style="color:#5ced73">Account Registration Page</h1>

<form action="Register" method="post">
<table>

<tr><td>User First Name:</td><td><input type="text" name="userfname"  placeholder="first name" required></td></tr>
<tr><td>User Last Name:</td><td><input type="text" name="userlname"  placeholder="last name" required></td></tr>
<tr><td>User Address:</td><td><input type="text" name="useraddress"  placeholder="address" required></td></tr>
<tr><td>telephone:</td><td><input type="number" name="telephone" placeholder="telephone" required minlength=12 maxlength=12></td></tr>
<tr><td>Email:</td><td><input type="text" name="email" placeholder="email" required></td></tr>
<tr><td>User Name:</td><td><input type="text" name="username"  placeholder="username" required></td></tr>
<tr><td>Password :</td><td><input type="password" name="password" id="pass"placeholder="Password" maxlength=8 required
pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,8}$"><td></tr>
    			<tr><td><input type="checkbox" onclick="show()">Show Password</td></tr>
				<td>
	</td>
				<td><input id="submitBtn" type="submit" value="Register"
					onclick="lock"><br>
					<ul ><li class="maxLength">Password length 8 characters</li>
        <li class="upCase">1 Upper Case</li>
        <li class="lowerCase">1 Lower Case </li>
        <li class="oneSpecial">1 Special Charecter</li>
        
    </ul></td>
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>

function show(){
var p= document.getElementById("pass");
if (p.type=="password"){
	p.type="text";
	}
else{
	p.type="password";
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

<a href="mainpage.jsp"> <button>Go to Home Page</button></a>


</body>


<style>

body {
  background-image: url('https://external-preview.redd.it/FV27aYe4HWLZZeT11rijFqvKJDd8iGDjy8YSx1wYGDI.jpg?auto=webp&s=2a9a6d52d25f8bcbdfac7f44f861545a39edb22a') ;
  background-repeat: no-repeat;
   background-size: cover;
   background-attachment: fixed;
}

</style>



</html>