<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>府県一覧</title>
<link href="/css/bootstrap.min.css" rel="stylesheet">
	<style>
	td .red {
		color: red;
	}
	</style>
</head>
<body>
	<div class="container">
		<h1>検索結果</h1>
		<table class="table table-striped">
			<tr>
				<th>ID</th>
				<th>名前</th>
				<th>登録日</th>
				<th>曜日</th>
			</tr>
			<c:forEach items="${infrastructureList}" var="infrastructure">
				<tr>
					<td><c:out value="${infrastructure.id}" /></td>
					<td><c:out value="${infrastructure.name}" /></td>
					<td><fmt:formatDate pattern="yyyy年MM月dd日"
							value="${infrastructure.registDate}" /></td>
					<td><fmt:formatDate pattern="E"
							value="${infrastructure.registDate}" var="day" /> 
						<c:if test="${day=='日' }">
							<span class="red"><c:out value="${day}" /></span>
						</c:if>
						 <c:if test="${day!='日' }">
							<span><c:out value="${day}" /></span>
						</c:if>
					</td>

				</tr>
			</c:forEach>

		</table>
	</div>

</body>
</html>