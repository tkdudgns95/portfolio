<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포트폴리오 소개 페이지</title>
</head>
<style>	
@import url(//fonts.googleapis.com/earlyaccess/nanumpenscript.css);
#menu a{
  margin-left: 20px;
  margin-right: 20px;
  font-size: 30px;
  color: #58595b;
  text-decoration: none;
  font-family: Helvetica,Arial,Sans-Serif;
}

a {
		text-align:left;
	    font-family: "Arial Black", sans-serif;
        font-size: 36px;
        font-weight: bold;
        color: #ffffff;
	}
	
a:hover{
	color: rgba(255, 255, 255, 0.85);
	box-shadow: rgba(30, 22, 54, 0.7) 0 0px
	0px 40px inset;
   }
   
   b {
   text-align:left;
	    font-family: "Arial Black", sans-serif;
        font-size: 36px;
        font-weight: bold;
        color: #ffffff;
   }
   
   c	{
		font-family: 'Nanum Pen Script', cursive;
		font-size: 30px;
	}
	
  
   p {
		text-align:center;
	    font-family: "Arial Black", sans-serif;
        font-size: 40px;
        font-weight: bold;
        color: #ffffff;
	}
	
	.s1 { text-shadow: 2px 2px 4px gray; }
	
	#btn_toggle{
	font-size:14px;
	padding:10px 15px;
	border:1px solid #ddd;
	background-color:#0a76b7;
	border-radius:5px;
	color:#fff;
	font-weight:bold;
}

#btn_toggle:hover{
	color: rgba(255, 255, 255, 0.85);
	box-shadow: rgba(30, 22, 54, 0.7) 0 0px
	0px 40px inset;
   }
</style>
<body style="background-color:#F8EFFB;">

<div id="menu">
    <a href="newindex.jsp">PROFILE</a>
    <a href="personal.jsp">PERSONALITY</a>
    <a href="values.jsp">VALUES</a>
    <a href="hobby.jsp">HOBBY</a>
    <a href="portfolio.jsp">PROJECT</a>
  </div>
<p class="s1">My PROJECT</p>

<b>Team Project</b><br>
<c>이 프로젝트는 재학시절에 진행했었던 팀프로젝트이며, 5명이서 진행했었습니다.<br>
 라즈베리파이를 기반으로 한 시각적, 청각적, 외적으로 음주운전 통제를 주제로 하였습니다.<br>
MQ-3 센서를 이용하여 운전자의 알코올 감지하고, 감지되면 LED 불빛이 켜지고, 부저가 울립니다. <br>
그 후 음주운전을 하려 한다는 텔레그램 메시지를 지인들에게 전송하도록 하여 음주운전을 통제합니다. <br>
저는 이 프로젝트에서 알고리즘을 구성하고 순서도를 제작하였고, 깃허브에 올릴 발표자료를 주로 만들었습니다. <br>
팀원이 작성한 파이썬 코드와 라즈베리파이 구성도를 보면서 프로젝트에 대한 전반적인 이해를 하였고 <br>
상호간의 소통의 중요성과 협업을 통한 작업을 하였기에 매우 소중한 경험이라 생각합니다. </c> <br>
<button id="btn_toggle" type="button" onclick="window.open('https://github.com/charmingjae/raspberry')">보러가기</button> <br>
<b>Personal Project</b><br>
<c>이 프로젝트는 로그인, 회원가입 구현과 로그인 이후 게시판을 작성하는 것을 주제로한 프로젝트입니다. <br>
로그인 이후 게시판 페이지로 이동하여 글쓰기를 할 수 있고, 작성한 회원만 수정과 삭제가 가능하도록 하였습니다. <br>
이 프로젝트는 클론코딩을 하여 진행한 프로젝트 이지만 화면 디자인을 재구성하고,<br>
데이터베이스와 서버연동, 로그인과 회원가입, 글쓰기와 수정,<br> 
삭제가 어떻게 이루어지는지 이해해 볼 수 있는 시간이었고,<br> 
기본적인 게시판 구현을 할 수 있었기에 의미가 있었다고 생각합니다.<br> 
서버연동은 tomcat 8.5버전을 사용하였고, 데이터베이스는 mysql 5.7 버전을 사용하였습니다.</c><br>
<button id="btn_toggle" type="button" onclick="window.open('index.jsp')">보러가기</button>
</body>
</html>