<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../define.jsp" %>
<%@include file="../common/header.jsp" %>

	<h1>都道府県を追加</h1>
	<form:form modelAttribute="prefectureForm" action="confirm">
		<dl>
			<dt>ID</dt>
			<dd>
				<form:input path="id"/>
				<form:errors path="id" element="p" cssClass="error"/>
			</dd>
			
			<dt>都道府県名</dt>
			<dd>
				<form:input path="name"/>
				<form:errors path="name" element="p" cssClass="error"/>
			</dd>
			
			<dt>人口</dt>
			<dd>
				<form:input path="population"/>
				<form:errors path="population" element="p" cssClass="error"/>
			</dd>
		</dl>	
		<input type="submit" value="追加"/>
	</form:form>

<%@include file="../common/footer.jsp" %>