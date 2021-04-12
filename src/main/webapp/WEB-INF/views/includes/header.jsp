<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="/resources/css/header.css" />
		<script src="/resources/js/header.js"></script>
	</head>
	<body>
		<header>
			<div class="header_ad">
				<div class="header_ad_content">
					<p>
						지금 가입하고 인기상품 <b>100원</b>에 받아가세요!
						<img src="/resources/images/DM_20210324195650_001.PNG"/>
					</p>
					<a href="#" id="ad_close">
						<img src="/resources/images/DM_20210324195650_048.PNG"/>
					</a>
				</div>
			</div>
			<nav id="gnb">
				<div class="gnb_top">
					<a href="#" id="early_delivery">
						<img src="/resources/images/DM_20210324195650_003.GIF"/>
					</a>
					<div class="user_menu">
						<c:if test="${memberInfo == null}">
							<a href="/member/join">회원가입</a>
							<span>|</span>
							<a href="/member/login">로그인</a>
						</c:if>
						<c:if test="${memberInfo != null}">
							<a href="/member/user/grade" class="grade${memberInfo.grade}"></a>
							<a href="/member/user/orderlist" id="user_name">${memberInfo.name} 님</a>
							<img src="/resources/images/DM_20210324195650_049.PNG" />
						</c:if>
						<span>|</span>
						<a href="/service/notice">
							고객센터
							<img src="/resources/images/DM_20210324195650_049.PNG" />
						</a>
					</div>
					<div class="service_popup">
						<div class="service_popup_content">
							<a href="/service/notice">공지사항</a><br>
							<a href="/serivce/faq">자주하는 질문</a><br>
							<a href="/service/contact">1:1 문의</a><br>
							<a href="/service/offer">상품 제안</a><br>
							<a href="/service/feedback">에코포장 피드백</a>
						</div>
					</div>
					<c:if test="${memberInfo != null }">
						<div class="user_popup">
							<div class="user_popup_content">
								<a href="/member/user/orderlist">주문 내역</a><br>
								<a href="/member/user/delivery">배송지 관리</a><br>
								<a href="/member/user/favorite">늘 사는 것</a><br>
								<a href="/member/user/review">상품 후기</a><br>
								<a href="/member/user/point">적립금</a><br>
								<a href="/member/user/coupon">쿠폰</a><br>
								<a href="/member/user/modify">개인 정보 수정</a><br>
								<a href="/member/logout">로그아웃</a>
							</div>
						</div>
					</c:if>
				</div>
				<div class="logo_area">
					<a href="/" id="logo">
						<img src="/resources/images/DM_20210324195650_002.PNG"/>
					</a>
				</div>
				<div class="menu_area_wrap">
					<ul class="main_menu">
						<li>
							<a href="#">
								<img src="/resources/images/DM_20210324195650_051.PNG"/>
								<span>전체 카테고리</span>
							</a>
						</li>
						<li>
							<a href="/shop/products">신상품</a>
						</li>
						<li>
							<a href="/shop/products">베스트</a>
						</li>
						<li>
							<a href="/shop/products">알뜰쇼핑</a>
						</li>
						<li>
							<a href="/shop/products">금주혜택</a>
						</li>
					</ul>
					<div class="search_area">
						<input type="text" id="search_input"/>
						<button id="search_btn">
							<img src="/resources/images/DM_20210324195650_057.PNG"/>
						</button>
						<a href="/member/user/delivery">
							<img src="/resources/images/DM_20210324195650_055.SVG"/>
						</a>
						<a href="/shop/cart">
							<img src="/resources/images/DM_20210324195650_053.SVG"/>
						</a>
					</div>
				</div>
				<div class="categories">
					<div class="categories_wrap">
					<c:forEach items="${categoryList}" var="category">			
						<a href="/shop/products?category=${category.seq}" id="category${category.seq}" class="category">${category.name}</a>
					</c:forEach>
					</div>
				</div>
			</nav>
		</header>
	</body>
</html>




















