$(function(){
	$("#newWorkFlow").click(function(){
		//发送ajax请求，获取当前用户所在组，可借的机型
		ajaxRequest("getAvailableEquipment.action",{userName:'jup373864',userRole:0,groupName:'healthPlatform'},function(data){
			if(data.availableEquip != null && data.availableEquip.length != 0){
				$("#equipmentName").empty();
				$.each(data.availableEquip, function(index,item){
					var equipmentName = item.equipmentName;
					$("#equipmentName").append('<option value="'+equipmentName+'">'+equipmentName+'</option>');
				});
				
				var $modal = $('#newworkflow-modal');
			    $modal.modal();
			}else{
				//提示用户：您所在的组目前没有可用的测试机
				generateAlertContainer("您所在的组，没有可用的测试机!","am-alert am-alert-danger alertContainer");
			}
		});
	});
	
	//第一次加载页面时，获取流程中数据的第一页
	var currentPageNum = 0;
	var maxPageNum = 0;
	var pageSizeConstant = 6;
	
	getTableData({pageNum:0,pageSize:pageSizeConstant,status:0},"#tab1");
	
	$('#my-tabs').find('a').on('opened.tabs.amui', function(e) {
		  if(typeof($(this).attr("inhand")) != "undefined"){
			  currentPageNum = 0;
		      maxPageNum = 0;
			  getTableData({pageNum:0,pageSize:pageSizeConstant,status:0},"#tab1");
		  }
		  if(typeof($(this).attr("finished")) != "undefined"){
			  currentPageNum = 0;
		      maxPageNum = 0;
			  getTableData({pageNum:0,pageSize:pageSizeConstant,status:1},"#tab2");
		  }
	});
	
	$(".newWorkFlowGroup button").click(function(){
		var $modal = $('#newworkflow-modal');
		$modal.modal('close');
		
		//新建电子流按钮后，通过ajax提交到后台，如果成功则请求流程中第一页数据；如果不成功，则不需要拉取第一页，alert失败即可
		var workflowname = $("#workFlowName option:selected").val();
		var equipmentname = $("#equipmentName option:selected").val();
		
		ajaxRequest("newWorkflow.action",{userName:'jup',userRole:0,groupName:'healthPlatform',workFlowName:workflowname,equipmentName:equipmentname},function(data){
			if(data.resultCode == 0){
				currentPageNum = 0;
			    maxPageNum = 0;
				getTableData({pageNum:0,pageSize:pageSizeConstant,status:0},"#tab1");
				$("#my-tabs").tabs('open', 0);
			}else{
				//提示用户：借测试机失败
				generateAlertContainer("借测试机失败!","am-alert am-alert-danger alertContainer");
			}
		});
	});
	
	
	function getTableData(option,target){
		ajaxRequest("getWorkflow.action",option,function(data){
			var workflowTableContent = "";
			if(data.workflowList != null && data.workflowList.length != 0){
				$.each(data.workflowList, function(index,item){
					workflowTableContent += '<tr>'+
						'<td>'+ item.workflowName +'</td>'+
						'<td>'+ item.userName +'</td>'+
						'<td>'+ item.equipmentName +'</td>'+
						'<td>'+ new Date(item.startUseTime).format("yyyy-MM-dd HH:mm:ss") +'</td>'+
						'<td>'+ (item.backTime == 0 ? "-": new Date(item.backTime).format("yyyy-MM-dd HH:mm:ss")) +'</td>'+
						'<td>'+ (item.status == 0 ? "未归还" : "已归还") +'</td>'+
						'</tr>';
				});
			}
			
			$(target+" tbody").html(workflowTableContent);
			$(target+" tbody tr:odd").css("background-color","#F0F7F6");
			$(target+" tbody tr td").css("font-size","0.9em");
			
			//动态生成分页
			var pageBarContent = '<div class="am-fl" style="margin-top:1em;margin-left:0.1em">'+ '共 ' + data.totalCount+' 条记录'+'</div>';
		   	 if(data.totalCount !=0){
		   		 var pageCounts = Math.ceil(data.totalCount / pageSizeConstant) ;
		   		 maxPageNum = pageCounts;
			   	 pageBarContent = '<div class="am-fl" style="margin-top:1em;margin-left:0.1em">'+ '共 ' + data.totalCount+' 条记录'+'</div>' +
			   	    '<div class="am-fr">' +
						'<ul class="am-pagination">' +
						'<li prev><a href="#">«</a></li>';
			   	 
			   	 for(var i=1;i<=pageCounts;i++){
			   		 if(i == (currentPageNum+1)){
			   			pageBarContent+='<li item class="am-active"><a href="#">'+i+'</a></li>';
			   		 }else{
			   			pageBarContent+='<li item><a href="#">'+i+'</a></li>';
			   		 }
			   	 }
			   	 
			   	 pageBarContent+='<li next><a href="#">»</a></li>'+
					    '</ul>'+
					    '</div>';
		   	 }
		   	 
		   	 $("#pageBar").html(pageBarContent);
		   	 $("#pageBar div ul li").click(function(){
		   		 //如果是数字页
		   		 if(typeof($(this).attr("item")) != "undefined"){
		   			currentPageNum = $(this).text()-1;
		   			option.pageNum = currentPageNum;
		   			getTableData(option,target);
		   		 }
		   		 
		   		 //如果是前页
		   		 if(typeof($(this).attr("prev")) != "undefined"){
		   			 if(currentPageNum != 0){
		   				currentPageNum = currentPageNum - 1;
		   				option.pageNum = currentPageNum;
		   				getTableData(option,target);
		   			 }
		   		 }
		   		 //如果是后页
		   		 if(typeof($(this).attr("next")) != "undefined"){
		   			if(currentPageNum < maxPageNum-1){
		   				currentPageNum = currentPageNum + 1;
		   				option.pageNum = currentPageNum;
		   				getTableData(option,target);
		   			}
		   		 }
		   	 });
		});
	}
});