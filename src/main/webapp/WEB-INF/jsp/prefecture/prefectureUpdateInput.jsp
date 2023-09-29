<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../define.jsp" %>
<%@include file="../common/header.jsp" %>

<h1>都道府県を更新</h1>
<form:form modelAttribute="prefectureForm" action="confirm">
	<dl>
		<dt>ID</dt>
		<dd>
			<form:errors path="id" element="p"/>
			<form:input path="id"/>
		</dd>
		<dt>都道府県名</dt>
		<dd>
			<form:errors path="name" element="p"/>
			<form:input path="name"/>
		</dd>
		<dt>人口</dt>
		<dd>
			<form:errors path="population" element="p"/>
			<form:input path="population"/>
		</dd>
		<dt>３地方区分</dt>
		<dd>
			<form:select path="section3Id">
				<form:option value="" label="なし"/>
				<form:options items="${section3List}" itemValue="id" itemLabel="name"/>
			</form:select>
		</dd>
		<dt>インフラ有無</dt>
		<dd>
			<form:checkboxes items="${infrastructureList}" itemValue="id" itemLabel="name" path="infrastructureIdList"/>
		</dd>
	</dl>
	<input type="submit" value="更新">
</form:form>
<%@include file="../common/footer.jsp" %>