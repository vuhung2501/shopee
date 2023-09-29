<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../define.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>都道府県を追加(確認)</h1>
	<dl>
		<dt>ID</dt>
		<dd>
			<c:out value="${prefectureFrom.id}"/>
		</dd>
		
		<dt>都道府県名</dt>
		<dd>
			<c:out value="${prefectureFrom.name}"/>
		</dd>
		
		<dt>人口</dt>
		<dd>
			<c:out value="${prefectureFrom.population}"/>
		</dd>
	</dl>
	
	<form:form modelAttribute="prefectureForm" action="input">		
		<form:hidden path="id"/>			
		<form:hidden path="name"/>			
		<form:hidden path="population"/>		
		<input type="submit" value="戻る"/>
	</form:form>
</body>
</html>