<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String outerPath1 = "./OuterP1.jsp";
String outerPath2 = "./OuterP2.jsp";
pageContext.setAttribute("pAttr", "동명왕");
request.setAttribute("rAttr", "온조왕");
%>
<html>
<head><title>지시어와 액션 태그 동작 방식 비교</title></head>
<body>
    <h2>지시어와 액션 태그 동작 방식 비교</h2>
    <!-- 지시어 방식 -->
    <h3>지시어로 페이지 포함</h3>
    <%@ include file="./OuterP1.jsp"%>
    <%--@ include file="<%=outerPath1OuterP1%>" --%>
    <p>외부 파일에 선언한 변수 : <%=newVar1%></p>

    <!-- 액션 태그 방식 -->
    <h3>액션 태그로 페이지 포함</h3>
    <jsp:include page="./OuterP2.jsp" />
    <jsp:include page="<%=outerPath2%>" />
    <p>외부 파일에 선언한 변수 : <%--=newVar2 --%></p>
</body>
</html>