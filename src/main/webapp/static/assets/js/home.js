function changeFrameHeight(){
	var ifm= document.getElementById("iframepage"); 
    ifm.height=document.documentElement.clientHeight || document.body.clientHeight;
}

function changNav(target){
	var name = $(target).attr("id");
	$("#iframepage").attr("src",name+".jsp");
}

$(function(){
	/*$(".navbar-left ul li a").mouseover(function(){
		$(".navbar-left ul li a").removeClass("myActive");
		$(this).attr("class", "myActive");
	});*/
	var token='<%=session.getAttribute("token")%>';   
	console.log("yyy:"+token);
	
	$(".navbar-left ul li a").click(function(){
		$(".navbar-left ul li a").removeClass("myActive");
		$(this).attr("class", "myActive");
	});
})

window.onresize=function(){  
	changeFrameHeight(); 
	
} 
