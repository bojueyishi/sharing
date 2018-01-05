function changeFrameHeight(){
	var ifm= document.getElementById("iframepage"); 
    ifm.height=document.documentElement.clientHeight;
}

function changNav(target){
	var name = $(target).attr("id");
	$("#iframepage").attr("src",name+".jsp");
}

window.onresize=function(){  
	changeFrameHeight();  
} 
