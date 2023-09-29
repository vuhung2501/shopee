<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../define.jsp" %>
<%@include file="../common/header.jsp" %>

<h1>都道府県を更新（確認）</h1>
	<dl>
		<dt>ID</dt>
		<dd>
			<c:out value="${prefectureForm.id}"/> 
		</dd>
		<dt>都道府県名</dt>
		<dd>
			<c:out value="${prefectureForm.name}"/> 
		</dd>
		<dt>人口</dt>
		<dd>
			<c:out value="${prefectureForm.population}"/> 
		</dd>
		<dt>３地方区分</dt>
		<dd>
			<c:out value="${section3.name}"/> 
		</dd>
		<dt>インフラ有無</dt>
		<dd>
			<c:forEach items="${infrastructureList}" var="infrastructure">
			     <c:out value="${infrastructure.name}"/>
			</c:forEach>
		</dd>
	</dl>
<form:form modelAttribute="prefectureForm">
	<form:hidden path="id" />
	<form:hidden path="name" />
	<form:hidden path="population" />
	<form:hidden path="section3Id" />
	<form:hidden path="infrastructureIdList" />
	<input type="submit" value="ＯＫ" formaction="update">
	<input type="submit" value="戻る" formaction="input">
</form:form>
<%@include file="../common/footer.jsp" %>