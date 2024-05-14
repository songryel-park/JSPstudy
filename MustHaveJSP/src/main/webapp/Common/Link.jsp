<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table border="1" width="90%">
	<tr>
		<td align="center">
		<!-- 로그인 여부에 따른 메뉴 변화 -->
		<% if (session.getAttribute("UserId") == null) { %>
			<a href="../06Session/LoginForm.jsp">로그인</a>
		<% } else { %>
			<a href="../06Session/LoginForm.jsp">로그아웃</a>
		<% } %>
			<!-- 회원제 게시판 프로젝트 링크 -->
			&nbsp;&nbsp;&nbsp; <!-- 메뉴 사이 공백용 문자 -->
			<a href="../08Board/Link.jsp">게시판(페이징X)</a>
			&nbsp;&nbsp;&nbsp; <!-- 메뉴 사이 공백용 문자 -->
			<a href="../08Board/Link.jsp">게시판(페이징O)</a>
		</td>
	</tr>
</table>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8">
<title></title>
</head>
<body>

</body>
</html>