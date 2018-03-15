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
		        <script type="text/javascript">
		$(document).ready(function() {
		    $('#newsform')
		        .bootstrapValidator({
		            message: 'This value is not valid',
		            feedbackIcons: {
		                valid: 'glyphicon glyphicon-ok',
		                invalid: 'glyphicon glyphicon-remove',
		                validating: 'glyphicon glyphicon-refresh'
		            },
		            fields: {
		            	username: {
		            		message: '用户名验证失败',
		                    validators: {
		                    	 notEmpty: {
		                             message: '用户名不能为空'
		                         },
		                         stringLength: {
		                             min: 6,
		                             max: 30,
		                             message: '用户名必须大于6，长度小于30个字符。'
		                         },
		                    }
		                },	
		                password: {
		                     message:'密码无效',
		                     validators: {
		                         notEmpty: {
		                             message: '密码不能为空'
		                         },
		                         stringLength: {
		                             min: 1,
		                             max: 30,
		                             message: '密码长度必须在6到30之间'
		                         },
		                     }
		                },
		                method: {
		                	message: '接口地址失败',
		                    validators: {
		                        notEmpty: {
		                            message: '接口地址不能为空'
		                        },		                    
		                    }
		                },
		                isuser: {
		                	message: '是否使用验证失败',
		                    validators: {
		                    	 notEmpty: {
		                             message: '是否使用不能为空'
		                         }
		                        
		                    }
		                }
		            }
		        })
		        .on('success.form.bv', function(e) {
		        	
		        	$("#newsform").modal('hide');
		            // Prevent form submission
		            e.preventDefault();
		
		            // Get the form instance
		            var $form = $(e.target);
		
		            // Get the BootstrapValidator instance
		            var bv = $form.data('bootstrapValidator');
		            var form = new FormData(document.getElementById("editRole"));
		            var msgid =$("#newsform #msgid").val();
		            if(msgid==null || msgid==""){
		            	insertSendMsg();
		            	
		            }else{
		            	updateSendMsg();
		            } 
		        });
		});
		</script>


<script  type="text/javascript">
    var rows = null;
    
    function addSendMsg(){
    	//清空editModel原来填写的内容
		$("#aboutform #username").val(''),
		$("#newsform #password").val(''),
		$("#aboutform #method").val(''),
		$("#aboutform #isuser").val(''),
		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
		//$("#isave").attr("onclick","insertAbout()");
		//显示新增窗口
		$('#newsform').modal('show');
    }
  //新增角色
	function insertSendMsg() {
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
					url:  "${pageContext.request.contextPath }/back/admin/insertSendMsg",
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
	//修改按钮事件
     function UpSendMsg(){
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
 		$("#aboutform #msgid").val(athRole.msgid);
 		$("#aboutform #username").val(athRole.username);
 		$("#aboutform #password").val(athRole.password);
 		$("#aboutform #method").val(athRole.method);		
 		$("#aboutform #isuser").val(athRole.isuser);
 		
 		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
 		//$("#isave").attr("onclick","updateAbout()");
 		//显示新增窗口
 		$('#newsform').modal('show');
     }
	function updateSendMsg(){
		//用来关闭新增窗口***********
		$("#newsform").modal('hide');
	    
	     var formobj =  document.getElementById("aboutform");
			var formdata = new FormData(formobj);
			
			$.ajax({
				url:  "${pageContext.request.contextPath }/back/admin/updateSendMsg",
			    type: 'POST',
			    cache: false,
			    data: formdata,
			    processData: false,
			    contentType: false
			}).done(function(res) {
				//后台返回int类型的数据
				if(res>0){
					//新增成功，下面是后台框架的提示
					parent.layer.alert('修改成功');
				}else{
					//新增失败
					parent.layer.alert('修改失败');
				}
				//新增完刷新表格数据
				$('#tb_role').bootstrapTable('refresh');
			}).fail(function(res) {
				
			});
	}
	//删除按钮事件
	//*************************************************************************按钮事件
	function btn_delete(){
		deleteSendMsg();
	}
	//删除
	function deleteSendMsg(){
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
				ids = ids +stuList[i].msgid+",";
			}else{
				ids = ids +stuList[i].msgid;
			}
		}
		var url = "${pageContext.request.contextPath }/back/admin/deleteSendMsg";
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
			url : '${pageContext.request.contextPath}/back/admin/selectSendMsgList', //请求后台的URL（*）
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
				field : 'msgid',
				title : '编号'
			}, {
				field : 'username',
				title : '用户名'
			}, {
				field : 'password',
				title : '密码'
			},  {
				field : 'method',
				title : '接口地址',				
			},{
				field : 'isuser',
				title : '是否使用(1：使用   2：未使用)',			
			},]
		});
		
		
});
	function queryParams(params) {
		var temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
			//***这里的参数传到后台，用来进行分页处理*************************
			rows: params.limit, //页面大小
			page: params.offset, //页码
			username:$("#username").val(),
		};
		return temp;
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
		            			<label for="incomeTypes" class="control-label col-sm-1">用户名</label>
								<div class="col-sm-2">
									<input type="text" name="username" class="form-control" id="username">
		            			</div>		         
				                <button type="button" id="searchForm" class="btn btn-primary" onclick="searchForm()">搜索</button>
							</div>
						<div id="toolbar" class="btn-group">
							<button id="btn_add" type="button" class="btn btn-w-m btn-primary" data-toggle="modal" data-target="#addStudent" onclick="addSendMsg();">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
							</button>
							<button id="btn_edit" type="button" class="btn btn-w-m btn-success" onclick="UpSendMsg();">
								<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
							</button>
							<button id="btn_delete" type="button" class="btn btn-w-m btn-danger" onclick="btn_delete();">
								<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
							</button>
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
				
		<form id="aboutform" action="/Finances/back/admin/insertAbout" class="form-horizontal m-t" method="post" enctype="multipart/form-data">  
				<div class="modal-body">
				
					<input type="hidden" name="abid" id="abid">
				
					<!-- 新增系别 -->				
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">用户名</label> 
							<div class="col-sm-8">
								<input type="text" name="username" class="form-control" id="username">
								<input type="hidden" name="msgid" id="msgid">
							</div>
						</div>
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">密码</label> 
							<div class="col-sm-8">
								 
								 <input type="text" name="password"  class="form-control" id="password">
								 
							</div>
						</div>
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">接口地址</label> 
							<div class="col-sm-8">
								<input type="text" name="method" class="form-control" id="method">
							</div>
						</div>
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">是否使用(1：使用   2：未使用)</label> 
							<div class="col-sm-8">
								<input type="text" name="isuser" class="form-control" id="isuser">
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