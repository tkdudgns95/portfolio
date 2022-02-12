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
a,th,td {
		font-family:'Nanum Pen Script', cursive;
		font-size: 30px;
	}
	input::placeholder {
	
	font-family:'Nanum Pen Script', cursive;
	color: black;
		
		font-size: 20px;
	
	}
	
	textarea::placeholder {
		font-family:'Nanum Pen Script', cursive;
		
		font-size: 20px;
	
	}
	
	body,tbody,tr{
	background-image: url("images/writepage.jpg");
	 -webkit-background-size: cover;
  	-moz-background-size: cover;
 	 -o-background-size: cover;
	
	background-repeat:no-repeat;
	}
	
	.navbar-default {
    background:linear-gradient(lightCyan, skyBlue, deepSkyBlue);
    border-color: #E7E7E7;
}



</style>
<body>
<div id="menu">
    <a href="main.jsp">Home</a>
    <a href="bbs.jsp">Board</a>
    <a href="logoutAction.jsp">Logout</a>
  </div>
<%
String userID = null;
if (session.getAttribute("userID") != null) {
	userID = (String) session.getAttribute("userID");
}
%>
<div class="container">
   <div class="row">
   <form method="post" action="writeAction.jsp">	
   <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
       <thead>
          <tr>
              <th colspan="2" style="background-color: #ffffff; text-align: center;">게시판 글쓰기 양식</th>         
       </tr>     
       </thead>
       <tbody>
       <tr>
            <td><input type="text" class="form-control"  placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
         </tr>
         <tr>
         <td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height: 350px;"></textarea></td>
         </tr>
       </tbody> 
      </table>
      <input type="submit" class="btn btn-primary pull-right" value="글쓰기"> 
     </form>              
   </div>
</div>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
</body>
</html>