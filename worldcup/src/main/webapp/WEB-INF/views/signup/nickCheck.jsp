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
	<!-- 닉네임 -->
		<input type="hidden" name="m_nickname" id="m_nickname" value="${memberVO.m_nickname }"/>
		<c:set var="m_nickname" value="${memberVO.m_nickname }"></c:set>
	
	<input type="hidden" name="m_nickname" id="m_nickname" value="${memberVO.m_nickname }"/>
		<c:set var="m_nickname" value="${m_nickname}"></c:set>
	<c:choose>
		<c:when test="${m_nickname eq null }">
			<span style="color: blue;">사용가능한 닉네임 입니다</span>
		</c:when>
		<c:when test="${m_nickname ne null }">
			<span style="color: red;">중복된 닉네임 입니다.</span>
		</c:when>
	</c:choose>
</body>
</html>