<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../define.jsp" %>
<%@include file="../common/header1.jsp" %>

	<h1>インフラを追加</h1>
	<form:form modelAttribute="infrastructureForm" action="confirm">
		<dl>
			<dt>ID</dt>
			<dd>
				<form:input path="id"/>
				<form:errors path="id" element="p" cssClass="error"/>
			</dd>
			
			<dt>インフラ名</dt>
			<dd>
				<form:input path="name"/>
				<form:errors path="name" element="p" cssClass="error"/>
			</dd>		
			<dt>登録日</dt>
			<dd>
				<form:input path="registDate"/>
				<form:errors path="registDate" element="p" cssClass="error"/>
			</dd>
		</dl>	
		<input type="submit" value="追加"/>
	</form:form>

<%@include file="../common/footer1.jsp" %>
	