$(function(){
	$(".datePickContent .endTime").change(function(){
		
		var startTime = $(".datePickContent .startTime").attr("value");
		var endTime = $(this).attr("value");
		console.log("start:"+startTime);
		console.log("end:"+endTime);
	});
});