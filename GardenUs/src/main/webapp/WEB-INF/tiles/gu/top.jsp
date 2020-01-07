<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%-- <%@ include file="/WEB-INF/views/fc/import.include" %>
<%@ include file="/WEB-INF/views/common/taglib.include" %> --%>

<style>
.notice-link {
  text-decoration: underline;
}
</style>

<%-- Left Menu --%>
<div class="header" ng-controller="menuController" ng-init="startup(${accordion.active}, ${accordion.index})">
	<div id="menu_area" ng-show="data.showMenu">
		<ul class="depth" id="accordion">
			<c:if test="${login.franchiseHqOrStaff}">
			<c:forEach var="menu" items="${menuList}">
					<li>
						<a href="${menu.menuUri }" class="title">${menu.menuTitle }</a>
						<ul class="depth2">
							<c:forEach var="subMenu" items="${menu.subMenuList}">
								<li><a href="${subMenu.menuUri}">${subMenu.menuTitle}</a></li>
							</c:forEach>
						</ul>
					</li>

					<%-- 			
					<c:if test="${(menu.menuTitle != '출고 관리' || (login.wms && menu.menuTitle == '출고 관리')) && fc:hasCategory(login.menu, menu.menuNo)}">
					<li>
						<a href="${menu.menuUri }" class="title">${menu.menuTitle }</a>
						<ul class="depth2">
							<c:forEach var="subMenu" items="${menu.subMenuList}">
								<c:if test="${fc:hasReadRole(request, subMenu.menuUri)}">
								<li><a href="${subMenu.menuUri}">${subMenu.menuTitle}</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</li>
					</c:if>
					--%>
			</c:forEach>
			</c:if>
			<c:if test="${login.adminGlobal}">
			<c:forEach var="menu" items="${menuList}">
					<li>
						<a href="${menu.menuUri }" class="title">${menu.menuTitle }</a>
						<ul class="depth2">
							<c:forEach var="subMenu" items="${menu.subMenuList}">
								<li><a href="${subMenu.menuUri}">${subMenu.menuTitle}</a></li>
							</c:forEach>
						</ul>
					</li>
			</c:forEach>
			
			<%-- 
			<li>
				<a href="javascript:void(0)" class="title">멤버 관리</a>
				<ul class="depth2">
					<li><a href="/fc/gnmember/indexPage.do">관리자 목록</a></li>
					<li><a href="/fc/fcmember/indexPage.do">fc본사 목록</a></li>
					<!-- 
					<li><a href="/fc/waitingtrader/indexPage.do">승인 대기 가맹점 목록</a></li>
					 -->
				</ul>
			</li>
			
			<li>
				<a href="javascript:void(0)" class="title">정산 관리</a>
				<ul class="depth2">
					<li><a href="/fc/calculateOfHq/indexPage.do">본사 정산 관리</a></li>
					<li><a href="/fc/actualExpense/indexPage.do">실비 정산</a></li>
				</ul>
			</li>
			--%>
			
			<%--  
			<li>
				<a href="javascript:void(0)" class="title">발주 관리</a>
				<ul class="depth2">
					<li><a href="/fc/tplordering/indexPage.do">발주 진행 목록</a></li>
					<li><a href="/fc/tplordercancel/indexPage.do">발주 취소 목록</a></li>
					<li><a href="/fc/tplorderdelivery/indexPage.do">배송 완료 목록</a></li>
				</ul>
			</li>
			--%>
			
			</c:if>
			<%-- 
			<c:if test="${login.tpl}">
			<li>
				<a href="javascript:void(0)" class="title">발주 관리</a>
				<ul class="depth2">
					<li><a href="/fc/tplordering/indexPage.do">발주 진행 목록</a></li>
					<li><a href="/fc/tplordercancel/indexPage.do">발주 취소 목록</a></li>
					<li><a href="/fc/tplorderdelivery/indexPage.do">배송 완료 목록</a></li>
				</ul>
			</li>
			</c:if>
			--%>
		</ul>
	</div>
	<c:if test="${login.franchiseHqOrMasterStaff}">
		<span id="menuDisplay" ng-click="menuDisplay()" ng-mouseover="hover.inSide()" ng-mouseleave="hover.outSide()"><img src="/img/red_arrow_left.png" style="width: 28px;height: 28px;float: right;margin-top: 5px;"></span>
	</c:if>
</div>

<%-- Top --%>
<div class="my_info after" ng-controller="headerController" ng-init="startup()">
	<c:choose>
		<c:when test="${login.franchiseHqOrMasterStaff}">
			<c:set var="logo_link" value="/fc/order/indexPage.do" />
		</c:when>
		<c:when test="${login.staff}">
			<c:set var="logo_link" value="" />
		</c:when>
		<c:when test="${login.adminGlobal}">
			<c:set var="logo_link" value="/fc/gnmember/indexPage.do" />
		</c:when>
		<%-- 
		<c:when test="${login.tpl}">
			<c:set var="logo_link" value="/fc/tplordering/indexPage.do" />
		</c:when>
		--%>
		<c:otherwise>
			<c:set var="logo_link" value="" />
		</c:otherwise>
	</c:choose>
	<h1>
	<a href="${logo_link}" style="display: inline-block;"><img src="/img/logo.png" alt="발주왕로고" /></a>
	<%--  공지사항, 푸시관리, 문자관리  --%>
	<span class="top-menu">
		<c:forEach var="menu" items="${topMenuList}">
			<span class='${menu.on}'><a href="${menu.defaultUri}">${menu.title}</a></span>
		</c:forEach>
		<c:if test="${login.franchiseHqOrStaff}">
			<span ng-show="data.notice.noticeNo > 0" style="font-size: 14px;"> 공지사항 : <a href="javascript:void(0)" ng-click="openNotice()" class="notice-link">{{data.notice.title}} ({{ data.notice.regDate.substring(0,10) }})</a></span>
		</c:if>
	</span>
	
	</h1>
	<div class="user_info">
		<span class="user">${login.id}</span>
		<button type="button" class="btn black" ng-click="logout()">로그아웃</button>
	</div>
	
	<div id="noticeModal" class="popup_comm_st" style="width: 400px;">
		<div class="box">
			<div style="text-align:center; line-height: 32px;">공지사항 <span></div>
			<div style="text-align:center; font-weight: bold; font-size: 1.2em; line-height: 32px;"><span>{{ data.notice.title }} ({{ data.notice.regDate.substring(0,10) }})</span></div>
			<table class="comm_td">
				<tbody>
					<tr>
						<th ng-bind-html="data.notice.content"></th>
					</tr>
				</tbody>
			</table>
			
			<div class="bnt_box">
				<button type="button" class="list_go black" ng-click="closeNotice()">닫기</button>
			</div>
		</div>
	</div>
	
</div> <!-- my_info -->
