<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹 사이트</title>
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
	
h3	{
  		
		font-family: 'Nanum Pen Script', cursive;
		font-size: 30px;
	}
	
	a,p{
		text-decoration:none !important
	}
	
	

</style>
<body>
  <a onclick = "location.href='login.jsp'"><p>My board site</p></a>
<div class="container">
  <div class="col-lg-4"></div>
  <div class="col-lg-4">
     <div class="jumbotron" style="padding-top: 20px;">
      <form method="post" action="joinAction.jsp">
         <h3 style="text-align: center;">Sign up</h3>
         <div class="form-group">
           <input type="text" class="form-control" placeholder="ID" name="userID" maxlength="20">
         </div>
         
          <div class="form-group">
           <input type="password" class="form-control" placeholder="Password" name="userPassword" maxlength="20">
         </div>
         <div class="form-group">
           <input type="text" class="form-control" placeholder="Name" name="userName" maxlength="20">
         </div>
         <div class="form-group" style="text-align: center;">
            <div class="btn-group" data-toggle="buttons">
               <label class="btn btn-primary active">
                  <input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
               </label>
               <label class="btn btn-primary">
                  <input type="radio" name="userGender" autocomplete="off" value="여자" checked>여자
               </label>
            </div>
         </div>
         
         <div class="form-group">
           <input type="email" class="form-control" placeholder="Email" name="userEmail" maxlength="20">
         </div>
         
         <input type="submit" class="btn btn-primary form-control" value="회원가입">
      </form>
      </div>
     </div>
  <div class="col-lg-4"></div>
</div>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>