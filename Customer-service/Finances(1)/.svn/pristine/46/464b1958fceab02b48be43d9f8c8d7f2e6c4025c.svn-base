<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=path%>/">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<!-- 引用js文件 -->

<jsp:include page="/statics/back/static/jsp/init.jsp"></jsp:include>
<script type="text/javascript" src="/Finances/statics/back/static/js/laydate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/js/jquery.form.js"></script>
<script src="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/js/bootstrapValidator.min.js"></script>
<link href="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/css/bootstrapValidator.min.css" rel="stylesheet" />
<script type="text/javascript">
$(document).ready(function() {
    $('#editForm')
        .bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
            	rendtime: {
                    message: '红包结束时间验证失败',
                    validators: {
                    	 notEmpty: {
                             message: '红包结束时间不能为空'
                         }
                        
                    }
                },
                rstardtime: {
                    message: '红包开始时间验证失败',
                    validators: {
                    	 notEmpty: {
                             message: '红包开始时间不能为空'
                         }
                        
                    }
                },
                rmoney: {
                	message: '红包验证失败',
                    validators: {
                        notEmpty: {
                            message: '红包金额不能为空,请选择'
                        }
                    }
                },
                rcondition: {
                    message: '大于这个值才可使用此红包验证失败',
                    validators: {
                    	 notEmpty: {
                             message: '此红包不能为空'
                         }
                        
                    }
                }
            }
        }).on('success.form.bv', function(e) {
        	
        	$("#editForm").modal('hide');
        	$("#editImg").modal('hide');
            // Prevent form submission
            e.preventDefault();

            // Get the form instance
            var $form = $(e.target);

            // Get the BootstrapValidator instance
            var bv = $form.data('bootstrapValidator');
            var form = new FormData(document.getElementById("editForm"));
            var rid =$("#editForm #rid").val();
            var uid =$("#editForm #uid").val();
            if(rid==null || rid==""){
            	$.ajax({
       	          url:"${pageContext.request.contextPath}/back/admin/insertRedmoney",
       	          type:"post",
       	          data:form,
       	          processData:false,
       	          contentType:false,
       	          success:function(data){
       	        	//后台返回int类型的数据
       					if(data>0){
       						//新增成功，下面是后台框架的提示
       						parent.layer.alert('增加成功');
       					}else{
       						//新增失败
       						parent.layer.alert('增加失败');
       					}
       					$('#tb_role').bootstrapTable('refresh');
       	          },
       	          error:function(e){
       	        	parent.layer.alert('错误');
       	          }
             });
            	
            }else{
            	updateRed(rid,uid);
            } 
        });
});
</script>
<script  type="text/javascript" >
    var rows = null;
    function addRole(){
    	//清空editModel原来填写的内容
    	$("#editForm #rid").val('');
		$("#editForm #uid").val('');
		$("#editForm #rimage").val('');
		$("#editForm #rendtime").val('');
		$("#editForm #rstardtime").val('');
		$("#editForm #rmoney").val('');
		$("#editForm #rstart").val('');
		$("#editForm #rcondition").val('');
		
		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
		$("#btn_submit").attr("onclick","insertRed()");
		//显示新增窗口
		$('#editImg').modal('show');
    }
	//修改按钮事件
    function UpRed(){
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
		$("#editForm #rid").val(athRole.rid);
		$("#editForm #uid").val(athRole.uid);
		$("#editForm #rendtime").val(athRole.rendtime);
		$("#editForm #ipimage").val(athRole.ipimage); 
		$("#editForm #rstardtime").val(athRole.rstardtime);
		$("#editForm #rmoney").val(athRole.rmoney);
		//$("#editForm #rstart").val(athRole.rstart);
		$("#editForm #rcondition").val(athRole.rcondition);
		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
		$("#btn_submit").attr("onclick","updateRed("+athRole.rid+","+athRole.uid+")");
		//显示新增窗口
		$('#editImg').modal('show');
    }
	function updateRed(rid,uid){
		//用来关闭新增窗口***********
		$("#editImg").modal('hide');
		var url = "${pageContext.request.contextPath }/back/admin/updateRedmoney";
		$.post(
			url,
			{
				rid:rid,
				uid:uid,
				rimage:$("#editForm #rimage").val(),
				rendtime:$("#editForm #rendtime").val(),
				rstardtime:$("#editForm #rstardtime").val(),
				rmoney:$("#editForm #rmoney").val(),
				rstart:$("#editForm #rstart").val(),
				rcondition:$("#editForm #rcondition").val(),
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
				$('#tb_role').bootstrapTable('refresh');
			},
			"text"
		);	
	}
	//删除按钮事件
	//*************************************************************************按钮事件
	function btn_delete(){
		deleteIndexpic();
	}
	//删除
	function deleteIndexpic(){
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
				ids = ids +stuList[i].rid+",";
			}else{
				ids = ids +stuList[i].rid;
			}
		}
		var url = "${pageContext.request.contextPath }/back/admin/deleteRedmoney";
		
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
	$(function () {
	 	//激活弹框提示
		$("[data-toggle='tooltip']").tooltip();
		$('#tb_role').bootstrapTable({
			url : '${pageContext.request.contextPath}/back/admin/selectRedmoneyList', //请求后台的URL（*）
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
			pageList : [ 10, 25, 50, 100 ], //可供选择的每页的行数（*）
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
			},{
				field : 'uiname',
				title : '用户表名字'
			}, {
				field : 'rimage',
				title : '红包表图片介绍'
			}, {
				field : 'rendtime',
				title : '结束时间'
			}, {
				field : 'rstardtime',
				title : '开始时间'
			}, {
				field : 'rmoney',
				title : '红包金额'
			},{
				field : 'rstart',
				title : '状态'
			},{
				field : 'rcondition',
				title : '大于值才可使用红包'
			},
			
			]
		});
});
	
	function queryParams(params) {
		var temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
			//***这里的参数传到后台，用来进行分页处理*************************
			rows: params.limit, //页面大小
			page: params.offset, //页码
		};
		return temp;
	};
	
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
						<h5>网站角色信息</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i></a>
							<!-- <a class="close-link"> <i class="fa fa-times"></i></a> -->
						</div>
					</div>
					<div class="ibox-content">
						<div id="toolbar" class="btn-group">
							<button id="btn_add" type="button" class="btn btn-w-m btn-primary" data-toggle="modal" data-target="#addStudent" onclick="addRole()">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
							</button>
							<button id="btn_edit" type="button" class="btn btn-w-m btn-success" onclick="UpRed()">
								<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
							</button>
							<button id="btn_delete" type="button" class="btn btn-w-m btn-danger" onclick="btn_delete()">
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
	<div class="modal fade" id="editImg" tabindex="-1" role="dialog"
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
					<form id="editForm" action="" class="form-horizontal m-t" method="post" enctype="multipart/form-data">  
		
					<!-- 新增系别 -->
							<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">用户表名字</label> 
							<input type="hidden" name="rid" id="rid" />
							<div class="col-sm-8">
								<select class="form-control m-b" id="uid" name="uid" style="margin-bottom: 0px;">
		                        	<c:forEach items="${uselist}" var="userlevel" >
		                        		<option value="${userlevel.uid}">${userlevel.uiname}</option>
		                        	</c:forEach>
		                        </select>
							</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">红包表图片介绍</label>
							<div class="col-sm-8">
								<textarea name="rimage" rows="3" class="form-control" id="rimage"></textarea>
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">结束时间</label>
							<div class="col-sm-8">
								<input placeholder="请选择日期" name="rendtime" id="rendtime" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
								
								
	            			</div>
						</div>
							<div class="form-group">
							<label for="url" class="control-label col-sm-3">开始时间</label>
							<div class="col-sm-8">
								
								<input placeholder="请选择日期" name="rstardtime" id="rstardtime" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
								
	            			</div>
						</div>
							<div class="form-group">
							<label for="url" class="control-label col-sm-3">红包金额</label>
							<div class="col-sm-8">
								<textarea name="rmoney" rows="1" class="form-control" id="rmoney"></textarea>
	            			</div>
	            			</div>
	            			<div class="form-group">
							<label for="url" class="control-label col-sm-3">状态</label>
							<div class="col-sm-8">
								<select class="form-control m-b" id="rstart" name="rstart" style="margin-bottom: 0px;">
		                        		<option value="0">未使用</option>
		                        		<option value="1">已使用</option>	
		                        </select>
	            			</div>
	            			</div>
	            			<div class="form-group">
							<label for="url" class="control-label col-sm-3">大于值才可使用的红包</label>
							<div class="col-sm-8">
								<textarea name="rcondition" rows="1" class="form-control" id="rcondition"></textarea>
	            			</div>
	            			</div>
	            	<div class="modal-footer">
					<button type="submit" class="btn btn-default" data-dismiss="modal"> 
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
					</button>
					<button type="submit" id="btn_submit" class="btn btn-primary" >
						<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>提交
					</button>
				</div>
				
						
			</form>		
				</div>
			</div>
		</div>
	</div>
</body>
</html>