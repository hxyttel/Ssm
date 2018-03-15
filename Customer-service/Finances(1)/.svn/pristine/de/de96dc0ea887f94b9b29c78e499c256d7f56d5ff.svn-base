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
<script type="text/javascript" src="/Finances/statics/back/static/js/laydate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/js/jquery.form.js"></script>
<script src="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/js/bootstrapValidator.min.js"></script>
<link href="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/css/bootstrapValidator.min.css" rel="stylesheet" />

<script type="text/javascript">
	$(document).ready(function() {
		$('#editRole')
		.bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
            	coname: {
                    message: '机构名称验证失败',
                    validators: {
                    	 notEmpty: {
                             message: '机构名称不能为空'
                         }
                    }
                },
             
                colinkurl: {
                	message: '机构链接验证失败',
                    validators: {
                        notEmpty: {
                            message: '机构链接不能为空,请选择'
                        }
                    }
                }
           
            }
        })
		
	});		
	</script>


<script  type="text/javascript">
    var rows = null;
    
    function addCooorganiz(){
    	//清空editModel原来填写的内容
		$("#editRole #coname").val('');
		$("#editRole #coimgurl").val('');
		$("#editRole #colinkurl").val('');
		
		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
		$("#btn_submit").attr("onclick","insertCooorganiz()");
		//显示新增窗口
		$('#editRole').modal('show');
    }
  //新增角色
	function insertCooorganiz() {
		//表单验证
		//alert(123);
		/* if (!validateForm($("#editForm"))) {
			return;
		} */
		//用来关闭新增窗口***********
		$("#editRole").modal('hide');
		
		 var form = new FormData(document.getElementById("editForm"));
	      $.ajax({
	          url:"${pageContext.request.contextPath }/back/admin/insertCooorganiz",
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
					//新增完刷新表格数据
					$('#tb_role').bootstrapTable('refresh');
	          },
	          error:function(e){
	              alert("错误！！");
	          }
	      });   
		
	}
	//修改按钮事件
     function UpCooorganiz(){
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
 		
 		$("#editForm #coname").val(athRole.coname);
 		$("#editForm #colinkurl").val(athRole.colinkurl);
 		$("#editForm #coid").val(athRole.coid);
 		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
 		$("#btn_submit").attr("onclick","updateCooorganiz()");
 		//显示新增窗口
 		$('#editRole').modal('show');
     }
	function updateCooorganiz(){
		//用来关闭新增窗口***********
		$("#editRole").modal('hide');
		var url = "${pageContext.request.contextPath }/back/admin/updateCooorganiz";
		
		 var form = new FormData(document.getElementById("editForm"));
	      $.ajax({
	          url:"${pageContext.request.contextPath}/back/admin/updateCooorganiz",
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
					//新增完刷新表格数据
					$('#tb_role').bootstrapTable('refresh');
	          },
	          error:function(e){
	              alert("错误！！");
	          }
	      });   
		
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
				ids = ids +stuList[i].coid+",";
			}else{
				ids = ids +stuList[i].coid;
			}
		}
		var url = "${pageContext.request.contextPath }/back/admin/deleteCooorganiz";
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
			url : '${pageContext.request.contextPath}/back/admin/seleCooorganizlist', //请求后台的URL（*）
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
				field : 'coid',
				title : '主键ID'
			}, {
				field : 'coname',
				title : '合作名称'
			}, {
				field : 'coimgurl',
				title : '图片url'
			}, {
				field : 'colinkurl',
				title : '链接url'
			},]
		});
		
		
});
	function queryParams(params) {
		var temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
			//***这里的参数传到后台，用来进行分页处理*************************
			rows: params.limit, //页面大小
			page: params.offset, //页码。
			co_name : $("#conames").val(),
            co_imgurl : $("#coimgurls").val(),
            co_linkurl : $("#colinkurls").val(), 
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
		            			<label for="incomeTypes" class="control-label col-sm-1">机构名称</label>
								<div class="col-sm-2">
									<input type="text" name="coname" class="form-control" id="conames">
		            			</div>

				                <button type="button" id="searchForm" class="btn btn-primary" onclick="searchForm()">搜索</button>
							</div>
						<div id="toolbar" class="btn-group">
							<button id="btn_add" type="button" class="btn btn-w-m btn-primary" data-toggle="modal" data-target="#addStudent" onclick="addCooorganiz()">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
							</button>
							<button id="btn_edit" type="button" class="btn btn-w-m btn-success" onclick="UpCooorganiz()">
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
	<div class="modal fade" id="editRole" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">机构管理</h4>
				</div>
				<div class="modal-body">
					<!-- 新增系别 -->
					<form id="editForm" class="form-horizontal m-t" method="post" enctype="multipart/form-data">
						<input type="hidden" name="coid" id="coid">
						<div class="form-group">
							<label for="coname" class="control-label col-sm-3">机构名称</label> 
							<div class="col-sm-8">
								<input type="text" name="coname" class="form-control" id="coname">
							</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">机构图片</label>
							<div class="col-sm-8">
	            				<input type="file" name="file" id="file">
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">机构链接</label>
							<div class="col-sm-8">
								<textarea name="colinkurl" rows="3" class="form-control" id="colinkurl"></textarea>
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">状态</label>
							<div class="col-sm-8">
								<select name="restatus"  class="form-control" id="restatus">
									<option value="0">启用</option>
									<option value="1">禁用</option>
								</select>
	            			</div>
						</div>
						<div class="form-group">
							<div class="modal-footer">
								<button type="submit" class="btn btn-default" data-dismiss="modal">
									<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
								</button>
								<button type="submit" class="btn btn-primary" >
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