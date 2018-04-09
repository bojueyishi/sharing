$(function() {
	//在schudele.jsp页面加载时，就用ajax请求版本计划列表第一页
	var pageSizeConstant = 5;
	
	getTableData({pageNum:0,pageSize:pageSizeConstant});
	
	 $("#optionBar").find("button[new]").click(function(){
		 $("#editor-popup .am-popup-hd h4").text("新增 / New");
		 $("#showContainer").empty();
		 $("#showContainer").html("haha");
		 $(this).attr("data-am-modal","{target: '#editor-popup'}");
	 });
	 
	 $("#optionBar").find("button[delete]").click(function(){
		 var allUnChecked = true;
		 $("#tableSet tbody tr").find("[type=checkbox]").each(function(){
			if($(this).is(':checked')){
				allUnChecked = false;
			}
		 });
		
		if(allUnChecked){
			//如果一个都没有选，则抛错
			generateAlertContainer("您必须选择一项以删除!","am-alert am-alert-warning alertContainer");
		}else{
			//否则，批量删除
			//选出当前选中的所有项
			var relePlanNames = new Array();
			var index = 0;
			$("#tableSet tbody tr").find("[type=checkbox]").each(function(){
				if($(this).is(':checked')){
					relePlanNames[index] = $(this).parents("td").nextAll("[releplankey]").find("a").text();
					index++;
				}
			});
			
			//发送ajax请求到后台批量删除
			ajaxRequest("deleteRelePlanList.action",{relePlanList:relePlanNames},function(data){
				if(data.resultCode == 0){
   	    			generateAlertContainer("删除成功","am-alert am-alert-success alertContainer");
   	    			//删除成功后重新获取第一页的数据
   	    			getTableData({pageNum:0,pageSize:pageSizeConstant});
   	    		}else{
   	    			generateAlertContainer("删除失败!","am-alert am-alert-danger alertContainer");
   	    		}
			});
		}
	 });
	 
	 function getTableData(option){
		 $("#tableSet thead tr").find("[type=checkbox]").uCheck('uncheck');
		 ajaxRequest("getRelePlanList.action",option,function(data){
		   	 //如果返回体中有版本计划，则生成相应的html
		   	 if(data.relePlans != null && data.relePlans.length != 0){
		   		 var tableBodyItems = '';
		   		 $.each(data.relePlans,function(index,value){
		   			 var tableBodyItem =	
		   				'<tr>'+
							'<td><label class="am-checkbox-inline">&nbsp;'+
							'<input type="checkbox" value="" data-am-ucheck>'+
							'</label></td>'+
							'<td>'+ (index+1) +'</td>'+
							'<td releplankey>'+value.planNum+'</td>'+
							'<td class="am-hide-sm-only">'+ value.userName +'</td>'+
							'<td class="am-hide-sm-only">'+ new Date(value.createTime).format("yyyy-MM-dd HH:mm:ss") +'</td>'+
							'<td class="am-hide-sm-only">'+ new Date(value.modifyTime).format("yyyy-MM-dd HH:mm:ss") +'</td>'+
							'<td>'+
							'<div class="am-btn-toolbar">'+
							'   <div class="am-btn-group am-btn-group-xs">'+
							'     <button'+
							'		class="am-btn am-btn-default am-btn-xs am-text-secondary item-viewer">'+
							'		<span class="am-icon-eye"></span> 查看'+
							'	  </button>'+
							/*'	  <shiro:hasRole name="admin">'+*/
							'     <button'+
							'		class="am-btn am-btn-default am-btn-xs am-text-secondary item-editor">'+
							'		<span class="am-icon-pencil-square-o"></span> 编辑'+
							'	  </button>'+
							'	  <button'+
							'		 class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only item-remove">'+
							'		 <span class="am-icon-trash-o"></span> 删除'+
							'	  </button>'+
							/*'     </shiro:hasRole>'+*/
							'	</div>'+
							'</div>'+
							'</td>'+
							'</tr>';
		   			 
		   			 tableBodyItems += tableBodyItem;
		   		 });
		   		 
		   		 $("#tableSet tbody").html(tableBodyItems);
		   	 }else{
		   		 $("#tableSet tbody").remove();
		   	 }
		   	 
		   	 //设置共多少条记录以及分页插件的页数
		   	 var pageBarContent = '';
		   	 if(data.totalCount !=0){
		   		 var pageCounts = Math.ceil(data.totalCount / pageSizeConstant) ;
			   	 pageBarContent = '共 ' + data.totalCount+' 条记录' +
			   	    '<div class="am-fr">' +
						'<ul class="am-pagination">' +
						'<li><a href="#">«</a></li>';
			   	 
			   	 for(var i=1;i<=pageCounts;i++){
			   		 pageBarContent+='<li><a href="#">'+i+'</a></li>';
			   	 }
			   	 
			   	 pageBarContent+='<li><a href="#">»</a></li>'+
					    '</ul>'+
					    '</div>';
		   	 }else{
		   		 pageBarContent = '共 ' + data.totalCount+' 条记录';
		   	 }
		   	 $("#pageBar").html(pageBarContent);
		   	 
		   	 $(".item-editor").click(function() {
		   		//获取版本计划的唯一key，然后发送ajax请求，获取到当前key的详细信息
		   		//接着动态生成editor的内容
		   		var releplankey_value = $(this).parents("td").prevAll("[releplankey]").text();
		   		ajaxRequest("getRelePlanDetial.action",{relePlanName:releplankey_value},function(data){
		   	        	 if(data.releasePlanDetail != null){
		   	        		 generateChart(data.releasePlanDetail);
		   	        	 }
		   	    });
		   		
		   		$("#editor-popup .am-popup-hd h4").text("编辑 / Editor");
		    	$(this).attr("data-am-modal","{target: '#editor-popup'}");
		   	 });
		   	 
		   	 $(".item-remove").click(function() {
		   		var releplankey_value = $(this).parents("td").prevAll("[releplankey]").text();
		   		var $confirm = $('#del-confirm');
		   	    var confirm = $confirm.data('amui.modal');
		   	    var onConfirm = function() {
		   	    //删除时，当选择确定时，发送ajax请求到后台删除
		   	    	ajaxRequest("deleteRelePlan.action",{relePlanName:releplankey_value},function(data){
		   	    		if(data.resultCode == 0){
		   	    			generateAlertContainer("删除成功","am-alert am-alert-success alertContainer");
		   	    			//删除成功后重新获取第一页的数据
		   	    			getTableData({pageNum:0,pageSize:pageSizeConstant});
		   	    		}else{
		   	    			generateAlertContainer("删除失败!","am-alert am-alert-danger alertContainer");
		   	    		}
		   	    	});
		   	    };
		   	    
		   	    var onCancel = function() {
		   	    	 
		   	    }
		   	        
		   	    if (confirm) {
		   	    	 confirm.options.onConfirm =  onConfirm;
		   	         confirm.options.onCancel =  onCancel;
		   	         confirm.toggle(this);
		   	    } else {
		   	    	 $confirm.modal({
		   	        	relatedElement: this,
		   	            onConfirm: onConfirm,
		   	            onCancel: onCancel
		   	        });
		   	    }
		  	    });
		   	 
		   	$("#tableSet thead tr").find("[type=checkbox]").click(function(){
		   		if($(this).is(':checked')){
		   			$("#tableSet tbody tr").find("[type=checkbox]").uCheck('check');
		   		}else{
		   			$("#tableSet tbody tr").find("[type=checkbox]").uCheck('uncheck');
		   		}
		   	});
		   	
		   	$("#tableSet tbody tr").find("[type=checkbox]").click(function(){
		   		if($(this).is(':checked')){
		   			var allChecked = true;
		   			$("#tableSet tbody tr").find("[type=checkbox]").each(function(){
		   				if(!$(this).is(':checked')){
		   					allChecked = false;
		   				}
		   			});
		   			if(allChecked){
		   				$("#tableSet thead tr").find("[type=checkbox]").uCheck('check');
		   			}
		   		}else{
		   			$("#tableSet thead tr").find("[type=checkbox]").uCheck('uncheck');
		   		}
		   	});
		  });
	 }
	 
	  function generateChart(releasePlanDetail){
		 
	  }
});

function checkPermission(){
	  $("#optionBar .am-btn-toolbar button").attr("disabled", true);
	  console.log("start"+$("#tableSet tbody tr td div").find(".item-editor").text());
	  $("#tableSet tbody tr td div").find(".item-editor").attr("disabled", true);
	  
}


