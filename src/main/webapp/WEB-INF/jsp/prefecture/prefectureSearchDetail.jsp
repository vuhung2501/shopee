<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PREFECTURE 検索結果</title>
</head>
<body>
	<h1>ID:<c:out value="${param.prefectureId}"/>の検索結果</h1>
	<dl>
		<dt>ID</dt>
		<dd><c:out value="${prefecture.id}"/></dd>
		<dt>名称</dt>
		<dd><c:out value="${prefecture.name}"/></dd>
		<dt>人口</dt>
		<dd><fmt:formatNumber pattern="#,###" value="${prefecture.population}"/></dd>
	</dl>
</body>
</html>