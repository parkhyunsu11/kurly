<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must_revalidate");
    response.setHeader("Pragma", "no-cache");
    response.setHeader("Expires", "0");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>
		<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
		
		<script src="/resources/assets/slick/slick.min.js"></script>
		
		<script src="/resources/js/main.js"></script>
		<link rel="stylesheet" href="/resources/css/reset.css" />
		
		<link rel="stylesheet" href="/resources/assets/slick/slick.css" />
		<link rel="stylesheet" href="/resources/assets/slick/slick-theme.css" />
		
		<link rel="stylesheet" href="/resources/css/main.css"/>
		
		
	</head>
	<body>
		<%@include file="/WEB-INF/views/includes/header.jsp" %>
		<div class="main">
			<section class="main_banner_area">
				<div class="main_banner_wrap">
					<div class="banner_item">
						<a href="#">
							<img src="/resources/images/DM_20210324195650_061.JPEG"/>
						</a>
					</div>
					<div class="banner_item">
						<a href="#">
							<img src="/resources/images/DM_20210324195650_062.JPEG"/>
						</a>
					</div>
					<div class="banner_item">
						<a href="#">
							<img src="/resources/images/DM_20210324195650_063.JPEG"/>
						</a>
					</div>
					<div class="banner_item">
						<a href="#">
							<img src="/resources/images/DM_20210324195650_064.JPEG"/>
						</a>
					</div>
					<div class="banner_item">
						<a href="#">
							<img src="/resources/images/DM_20210324195650_065.JPEG"/>
						</a>
					</div>
					<div class="banner_item">
						<a href="#">
							<img src="/resources/images/DM_20210324195650_066.JPEG"/>
						</a>
					</div>
					<div class="banner_item">
						<a href="#">
							<img src="/resources/images/DM_20210324195650_067.JPEG"/>
						</a>
					</div>
					<div class="banner_item">
						<a href="#">
							<img src="/resources/images/DM_20210324195651_068.JPEG"/>
						</a>
					</div>
					<div class="banner_item">
						<a href="#">
							<img src="/resources/images/DM_20210324195651_069.JPEG"/>
						</a>
					</div>
					<div class="banner_item">
						<a href="#">
							<img src="/resources/images/DM_20210324195651_070.JPEG"/>
						</a>
					</div>
				</div>
				<div class="banner_btn_area">
					<button id="prev">
						<img src="/resources/images/DM_20210324195651_072.PNG"/>
					</button>
					<button id="next">
						<img src="/resources/images/DM_20210324195651_073.PNG"/>
					</button>
				</div>
			</section>
			<section class="item_list_area">
				<h1>이 상품 어때요?</h1>
				<div class="item_list_wrap recommand_list">
					<c:forEach items="${recommandProductList}" var="product">
						<div class="prod_item">
							<div class="prod_item_img"
								style="background-image:url('/images/${product.mkpi_uri}')"
								onclick="location.href='/shop/detail'"
							></div>
							
							<div class="prod_item_text">
								<p class="prod_item_title">[${product.mkb_name}] ${product.mkp_name }</p>
								<p class="prod_item_price">
									<c:if test="${product.mkp_discount == 1 }">
										<span class="prod_discount">${product.mkp_discount_rate }%</span>
										<span class="prod_final_price">${product.discounted}원
										</span>
									</c:if>
									<c:if test="${product.mkp_discount == 0 }">
										<span class="prod_final_price">${product.originPrice}원</span>
									</c:if>
								</p>
								<c:if test="${product.mkp_discount == 1 }">
									<p class="prod_origin_price">${product.originPrice }원</p>
								</c:if>
							</div>
						</div>
					</c:forEach>
				</div>
			</section>
			<section class="item_list_area">
				<h1>MD의 추천</h1>
				<div class="item_list_wrap recommand_list">
					<c:forEach items="${mdRecommandProductList}" var="product">
						<div class="prod_item">
							<div class="prod_item_img"
								style="background-image:url('/images/${product.mkpi_uri}')"
								onclick="location.href='/shop/detail'"
							></div><div class="prod_item_text">
								<p class="prod_item_title">[${product.mkb_name}] ${product.mkp_name }</p>
								<p class="prod_item_price">
									<c:if test="${product.mkp_discount == 1 }">
										<span class="prod_discount">${product.mkp_discount_rate }%</span>
										<span class="prod_final_price">${product.discounted}원
										</span>
									</c:if>
									<c:if test="${product.mkp_discount == 0 }">
										<span class="prod_final_price">${product.originPrice}원</span>
									</c:if>
								</p>
								<c:if test="${product.mkp_discount == 1 }">
									<p class="prod_origin_price">${product.originPrice }원</p>
								</c:if>
							</div>
						</div>
					</c:forEach>
				</div>
			</section>
			<section class="item_list_area">
				<h1>특별상품</h1>
				<div class="item_list_wrap recommand_list">
					<c:forEach items="${specialProductList}" var="product">
						<div class="prod_item">
							<div class="prod_item_img" style="background-image:url('/images/${product.mkpi_uri}')"></div>
							<div class="prod_item_text">
								<p class="prod_item_title">[${product.mkb_name}] ${product.mkp_name }</p>
								<p class="prod_item_price">
									<c:if test="${product.mkp_discount == 1 }">
										<span class="prod_discount">${product.mkp_discount_rate }%</span>
										<span class="prod_final_price">${product.discounted}원
										</span>
									</c:if>
									<c:if test="${product.mkp_discount == 0 }">
										<span class="prod_final_price">${product.originPrice}원</span>
									</c:if>
								</p>
								<c:if test="${product.mkp_discount == 1 }">
									<p class="prod_origin_price">${product.originPrice }원</p>
								</c:if>
							</div>
						</div>
					</c:forEach>
				</div>
			</section>
			<section class="item_list_area">
				<h1>알뜰상품</h1>
				<div class="item_list_wrap recommand_list">
					<c:forEach items="${affordProductList}" var="product">
						<div class="prod_item">
							<div class="prod_item_img" style="background-image:url('/images/${product.mkpi_uri}')"></div>
							<div class="prod_item_text">
								<p class="prod_item_title">[${product.mkb_name}] ${product.mkp_name }</p>
								<p class="prod_item_price">
									<c:if test="${product.mkp_discount == 1 }">
										<span class="prod_discount">${product.mkp_discount_rate }%</span>
										<span class="prod_final_price">${product.discounted}원
										</span>
									</c:if>
									<c:if test="${product.mkp_discount == 0 }">
										<span class="prod_final_price">${product.originPrice}원</span>
									</c:if>
								</p>
								<c:if test="${product.mkp_discount == 1 }">
									<p class="prod_origin_price">${product.originPrice }원</p>
								</c:if>
							</div>
						</div>
					</c:forEach>
				</div>
			</section>
		</div>
	</body>
</html>












