<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹 사이트</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">

</head>
<style>
@import url(//fonts.googleapis.com/earlyaccess/nanumpenscript.css);
#menu a{
  margin-left: 20px;
  margin-right: 20px;
  font-size: 30px;
  color: #F0FFFF;
  text-decoration: none;
  font-family: Helvetica,Arial,Sans-Serif;
}

a {
	color:white;
	text-decoration:none;
}
a:hover{
	color: rgba(255, 255, 255, 0.85);
	box-shadow: rgba(30, 22, 54, 0.7) 0 0px
	0px 40px inset;
   }

body {
	
	background-image: url("images/note.jpg");
	 -webkit-background-size: cover;
  	-moz-background-size: cover;
 	 -o-background-size: cover;
	background-size:cover;
}

p  {
	font-family: 'Kaushan Script', cursive;
	text-align:center;
	color:#F0FFFF;
	font-size:30px;	
	}
	
c	{
		font-family: 'Nanum Pen Script', cursive;
		color:#F0FFFF;
		font-size: 30px;
	}
	#wrap {
    min-height: 100vh;
    position: relative;
    width: 100%;
}
footer {
	width: 100%;
	height: 110px; /* 내용물에 따라 알맞는 값 설정 */
	bottom: 0px;
	position: absolute;
}
</style>
<body>
<div id="menu">
    <a href="main.jsp">Home</a>
    <a href="bbs.jsp">Board</a>
    <a href="logoutAction.jsp">Logout</a>
  </div>
  <p>Welcome!</p><br>
  <c>환영합니다. 이 사이트는 상단의 board 탭을 통해 게시판으로 이동하여 게시글을 작성할 수 있습니다. <br>
  게시글 10개 마다 다음 목록으로 넘어가며, 수정과 삭제가 가능합니다.<br>
  수정과 삭제는 게시글을 작성한 회원정보에게만 권한을 부여합니다.
  </c>
  <div id='wrap'>
    	<section>
    	</section>
<footer>         
          <p>
              <span>저자 :tkdudgns95</span><br/>
              <span>이메일 :tkdudgns95@naver.com</span><br/>
              <span>Copyright 2022.tkdudgns95.All Rights Reserved.</span>
          </p>         
      </footer>
      </div>	   
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>    
</body>
</html>