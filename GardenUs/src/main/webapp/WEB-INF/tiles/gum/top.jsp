<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%-- <%@ include file="/WEB-INF/views/fcm/import.include"%>
<%@ include file="/WEB-INF/views/common/taglib.include"%> --%>
<script>
// 현재 스크롤바의 위치를 저장하는 변수 (px)
var currentScrollTop = 0;
     
// 비동기식 jQuery이므로 window load 후 jQuery를 실행해야 함
window.onload = function() {
    // 새로고침 했을 경우를 대비한 메소드 실행
    scrollController();
     
    // 스크롤을 하는 경우에만 실행됨
    $(window).on('scroll', function() {
        scrollController();
    });
}
     
// 메인 메뉴의 위치를 제어하는 함수
function scrollController() {
    currentScrollTop = $(window).scrollTop();
    if (currentScrollTop < 0) {
        $('#menu-container').css('top', 0-(currentScrollTop));
        if ($('#menu-container').hasClass('fixed')) {
            $('#menu-container').removeClass('fixed');
            $('#menu-container .menu-icon').removeClass('on');
        }
    } else {
        if (!$('#menu-container').hasClass('fixed')) {
            $('#menu-container').css('top', 0);
            $('#menu-container').addClass('fixed');
            $('#menu-container .menu-icon').addClass('on');
        }
    }
}
</script>
<div id="menu-container">
    <div class="menu-icon" style="display: none;"></div>
    <div class="menu-item">상단 메뉴</div>
</div>
