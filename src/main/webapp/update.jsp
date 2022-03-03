<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="bbs.BbsDAO" %>
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
#menu a{
  margin-left: 20px;
  margin-right: 20px;
  font-size: 30px;
  color: #000000;
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
</style>
<body>
<div id="menu">
    <a href="main.jsp">홈</a>
    <a href="bbs.jsp">게시판</a>
    <a href="logoutAction.jsp">로그아웃</a>
  </div>
<%
String userID = null;
if (session.getAttribute("userID") != null) {
	userID = (String) session.getAttribute("userID");
}
if (userID == null) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인을 하세요.')");
	script.println("location.href = 'login.jsp'");
	script.println("</script>");	
	
}
int bbsID = 0;
if (request.getParameter("bbsID") != null) {
	bbsID = Integer.parseInt(request.getParameter("bbsID"));	
}
if (bbsID == 0) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('유효하지 않은 글입니다.')");
	script.println("location.href = 'bbs.jsp'");
	script.println("</script>");	
}
Bbs bbs = new BbsDAO().getBbs(bbsID); 
if (!userID.equals(bbs.getUserID())) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('권한이 없습니다.')");
	script.println("location.href = 'bbs.jsp'");
	script.println("</script>");	
}
%>
<div class="container">
   <div class="row">
   <form method="post" action="updateAction.jsp?bbsID=<%= bbsID %>">	
   <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
       <thead>
          <tr>
              <th colspan="2" style="background-color: #eeeeee; text-align: center;">게시판 글 수정 양식</th>         
       </tr>     
       </thead>
       <tbody>
       <tr>
            <td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50" value="<%= bbs.getBbsTitle() %>"></td>
         </tr>
         <tr>
         <td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height: 350px;"><%= bbs.getBbsContent() %></textarea></td>
         </tr>
       </tbody> 
      </table>
      <input type="submit" class="btn btn-primary pull-right" value="글수정"> 
     </form>              
   </div>
</div>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
</body>
</html>