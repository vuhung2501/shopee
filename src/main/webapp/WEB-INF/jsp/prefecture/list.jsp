<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>府県一覧</title>
	<link href="/css/bootstrap.min.css" rel="stylesheet">
	<style>
		td.red {
			color:red;
		}
		td.yellow {
			color:yellow;
		}
		td.blue {
			color:blue;
		}
	</style>
</head>
<body>
	<div class="container">
		<h1>府県一覧</h1>
		<table class="table table-striped">
			<tr>
				<th>都道府県名</th>
				<th>人口</th>
				<th>３地方区分</th>
				<th>８地方区</th>
				<th></th>
			</tr>
			<c:forEach items="${prefectureList}" var="prefecture" varStatus="st">
				<tr>
					<td><c:out value="${st.count}"/><c:out value="${prefecture.name}"/></td>
					<td
						<c:choose>
							<c:when test="${prefecture.population > 2000000}">
								class="red"
							</c:when>						
							<c:when test="${prefecture.population > 1000000 }">
								class="yellow"
							</c:when>
							<c:otherwise>
								class="blue"
							</c:otherwise>
						</c:choose>>
						<fmt:formatNumber pattern="#,###" value="${prefecture.population}"/>
						
						
					</td>
					<td><c:out value="${prefecture.section3Id}"/></td>
					<td><c:out value="${prefecture.section8Id}"/></td>
					
					<td>
						<a href="../prefectureUpdate/init?prefectureId=
						<c:out value="${prefecture.id}"/>"
						 class="btn btn-primary">編集</a>
					</td>									
				</tr>
			</c:forEach>		
			
		</table>
		<c:forEach begin="11" end="20" step="2" var="i">
				<li><c:out value="${i}"></c:out></li>
			</c:forEach>
	</div>
	
</body>
</html>