<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - isErrorPage</title>
</head>
<body>
	<h2>서비스 중 일시적 요류가 발생했습니다.</h2>
	<p>
		오류명 : <%= exception.getClass().getName() %> <br />
		오류메시지 : <%= exception.getMessage() %>
	</p>
</body>
</html>