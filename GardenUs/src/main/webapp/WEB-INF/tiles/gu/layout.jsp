<%@ page	language="java"
			contentType="text/html; charset=UTF-8"
			buffer="500kb"
			autoFlush="false"
%>
<%-- <%@ include file="/WEB-INF/views/fc/import.include" %>
<%@ include file="/WEB-INF/views/common/taglib.include" %> --%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<%-- <%@ include file="/WEB-INF/views/common/doctype.include" %> --%>
<!DOCTYPE html>
<html lang="ko" ng-app="mainApp" ng-cloak>
<!--[if IE 9]><html class="ie9"><![endif]-->

<head>
<title>발주왕</title>
<%-- <%@ include file="/WEB-INF/views/fc/header.include" %> --%>
</head>

<body> 
	<c:if test="${login != null && login.logined && !POPUP}">
		<tiles:insertAttribute name="top" flush="false" ignore="false" />
	</c:if>
	
	<tiles:insertAttribute name="middle" flush="false" ignore="false" />

	<c:if test="${login != null && login.logined && !POPUP}">
		<tiles:insertAttribute name="bottom" flush="false" ignore="false" />
	</c:if>
	
	<!-- Google Tag Manager (noscript) -->
	<noscript><iframe src="https://www.googletagmanager.com/ns.html?id='${GOOGLE_TAGMANAGER_ID}'"
	height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
	<!-- End Google Tag Manager (noscript) -->
	
</body>
</html>
