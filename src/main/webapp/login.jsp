<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/styles.css"> 
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">



</head>

<style>
@import url(//fonts.googleapis.com/earlyaccess/nanumpenscript.css);


p  {
	font-family: 'Kaushan Script', cursive;
	text-align:center;
	font-size:30px;
	
	}
 h4	{
  		
		font-family: 'Nanum Pen Script', cursive;
		font-size: 30px;
	}

</style>

<body>
<p>My board site</p>

<div class="container">
  <div class="col-lg-4"></div>
  <div class="col-lg-4">
     <div class="jumbotron" style="padding-top: 20px;">
      <form method="post" action="loginAction.jsp">
         <h4 style="text-align: center;">Login</h4>
         <div class="form-group">
           <input type="text" class="form-control" placeholder="ID" name="userID" maxlength="20">
         </div>
         
          <div class="form-group">
           <input type="password" class="form-control" placeholder="Password" name="userPassword" maxlength="20">
         </div>
         <input type="submit" class="btn btn-primary form-control" value="로그인"> <br><br>
          <button type="button" class="btn btn-primary form-control" onclick = "location.href='join.jsp'">회원가입</button>
      </form>
      </div>
     </div>
  <div class="col-lg-4"></div>
</div>

  
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>