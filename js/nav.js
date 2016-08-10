$(function(){
	// 添加样式
	var $input=$(".navIndex").val();
	$(".nav>ul>li>a").eq($input).addClass("addNav");
	var $li=$(".nav>ul>li");
	// 鼠标事件
	$li.hover(function(){
		// 鼠标放入的事件
		$(this).children("ul").show();
	},function(){
		// 鼠标移除的事件
		$(this).children("ul").hide();
	})
});