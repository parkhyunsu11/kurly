$(function(){
	$(".recommand_list").slick({
		slidesToShow:4,
		slidesToScroll:4,
		swipe:false,
		focusOnSelect:false,
		infinite:false
	});
	
	
	let current = 0; // 현재 보고있는 배너아이템의 번호
	let animate = false;
	$("#next").click(function(){
		if(animate) return;
		animate = true;
		// .banner_item들 중에 첫번째 것을 우선 애니메이션 중지를 시키고,
		// left좌표를 -100%로 애니메이션 하는데, 애니메이션 시간은 1000ms(1초)로 한다.
		$(".banner_item").eq(current).stop().animate({left:"-100%"}, 1000);
		current++;
		if(current >= $(".banner_item").length) current = 0;
		$(".banner_item").eq(current).css("left", "100%").stop().animate({left:"0%"}, 1000, function(){
			// 애니메이션이 끝나고 나서 실행한다.
			animate = false;
		});
	});
	
	$("#prev").click(function(){
		if(animate) return;
		animate = true;
		// .banner_item들 중에 첫번째 것을 우선 애니메이션 중지를 시키고,
		// left좌표를 -100%로 애니메이션 하는데, 애니메이션 시간은 1000ms(1초)로 한다.
		$(".banner_item").eq(current).stop().animate({left:"100%"}, 1000);
		current--;
		if(current < 0) current = $(".banner_item").length - 1;
		$(".banner_item").eq(current).css("left", "-100%").stop().animate({left:"0%"}, 1000, function(){
			// 애니메이션이 끝나고 나서 실행한다.
			animate = false;
		});
	});
	
	setInterval(function(){
		$("#next").trigger("click");
	}, 5000)
})
















