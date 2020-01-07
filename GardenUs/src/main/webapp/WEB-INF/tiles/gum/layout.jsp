<%@ page	language="java"
			contentType="text/html; charset=UTF-8"
			buffer="500kb"
			autoFlush="false"
%>
<%-- <%@ include file="/WEB-INF/views/fcm/import.include" %>
<%@ include file="/WEB-INF/views/common/taglib.include" %> --%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<%-- <%@ include file="/WEB-INF/views/common/doctype.include" %> --%>
<!DOCTYPE html>
<html lang="ko" ng-app="mainApp" ng-cloak>
<head>
<title>발주왕</title>
<%-- <%@ include file="/WEB-INF/views/fcm/header.include" %> --%>
</head>

<body>
	<c:if test="${login == null}"> 
	<c:if test="${login != null && login.logined && !POPUP}">
		<tiles:insertAttribute name="top" flush="false" ignore="false" />
	</c:if>
	</c:if>
	
	<tiles:insertAttribute name="middle" flush="false" ignore="false" />

	<c:if test="${login != null && login.logined && !POPUP}">
		<tiles:insertAttribute name="bottom" flush="false" ignore="false" />
	</c:if>

</body>
</html>
