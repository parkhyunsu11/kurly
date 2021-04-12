// login.js
$(function(){
	$("#login").click(function(){
		let data = {
			id:$("#user_id").val(),
			pwd:$("#user_pwd").val()
		}
		
		$.ajax({
			url:"/member/login",
			type:"post",
			contentType:"application/json",
			data:JSON.stringify(data),
			success:function(result) {
				history.back();
			},
			error:function(error) {
				alert(error.responseJSON.message);
			}
		})
	})

	$("#user_pwd").keydown(function(e){
		if(e.keyCode == 13) {
			$("#login").trigger("click");
		}
	})


})
