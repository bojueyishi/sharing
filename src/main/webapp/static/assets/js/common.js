
	customDate();
	function customDate(){
			 Date.prototype.format = function(fmt) { 
			     var o = { 
			        "M+" : this.getMonth()+1,                 //月份 
			        "d+" : this.getDate(),                    //日 
			        "H+" : this.getHours(),                   //小时 
			        "m+" : this.getMinutes(),                 //分 
			        "s+" : this.getSeconds(),                 //秒 
			        "q+" : Math.floor((this.getMonth()+3)/3), //季度 
			        "S"  : this.getMilliseconds()             //毫秒 
			    }; 
			    if(/(y+)/.test(fmt)) {
			            fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length)); 
			    }
			     for(var k in o) {
			        if(new RegExp("("+ k +")").test(fmt)){
			             fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
			         }
			     }
			    return fmt; 
			} 
	}
	
	function ajaxRequest(url,option,callback){
			 $.ajax({
				 type:"POST", 
		         url:url, 
		         dataType:"json",      
		         contentType:"application/json",               
		         data:JSON.stringify(option), 
		         success:callback
			});
	}
	
	var alertDelayTime = 1500;//毫秒
	function generateAlertContainer(text,className){
		  var $alertInfo = $("<div data-am-alert style='border-radius:5px'><p></p></div>");
		  $("body").append($alertInfo);
	    	 
		  $alertInfo.find("p").text(text);
		  $alertInfo.attr("class",className).animate({right:'0px'},"slow").delay(alertDelayTime).animate({right:'-500px'},"slow",function(){
	    	//从dom中删除alertcontainer
	    	$alertInfo.remove();
		  });
	 }
		
	


