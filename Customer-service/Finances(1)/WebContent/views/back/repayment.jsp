<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
 <jsp:include page="/statics/back/static/jsp/init.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="/Finances/statics/back/static/zTreeStyle/css/metro.css">
<script src="/Finances/statics/back/static/zTreeStyle/js/jquery.ztree.all-3.5.min.js"></script>

<title>角色管理</title>
<!-- 引用js文件 -->
<script  type="text/javascript">
    var rows = null;
    
    function addRole(){
    	//清空editModel原来填写的内容
		$("#editRole #host").val('');
		$("#editRole #formName").val('');
		$("#editRole #password").val('');
		$("#editRole #isuser").val('');
		
		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
		$("#btn_submit").attr("onclick","insertRole()");
		//显示新增窗口
		$('#editRole').modal('show');
    }
  //新增角色
	function insertRole() {
		//表单验证
		//alert(123);
		/* if (!validateForm($("#editForm"))) {
			return;
		} */
		//用来关闭新增窗口***********
		$("#editRole").modal('hide');
		var url = "${pageContext.request.contextPath }/back/admin/insertMail";
		$.post(
			url,
			{
				
		 		host:$("#editRole #host").val(),
				formName:$("#editRole #formName").val(),
                password:$("#editRole #password").val(),
                isuser:$("#editRole #isuser").val(),
			},
			function(data){
				//后台返回int类型的数据
				if(data>0){
					//新增成功，下面是后台框架的提示
					parent.layer.alert('新增成功');
				}else{
					//新增失败
					parent.layer.alert('新增失败');
				}
				//新增完刷新表格数据
				$('#tb_role').bootstrapTable('refresh');
			},
			"text"
		);	
	}
	//修改按钮事件
     function UpRole(){
    	//获取当前选中行的信息
 		var selectList = $('#tb_role').bootstrapTable('getSelections');
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
 			
 		$("#editRole #host").val(athRole.host);
 		$("#editRole #formName").val(athRole.formName);
 		$("#restatus #password").val(athRole.password);
 		$("#restatus #isuser").val(athRole.isuser);
 		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
 		$("#btn_submit").attr("onclick","updateRole("+athRole.mailid+")");
 		//显示新增窗口
 		$('#editRole').modal('show');
     }
	function updateRole(mailid,ptid){
		//用来关闭新增窗口***********
		$("#editRole").modal('hide');
		var url = "${pageContext.request.contextPath }/back/admin/updateSendMail";
		$.post(
			url,
			{
				mailid:mailid,
		 		host:$("#editRole #host").val(),
		 		formName:$("#editRole #formName").val(),
		 		password:$("#editRole #password").val(),
		 		isuser:$("#editRole #isuser").val(),
			},
			function(data){
				alert(data);
				if(data>0){
					//新增成功，下面是后台框架的提示
					parent.layer.alert('修改成功');
				}else{
					//新增失败
					parent.layer.alert('修改失败');
				}
				//新增完刷新表格数据
				$('#tb_role').bootstrapTable('refresh');
			},
			"text"
		);	
	}
	//删除按钮事件
	//*************************************************************************按钮事件
	function btn_delete(){
		delRole();
	}
	//删除
	function delRole(){
		//获取当前选中行的信息
		var stuList = $('#tb_role').bootstrapTable('getSelections');
		var ids = "";
		//判断有没有选中
		if(stuList.length<=0){
			parent.layer.alert('请选择要删除的数据');
			return;
		}
		//拼接ids  1,2,3,4  用于批量删除
		for(var i =0 ;i<stuList.length;i++){
			if(i!=stuList.length-1){
				ids = ids +stuList[i].mailid+",";
			}else{
				ids = ids +stuList[i].mailid;
			}
		}
		var url = "${pageContext.request.contextPath }/back/admin/deleteSendMail";
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
				$('#tb_role').bootstrapTable('refresh');
			},
			"text"
		);	
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
			url : '${pageContext.request.contextPath}/back/admin/selectRepaymentlist', //请求后台的URL（*）
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
			},{
				field : 'rmid',
				title : '主键id'
			}, {
				field : 'user.uphone',
				title : '发标人'
			}, {
				field : 'rmplan',
				title : '计划还款金额'
			},  {
				field : 'rmface',
				title : '实际还款金额',
			},{
				field : 'rmwait',
				title : '待还款金额',
			},{
				field : 'rmall',
				title : '还款总金额',
			},{
				field : 'rmstate',
				title : '还款状态',
				align : 'center',
				formatter : function(value, row, index) {
					var status = row.rmstate;
					if(status==2){
			            return '<i class="fa fa-lock" style="color:red">否</i>'
			        }else if(status==1){
			            return '<i class="fa fa-unlock" style="color:green">是</i>'
			        }else{
			            return '数据错误'
			        }
				}
			},{
				field : 'rmstyle',
				title : '还款类型',
			},{
				field : 'fcode',
				title : '订单编号',
			},]
		});
		
		
});
	function queryParams(params) {
		var temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
			//***这里的参数传到后台，用来进行分页处理*************************
			rows: params.limit, //页面大小
			page: params.offset, //页码
			rename : $("#renames").val(),
            reremark : $("#reremarks").val(),
            restatus : $("#restatuss").val(), 
		};
		return temp;
	};
	
	</script>
	<script>
		var zTree;
	    var demoIframe;
	    var setting = {
   			check:{
   				  enable: true  //设置是否显示checkbox复选框
   				  },
	        data: {
	            simpleData: {
	                enable:true,
	                idKey: "id",
	                pIdKey: "pId",
	                rootPId: ""
	            }
	        },
	        callback: {
	        	//beforeClick 用于捕获单击节点之前的事件回调函数，并且根据返回值确定是否允许单击操作，默认值为null  
	            beforeClick: function(treeId, treeNode) {
	                var zTree = $.fn.zTree.getZTreeObj("tree");
	                if (treeNode.isParent) {
	                    zTree.expandNode(treeNode);
	                    return false;
	                } else {
	                    demoIframe.attr("src",treeNode.file + ".html");
	                    return true;
	                }
	            }
	        }
	    };
	    var saveNode ="";
	    function save(mailid){
	    	var treeObj = $.fn.zTree.getZTreeObj("tree");
	    	var nodes = treeObj.getCheckedNodes(true);
	    	v="";
	    	for(var i=0;i<nodes.length;i++){
	    		if(i!=nodes.length-1){
	    			saveNode = saveNode +nodes[i].id+",";
				}else{
					saveNode = saveNode +nodes[i].id;
				}
	    	}
	    	alert(saveNode);
	    	var url = "${pageContext.request.contextPath}/back/admin/updatePower";
	    	$.post(
	    			url,
	    			{
	    				nodes:saveNode,
	    				mailid:mailid,
	    			},
	    			function(data){
	    				//后台返回int类型的数据
	    				if(data>0){
	    					parent.layer.alert('修改权限成功');
	    				}else{
	    					parent.layer.alert('修改权限失败');
	    				}
	    			},
	    			"text"
	    		);	
	    	//关闭弹窗
			$("#tb_model").modal('hide');
	    }

	  //权限窗口
		 function rolist(mailid){
	        var t = $("#tree");
	        $("#mailid").val(mailid);
	        $.ajax({
	            type: "post",
	            url: "${pageContext.request.contextPath}/back/admin/AuthTreeList",
	            data: "mailid="+mailid,
	            dataType: "json",
	            success: function(data){
	            	//$.fn.zTree.init填充树形控件
	            	zTree = $.fn.zTree.init($("#tree"), setting, data);
	                demoIframe = $("#testIframe");
	                demoIframe.bind("load", loadReady);
	            },  
	            error: function(XMLHttpRequest, textStatus, errorThrown) {  
	                //alert(XMLHttpRequest.status);  
	                //alert(XMLHttpRequest.readyState);  
	                //alert(textStatus);  
	            },  
	        });  
	        

	    }
		 function loadReady() {
		        var bodyH = demoIframe.contents().find("body").get(0).scrollHeight,
		                htmlH = demoIframe.contents().find("html").get(0).scrollHeight,
		                maxH = Math.max(bodyH, htmlH), minH = Math.min(bodyH, htmlH),
		                h = demoIframe.height() >= maxH ? minH:maxH ;
		        if (h < 530) h = 530;
		        demoIframe.height(h);
		    }

	</script>
	</head>
<body class="gray-bg">
   <body style="background-color:#F2F9FD">
	<div class="panel-body" style="padding-bottom: 0px;">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>还款信息</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i></a>
							<!-- <a class="close-link"> <i class="fa fa-times"></i></a> -->
						</div>
					</div>
					<div class="ibox-content">
							<div class="form-group">
		            			<label for="incomeTypes" class="control-label col-sm-1">订单编号</label>
								<div class="col-sm-2">
									<input type="text" name="fcode" class="form-control" id="fcode">
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
	<div class="modal fade" id="editRole" tabindex="-1" role="dialog"
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
				<div class="modal-body">
					<!-- 新增系别 -->
					<form id="editForm" class="form-horizontal m-t">
					<!-- /*  <id column="mailid" property="mailid"/>
							 		  <result column="host" property="host"/>//用户名
							 		  <result column="formName" property="formName"/>//接口地址地址
							 		  <result column="password" property="password"/>//密码
							 		  <result column="isuser" property="isuser"/> //是否使用(1：使用   2：未使用)*/ -->
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">用户名</label> 
							<div class="col-sm-8">
								<input type="text" name="host" class="form-control" id="host">
							</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">接口地址地址</label>
							<div class="col-sm-8">
								<input type="text" name="formName" class="form-control" id="formName">
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">密码</label>
							<div class="col-sm-8">
								<input type="text" name="password" class="form-control" id="password">
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">状态</label>
							<div class="col-sm-8">
								<select class="form-control m-b" id="isuser" name="isuser" style="margin-bottom: 0px;">
		                        		<option value=-1>请选择</option>
		                        		<option value=1>使用</option>
		                        		<option value=2>不使用</option>
		                        </select>
	            			</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
					</button>
					<button type="button" id="btn_submit" class="btn btn-primary" onclick="insertRole()">
						<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存
					</button>
				</div>
			</div>
		</div>
	</div>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
	
		<!-- 权限弹窗 -->
	<div class="modal fade" id="tb_model" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">权限设置</h4>
				</div>
				<div class="modal-body">
					<!-- 新增系别 -->
					<form id="editForm" class="form-horizontal m-t">
					
					<!-- 内容div -->
					<ul id="tree" class="ztree" style="width:560px; overflow:auto;"></ul>
		           	<input type="text" id="mailid" style="display: none" />
						
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
					</button>
					<button type="button" id="btn_sub" class="btn btn-primary" onclick="save(document.getElementById('mailid').value)">
						<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存
					</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>