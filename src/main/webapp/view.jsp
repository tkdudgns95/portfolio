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
%>
<div class="container">
   <div class="row">
     <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
       <thead>
          <tr>
              <th colspan="3" style="background-color: #eeeeee; text-align: center;">게시판 글 보기 양식</th>         
       </tr>     
       </thead>
       <tbody>
         <tr>
            <td style="width: 20%;">글 제목</td>
            <td colspan="2"><%= bbs.getBbsTitle().replaceAll(" ","&nbsp;").replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n", "<br>") %></td>
         </tr> 
         <tr>
            <td>작성자</td>
            <td colspan="2"><%= bbs.getUserID() %></td>
         </tr>
          <tr>
            <td>작성일자</td>
            <td colspan="2"><%= bbs.getBbsDate().substring(0, 11) + bbs.getBbsDate().substring(11, 13) + "시" + bbs.getBbsDate().substring(14, 16) + "분 " %></td>
         </tr>
         <tr>
            <td>내용</td> 
            <td colspan="2" style="min-height: 200px; text-align: left;"><%= bbs.getBbsContent().replaceAll(" ","&nbsp;").replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n", "<br>") %></td>
         </tr>                         
       </tbody> 
      </table>
      <a href="bbs.jsp" class="btn btn-primary">목록</a>
      <%
            if(userID != null && userID.equals(bbs.getUserID())) {
      %>     	
            	<a href="update.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">수정</a>
            	<a onclick="return confirm('정말로 삭제하시겠습니까?')" href="deleteAction.jsp?bbsID=<%= bbsID %>" class="btn btn-primary">삭제</a>         
      <%       	
           }
      %>              
   </div>
</div>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
</body>
</html>