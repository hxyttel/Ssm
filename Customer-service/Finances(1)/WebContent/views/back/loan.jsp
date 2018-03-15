<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<!-- 引用js文件 -->
<jsp:include page="/statics/back/static/jsp/init.jsp"></jsp:include>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/back/static/js/laydate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/js/jquery.form.js"></script>
<script src="${pageContext.request.contextPath}/statics/back/static/js/excel.js"></script>
<script  type="text/javascript" >
	//修改按钮事件
    function UpRole(){
   	//获取当前选中行的信息
		var selectList = $('#tb_emp').bootstrapTable('getSelections');
		//判断有没有选中
		if(selectList.length<=0){
			parent.layer.alert('请选择要修改的数据');
			return;
		}
		//判断有没有选中多个
		if(selectList.length>1){
			parent.layer.alert('一次只能修改一条数据');
			return;
		}
		var athRole = selectList[0];
		//把选中行的数据放到弹窗的控件中
		$("#editRole #linterest").html(athRole.linterest);
		$("#editRole #uiname").html(athRole.uiname);
		$("#editRole #uid").val(athRole.uid);
		$("#editRole #lmoney").val(athRole.lmoney);
		$("#editRole #ltime").val(athRole.ltime);
		$("#editRole #lendtime").val(athRole.lendtime);
		$("#editRole #lstatus").val(athRole.lstatus);
		$("#editRole #lway").val(athRole.lway);
		
		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
		$("#btn_submit").attr("onclick","updateEmploye("+athRole.lid+")");
		//显示新增窗口
		$('#editForm').modal('show');
    }
	function updateEmploye(lid){
		$("#editForm").modal('hide');
		var url = "${pageContext.request.contextPath }/back/updateEmp";
		$.post(
			url,
			{
				lid:lid,
				uid:$("#editRole #uid").val(),
				lmoney:$("#editRole #lmoney").val(),
				ltime:$("#editRole #ltime").val(),
				lendtime:$("#editRole #lendtime").val(),
				lstatus:$("#editRole #lstatus").val(),
				lway:$("#editRole #lway").val(),
				linterest:$("#editRole #linterest").val(),
			},
			function(data){
				//后台返回int类型的数据
				if(data>0){
					//新增成功，下面是后台框架的提示
					parent.layer.alert('修改成功');
				}else{
					//新增失败
					parent.layer.alert('修改失败');
				}
				//新增完刷新表格数据
				$('#tb_emp').bootstrapTable('refresh');
			},
			"text"
		);
	}
	//删除按钮事件
	//*************************************************************************按钮事件
	function btn_delete(){
		delRole();
	}
	function delRole(){
		//获取当前选中行的信息
		var stuList = $('#tb_emp').bootstrapTable('getSelections');
		var ids = "";
		//判断有没有选中
		if(stuList.length<=0){
			parent.layer.alert('请选择要删除的数据');
			return;
		}
		//拼接ids  1,2,3,4  用于批量删除
		for(var i =0 ;i<stuList.length;i++){
			if(i!=stuList.length-1){
				ids = ids +stuList[i].reid+",";
			}else{
				ids = ids +stuList[i].reid;
			}
		}
		var url = "${pageContext.request.contextPath }/back/deleteEmp";
		$.post(
			url,
			{
				ids:ids,
			},
			function(data){
				//后台返回int类型的数据
				if(data>0){
					//新增成功，下面是后台框架的提示
					parent.layer.alert('删除成功');
				}else{
					//新增失败
					parent.layer.alert('删除失败');
				}
				//新增完刷新表格数据
				$('#tb_emp').bootstrapTable('refresh');
			},
			"text"
		);	
	}
	
	//条件查询按钮
	function searchForm(){
		$('#tb_emp').bootstrapTable('refresh');
	}
	$(function () {
	 	//激活弹框提示
		$("[data-toggle='tooltip']").tooltip();
		 //先销毁表格  
        $('#tb_emp').bootstrapTable('destroy');  
		$('#tb_emp').bootstrapTable({
			url : '${pageContext.request.contextPath}/back/admin/selectloanList', //请求后台的URL（*）
			method : 'post', //请求方式（*）
			contentType: "application/x-www-form-urlencoded",
			toolbar : '#toolbar', //工具按钮用哪个容器
			striped : true, //是否显示行间隔色
			showExport: true, //是否显示导出
			cache : false, //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
			pagination : true, //是否显示分页（*）
			sortable : false, //是否启用排序
			sortOrder : "asc", //排序方式
			queryParams : queryParams,//传递参数（*）
			sidePagination : "server", //分页方式：client客户端分页，server服务端分页（*）
			pageNumber : 1, //初始化加载第一页，默认第一页
			pageSize : 10, //每页的记录行数（*）
			pageList : [ 10,15,20, 25], //可供选择的每页的行数（*）
			search : true, //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
			strictSearch : false,
			searchOnEnterKey :true, //按回车搜索
			showColumns : true, //是否显示所有的列
			showRefresh : true, //是否显示刷新按钮
			minimumCountColumns : 2, //最少允许的列数
			clickToSelect : true, //是否启用点击选中行
			//height : 300, //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
			uniqueId : "id", //每一行的唯一标识，一般为主键列
			showToggle : true, //是否显示详细视图和列表视图的切换按钮
			cardView : false, //是否显示详细视图
			detailView : false, //是否显示父子表
			singleSelect: false,  //设置为单选
			clickToSelect:true,  
		    exportDataType:'basic',   //导出当前页
		    showExport: true,  //是否显示导出按钮  
		       buttonsAlign:"right",  //按钮位置  
		       exportTypes:['excel'],  //导出文件类型  
		       Icons:'glyphicon-export',  
		       exportOptions:{  
		           ignoreColumn: [0,1],  //忽略某一列的索引  
		           fileName: '用户借款报表',  //文件名称设置  
		           worksheetName: 'sheet1',  //表格工作区名称  
		           tableName: '用户借款报表',  
		           excelstyles: ['background-color', 'color', 'font-size', 'font-weight'],  
		           /* onMsoNumberFormat: DoOnMsoNumberFormat  */ 
		       },  
			columns : [ {
				checkbox : true,
			},
			 {
				field : 'uiname',
				title : '借款人姓名'
			},
			 {
				field : 'lmoney',
				title : '借款金额'
			}, 
			 {
				field : 'ltime',
				title : '借款时间'
			},
			{
				field : 'lendtime',
				title : '还款时间'
			},  {
				field : 'lstatus',
				title : '状态',
				align : 'center',
				formatter : function(value, row, index) {
					var lstatus = row.lstatus;
					if(lstatus==0){
			            return '<i>未还款</i>'
			        }else if(lstatus==1){
			            return '<i>还款中</i>'
			        }else{
			            return '<i>已还款</i>'
			        }
				}
			}, 
			{
				field : 'lway',
				title : '借款类型'
			}, 
			{
				field : 'linterest',
				title : '还款利息'
			},
			]
		});
		
		
});
	function DoOnMsoNumberFormat(cell, row, col) {  
	       var result = "";  
	       if (row > 0 && col == 0)  
	           result = "\\@";  
	       return result;  
	   }  
	function queryParams(params) {
		var temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
			//***这里的参数传到后台，用来进行分页处理*************************
			rows: params.limit, //页面大小
			page: params.offset, //页码
			ltime : $("#ltime").val(),
			lendtime : $("#lendtime").val(),
			lstatus : $("#lstatus").val(), 
			
		};
		return temp;
	};
	
	//导出
	function exportExcel(){
		 var form = new FormData(document.getElementById("editForm"));
	}
	</script>
	<script type="text/javascript">
		!function(){
			laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
			laydate({elem: '#demo'});//绑定元素
		}();

		//日期范围限制
		var start = {
			elem: '#start',
			format: 'YYYY-MM-DD',
			min: laydate.now(), //设定最小日期为当前日期
			max: '2099-06-16', //最大日期
			istime: true,
			istoday: false,
			choose: function(datas){
				 end.min = datas; //开始日选好后，重置结束日的最小日期
				 end.start = datas //将结束日的初始值设定为开始日
			}
		};

		var end = {
			elem: '#end',
			format: 'YYYY-MM-DD',
			min: laydate.now(),
			max: '2099-06-16',
			istime: true,
			istoday: false,
			choose: function(datas){
				start.max = datas; //结束日选好后，充值开始日的最大日期
			}
		};
		laydate(start);
		laydate(end);
	</script>
</head>
<body class="gray-bg">
   <body style="background-color:#F2F9FD">
	<div class="panel-body" style="padding-bottom: 0px;">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>网站员工信息</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i></a>
							<!-- <a class="close-link"> <i class="fa fa-times"></i></a> -->
						</div>
					</div>
					<div class="ibox-content">
							 <div class="form-group">
		            			<label for="operateTime" class="control-label col-sm-1">借款时间:</label>
		            			<div class="col-sm-2">
	            					<input type="text" name="ltime" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" id="ltime">
	            				</div>
		            			<label for="incomeTypes" class="control-label col-sm-1">还款时间:</label>
								<div class="col-sm-2">
									<input type="text" name="lendtime" id="lendtime" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
		            			</div>
	            				<label for="operateTime" class="control-label col-sm-1">还款状态:</label>
		            			<div class="col-sm-2">
									<select class="form-control m-b" id="lstatus" name="lstatus" style="margin-bottom: 0px;">
		                        		<option value=-1>请选择</option>
		                        		<option value=0>未还款</option>
		                        		<option value=1>还款中</option>
		                        		<option value=2>已还款</option>
		                        	</select>
		            			</div>
				                <button type="button" id="searchForm" class="btn btn-primary" onclick="searchForm()">搜索</button>
							</div> 
						<div id="toolbar" class="btn-group">
							<button id="btn_edit" type="button" class="btn btn-w-m btn-success" onclick="UpRole()">
								<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
							</button>
							<button id="btn_delete" type="button" class="btn btn-w-m btn-danger" onclick="btn_delete()">
								<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
							</button>
							<!-- 导出start -->
							 <script src="${pageContext.request.contextPath}/statics/back/static/js/export.js"></script>
							 <a id="dlink"  style="display:none;"></a>
							 <button  type="button" class="btn btn-w-m btn-primary" data-toggle="modal" data-target="#addStudent" onclick="tableToExcel('tb_emp','name','loan.xls')" value="Export to Excel">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>导出
							</button> 
							<!-- 导出end -->
						</div>
						<!-- table代码就这些，用js构建表格 -->
						<table id="tb_emp" ></table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 新增弹窗 -->
	<div class="modal fade" id="editForm" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">借款管理</h4>
				</div>
				<div class="modal-body">
					<!-- 新增系别 -->
					<form id="editRole" class="form-horizontal m-t" method="post" enctype="multipart/form-data">
                		<input type="hidden" name="eid" id="eid" />
                		<div class="form-group">
							<label for="url" class="control-label col-sm-3">用户昵称</label>
							<div class="col-sm-8">
								<span id="uiname"></span>
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">还款利息</label>
							<div class="col-sm-8">
								<span id="linterest"></span>
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">借款金额</label>
							<div class="col-sm-8">
								<input type="text" name="lmoney" rows="3" class="form-control" id="lmoney" />
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">借款时间</label>
							<div class="col-sm-8">
								<input placeholder="请选择日期" name="ltime" id="ltime" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">还款时间</label>
							<div class="col-sm-8">
								<input placeholder="请选择日期" name="lendtime" id="lendtime" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">借款状态</label>
							<div class="col-sm-8">
								<select class="form-control m-b" id="lstatus" name="lstatus" style="margin-bottom: 0px;">
		                        		<option value="-1">请选择</option>
		                        		<option value="0">未还款</option>
		                        		<option value="1">还款中</option>
		                        		<option value="2">已还款</option>
		                        </select>
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">借款类型</label>
							<div class="col-sm-8">
								<select class="form-control m-b" id="lway" name="lway" style="margin-bottom: 0px;">
		                        		<option value="现金">现金</option>
		                        		<option value="转账">转账</option>
		                        </select>
	            			</div>
						</div>
		                <div class="form-group">
		                   <div class="modal-footer">
								<button type="submit" class="btn btn-default" data-dismiss="modal">
									<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
								</button>
								 <button type="submit" class="btn btn-primary">
								 	<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存
								 </button>
							</div>
		                </div>
				</form>
				</div>
				</div>
			</div>
		</div>
</body>
</html>