<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 이메일 -->
		<input type="hidden" name="m_email" id="m_email" value="${memberVO.m_email }"/>
		<c:set var="m_email" value="${memberVO.m_email }"></c:set>
<%-- 	
	<input type="hidden" name="m_email" id="m_email" value="${m_email }"/>
		<c:set var="m_email" value="${m_email }"></c:set> --%>
	<c:choose>
		<c:when test="${m_email eq null }">
			<span style="color: blue;">사용가능한 이메일 입니다.</span>
		</c:when>
		<c:when test="${m_email ne null }">
			<span style="color: red;">중복된 이메일 입니다.</span>
		</c:when>
	</c:choose>
</body>
</html>