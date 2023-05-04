<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<style>
	table, th, td{
	border : 1px solid black;
	}
</style>
</head>
<body>
		<table>
			<tr>
				<th>분류</th>
				<td></td>
			
			</tr>
			<tr>
				<th>제목</th>
				<td>${dto.title}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${dto.id}</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td>${dto.fbTime}</td>
			</tr>
			<c:if test="${dto.newfilename ne null}">
			<tr>
				<th>사진</th>
				<td><img width="500" src="/photo/${dto.newfilename}"/></td>
			</tr>
			</c:if>
			<tr>
				<th>내용</th>
				<td>${dto.bContent}</td>
			</tr>
			
			<tr>
				<th colspan="2">
					<input type="button" onclick="location.href='./fupdate.go?fbNo=${dto.fbNo}'" value="수정"/>
					<input type="button" onclick="location.href='./fdelete.do?fbNo=${dto.fbNo}'" value="삭제"/>
				</th>
			</tr>
		</table>	
		<input type="button" onclick="location.href='./flist.go'" value="리스트"/>
</body>
<script></script>
</html>