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

	<!-- 아이디 -->
		<input type="hidden" name="m_id" id="m_id" value="${memberVO.m_id }"/>
		<c:set var="m_id" value="${memberVO.m_id }"></c:set>
	
	<c:choose>
		<c:when test="${m_id eq null }">
			<span style="color: blue;">사용가능한 아이디 입니다.</span>
		</c:when>
		<c:when test="${m_id ne null }">
			<span style="color: red;">중복된 아이디 입니다.</span>
		</c:when>
	</c:choose>
		
		
	
		
	
	</body>
	
</html>