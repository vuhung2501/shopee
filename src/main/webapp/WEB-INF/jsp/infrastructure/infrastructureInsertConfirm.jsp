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
	<h1>インフラを追加(確認)</h1>
	<dl>
		<dt>ID</dt>
		<dd>
			<c:out value="${infrastructureForm.id}"/>
		</dd>
		
		<dt>インフラ名</dt>
		<dd>
			<c:out value="${infrastructureForm.name}"/>
		</dd>
		<dt>登録日</dt>
		<dd>
			<c:out value="${infrastructureForm.registDate}"/>
		</dd>
	</dl>
	
	<form:form modelAttribute="infrastructureForm" action="input">		
		<form:hidden path="id"/>			
		<form:hidden path="name"/>	
		<form:hidden path="registDate"/>	
		<input type="submit" value="戻る"/>
	</form:form>
</body>
</html>