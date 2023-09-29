<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>ID:<c:out value="${param.infrastructureId}"/>の検索結果</h1>
	<dl>
		<dt>ID</dt>
		<dd><c:out value="${infrastructure.id}"/></dd>
		<dt>名称</dt>
		<dd><c:out value="${infrastructure.name}"/></dd>
		<dt>登録日</dt>
		<dd><fmt:formatDate pattern="yyyy年MM月dd日" value="${infrastructure.registDate}"/></dd>
	</dl>
</body>
</html>