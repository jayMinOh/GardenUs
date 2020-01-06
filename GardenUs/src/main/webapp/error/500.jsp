<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>

<!DOCTYPE html>
<html lang="ko">
<head>GardenUs</head>
<body class="">
	<div class="error_table">
		<div class="error_cell">
			<div class="cell top">
				<p>Error: <%= exception.getMessage() %></p>
			</div>
			<div class="cell bottom">
				<a href="javascript:;" onclick="window.location.href = '/';">홈으로 이동</a>
			</div>
		</div>
	</div>
</body>		
</html>