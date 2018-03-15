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
<script type="text/javascript" src="/Finances/statics/front/js/jquery.form.js"></script>
 <jsp:include page="/statics/back/static/jsp/init.jsp"></jsp:include>
		<script type="text/javascript" src="${pageContext.request.contextPath}/statics/back/static/js/laydate.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/js/jquery.form.js"></script>
		<script src="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/js/bootstrapValidator.min.js"></script>
		<link href="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/css/bootstrapValidator.min.css" rel="stylesheet" />

<script  type="text/javascript">
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
	


    var rows = null;
    
    function addRecharge(){
    	//清空editModel原来填写的内容
		$("#aboutform #uiname").val(''),
		//$("#newsform #abimage").val(''),
		$("#aboutform #remoney").val(''),
		$("#aboutform #retime").val(''),
		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
		//$("#isave").attr("onclick","insertAbout()");
		//显示新增窗口
		$('#newsform').modal('show');
    }
  //新增角色
	function insertRecharge() {
		//表单验证
		//alert(123);
		/* if (!validateForm($("#editForm"))) {
			return;
		} */
		//用来关闭新增窗口***********
		$("#newsform").modal('hide');
		     var formobj =  document.getElementById("aboutform");
				var formdata = new FormData(formobj);
				
				$.ajax({
					url:  "${pageContext.request.contextPath }/back/admin/insertRecharge",
				    type: 'POST',
				    cache: false,
				    data: formdata,
				    processData: false,
				    contentType: false
				}).done(function(res) {
					//后台返回int类型的数据
					if(res>0){
						//新增成功，下面是后台框架的提示
						parent.layer.alert('增加成功');
					}else{
						//新增失败
						parent.layer.alert('增加失败');
					}
					//新增完刷新表格数据
					$('#tb_role').bootstrapTable('refresh');
				}).fail(function(res) {
					
				});
	}
	
	
	//条件查询按钮
	function searchForm(){
		$('#tb_role').bootstrapTable('refresh');
	}
	$(function () {
	 	//激活弹框提示
		$("[data-toggle='tooltip']").tooltip();
		 //先销毁表格  
        $('#tb_role').bootstrapTable('destroy');  
		$('#tb_role').bootstrapTable({
			url : '${pageContext.request.contextPath}/back/admin/selectRechargeList', //请求后台的URL（*）
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
			pageList : [ 10, 15, 20, 25 ], //可供选择的每页的行数（*）
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
			columns : [ {
				checkbox : true,
			}, {
				field : 'reid',
				title : '编号'
			}, {
				field : 'uiname',
				title : '用户名称'
			}, {
				field : 'remoney',
				title : '充值金钱'
			},  {
				field : 'retime',
				title : '充值时间',				
			},]
		});
		
		
});
	function queryParams(params) {
		var temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
			//***这里的参数传到后台，用来进行分页处理*************************
			rows: params.limit, //页面大小
			page: params.offset, //页码
			uiname:$("#uiname").val(),
			retime:$("#retime").val(),
		};
		return temp;
	};
	</script>
	<script type="text/javascript">
		function addimgs(){
			$('#tisspan').remove();
			var html = '<input type="file" name="upfile"><span id="tisspan" onclick="addimgs()">添加</span>';
			$("#filecontr").append(html);		
		};
	</script>
</head>
<body class="gray-bg">
   <body style="background-color:#F2F9FD">
	<div class="panel-body" style="padding-bottom: 0px;">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>网站角色信息</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i></a>
							<!-- <a class="close-link"> <i class="fa fa-times"></i></a> -->
						</div>
					</div>
					<div class="ibox-content">
							<div class="form-group">
		            			<label for="incomeTypes" class="control-label col-sm-1">用户名称</label>
								<div class="col-sm-2">
									<input type="text" name="uiname" class="form-control" id="uiname">
		            			</div>
		            			<label for="url" class="control-label col-sm-1">充值时间</label>
								<div class="col-sm-2">
								<input placeholder="请选择日期" name="retime" id="retime" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
	            				</div>
				                <button type="button" id="searchForm" class="btn btn-primary" onclick="searchForm()">搜索</button>
							</div>
						<!-- table代码就这些，用js构建表格 -->
						<table id="tb_role" >
							
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 新增弹窗 -->
	<div class="modal fade" id="newsform" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">角色管理</h4>
				</div>
				
		<form id="aboutform" action="/Finances/back/admin/insertRecharge" class="form-horizontal m-t" method="post" enctype="multipart/form-data">  
				<div class="modal-body">
				
					<input type="hidden" name="abid" id="abid">
				
					<!-- 新增系别 -->				
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">编号</label> 
							<div class="col-sm-8">
								<input type="text" name="reid" class="form-control" id="reid">
							</div>
						</div>
						
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">用户名称</label> 
							<div class="col-sm-8" id="filecontr">
								<input type="text" name="uiname" class="form-control" id="uiname">
							</div>
						</div>
						
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">充值金额</label> 
							<div class="col-sm-8">
								 
								 <input type="text" name="remoney"  class="form-control" id="remoney">
							</div>
						</div>
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">充值时间</label> 
							<div class="col-sm-8">
								<input type="text" name="retime" class="form-control" id="retime">
							</div>
						</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
					</button>
					<button type="submit" id="isave" class="btn btn-primary" >
						<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存
					</button>
				</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>