<%@page contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>結果ページ</title>
</head>
<body>
	<p>文字列<c:out value="${param.str}"/>の長さは:${result}です。</p>
	
</body>
</html>
