<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹 사이트</title>
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/nanumpenscript.css);
#menu a{
  margin-left: 20px;
  margin-right: 20px;
  font-size: 30px;
  color: #000000;
  text-decoration: none;
  font-family: Helvetica,Arial,Sans-Serif;
}
a {
	color:#000000;
	text-decoration:none;
}
a:hover{
	color: rgba(255, 255, 255, 0.85);
	box-shadow: rgba(30, 22, 54, 0.7) 0 0px
	0px 40px inset;
   }
   
</style>
</head>
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
int pageNumber = 1;
if (request.getParameter("pageNumber") != null) {
	pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
}
%>       	          	    
<div class="container">
   <div class="row">
      <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
       <thead>
          <tr>
              <th style="background-color: #eeeeee; text-align: center;">번호</th>
              <th style="background-color: #eeeeee; text-align: center;">제목</th>     
              <th style="background-color: #eeeeee; text-align: center;">작성자</th>     
              <th style="background-color: #eeeeee; text-align: center;">작성일</th>     
                     
       </tr>     
       </thead>
       <tbody>
       <%
            BbsDAO bbsDAO = new BbsDAO();
            ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
            for(int i = 0; i < list.size(); i++) {           	
        %>   	
         <tr>
            <td><%= list.get(i).getBbsID() %></td>
            <td><a href="view.jsp?bbsID=<%= list.get(i).getBbsID() %>"><%= list.get(i).getBbsTitle().replaceAll(" ","&nbsp;").replaceAll("<", "&lt;").replaceAll(">","&gt;").replaceAll("\n", "<br>") %></a></td>
            <td><%= list.get(i).getUserID() %></td>
            <td><%= list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시" + list.get(i).getBbsDate().substring(14, 16) + "분 " %></td>           
         </tr>
         <%    
              } 
         %>          
         </tbody>
      </table>
      <%
          if(pageNumber != 1) {
      %> 	  
          <a href="bbs.jsp?pageNumber=<%=pageNumber - 1%>" class="btn btn-success btn-arraw-Left">이전</a>
      <% 
           } if(bbsDAO.nextPage(pageNumber + 1)) {
      %>  	   
      	   <a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>" class="btn btn-success btn-arraw-Left">다음</a>
      <%  	   
           }
      %>   
      <a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>   
   </div>
</div>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
</body>
</html>