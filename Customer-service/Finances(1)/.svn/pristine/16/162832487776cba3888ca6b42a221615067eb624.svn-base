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
<script src="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/js/bootstrapValidator.min.js"></script>
<link href="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/css/bootstrapValidator.min.css" rel="stylesheet" />

<script type="text/javascript">
$(document).ready(function() {
    $('#editActivity')
        .bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
            	ntid: {
                    message: '编号验证失败',
                    validators: {
                    	 notEmpty: {
                             message: '编号不能为空'
                         },
     		            /* stringLength: {
     		                min: 1,
     		                max: 9,
     		                message: '请输入0-9位数字'
     		            }, */
     		            regexp: {
     		                regexp: /^[0-9]*$/,
     		                message: '只能输入数字'
     		            }
                    }
                },
                /* atintgard: {
                    message: '奖励值验证失败',
                    validators: {
                    	 notEmpty: {
                             message: '奖励值不能为空'
                         },
                         stringLength: {
                             min: 1000,
                             max: 100000,
                             message: '请输入5位数的奖励值'
                         },
                         regexp: {
                             regexp: /^1[3|5|8]{1}[0-9]{9}$/,
                             message: '请输入正确的奖励值'
                         }
                    }
                },  */
                eid: {
                    message: '发布人编号验证失败',
                    validators: {
                    	 notEmpty: {
                             message: '发布人编号不能为空'
                         },
     		            /* stringLength: {
     		                min: 1,
     		                max: 9,
     		                message: '请输入0-9位数字'
     		            }, */
     		            regexp: {
     		                regexp: /^[0-9]*$/,
     		                message: '只能输入数字'
     		            }
                    }
                },
                /* eidcard: {
                    message: '身份证验证失败',
                    validators: {
                    	 notEmpty: {
                             message: '身份证不能为空'
                         },
                         regexp: {
                             regexp:  /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/,
                             message: '请输入正确的身份证'
                         }
                         
                    }
                }, */
               /*  eemail: {
                	message: '员工邮箱验证失败',
                    validators: {
                        notEmpty: {
                            message: '员工邮箱不能为空'
                        },
                        emailAddress: {
                            message: '请输入正确的邮件地址如：123@qq.com'
                        }
                    }
                },
                eposition: {
                    message: '员工职位验证失败',
                    validators: {
                    	 notEmpty: {
                             message: '员工职位不能为空'
                         }
                         
                    }
                }, */
                ntemail: {
                    message: '邮箱验证失败',
                    validators: {
                    	 notEmpty: {
                             message: '邮箱验证不能为空'
                         }
                        
                    }
                },
                ntnews: {
                	message: '短信验证失败',
                    validators: {
                        notEmpty: {
                            message: '短信验证不能为空,请选择'
                        }
                    }
                }
            }
        })
        .on('success.form.bv', function(e) {
        	$("#editForm").modal('hide');
            // Prevent form submission
            e.preventDefault();

            // Get the form instance
            var $form = $(e.target);

            // Get the BootstrapValidator instance
            var bv = $form.data('bootstrapValidator');
            var form = new FormData(document.getElementById("editActivity"));
            var ntid =$("#editActivity #ntid").val(); 
            
            alert(ntid);
            if(ntid==null || ntid==""){
            	$.ajax({
       	          url:"${pageContext.request.contextPath}/back/admin/insertNoticeType",
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
       					$('#tb_Activity').bootstrapTable('refresh');
       	          },
       	          error:function(e){
       	        	parent.layer.alert('错误');
       	          }
             });
            	
            }else{
            	$("#editForm").modal('hide');
        		var url = "${pageContext.request.contextPath }/back/admin/updateNoticeType";
        		$.post(
        			url,
        			{
        				ntid:ntid,
        				eid:$("#editActivity #eid").val(),
        				ntemail:$("#editActivity #ntemail").val(),
        				ntnews:$("#editActivity #ntnews").val(),
        			},
        			function(data){
        				//后台返回int类型的数据
        				if(data>0){
        					//新增成功，下面是后台框架的提示
        					parent.layer.alert('修改成功');
        					$('#tb_Activity').bootstrapTable('refresh');
        				}else{
        					//新增失败
        					parent.layer.alert('修改失败');
        				}
        				//新增完刷新表格数据
        				$('#tb_Activity').bootstrapTable('refresh');
        			},
        			"text"
        		);		
            } 
        });
});
</script>
<script  type="text/javascript">
    var rows = null;
    
    function addActivity(){
    	//清空editModel原来填写的内容
		$("#editActivity #eid").val('');
		$("#editActivity #ntemail").val('');
		$("#editActivity #ntnews").val('');
		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
		$("#saveadd").attr("onclick","insertActivity()");
		//显示新增窗口
		$('#editForm').modal('show');
    }
  //新增角色
	 function insertActivity() {
		//表单验证
		//alert(123);
		 if (!validateForm($("#editForm"))) {
			return;
		}
		//用来关闭新增窗口***********
		
		 var formobj =  document.getElementById("editForm");
		var formdata = new FormData(formobj);
		
		$.ajax({
		    url: '${pageContext.request.contextPath }/back/admin/insertNoticeType',
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
				$('#tb_Activity').bootstrapTable('refresh'); 
			}else{
				//新增失败
				parent.layer.alert('增加失败');
			} 
			//新增完刷新表格数据
		 }).fail(function(res) {
			$('#tb_Activity').bootstrapTable('refresh');
		});
		
		 $("#editActivity").modal('hide');	
		$('#tb_Activity').bootstrapTable('refresh'); 
	 } 
   
	//修改按钮事件
     function UpActivity(){
    	//获取当前选中行的信息
 		var selectList = $('#tb_Activity').bootstrapTable('getSelections');
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
 		$("#editActivity #ntid").val(athRole.ntid);
 		$("#editActivity #eid").val(athRole.eid);
 		$("#editActivity #ntemail").val(athRole.ntemail);
 		$("#editActivity #ntnews").val(athRole.ntnews);
 		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
 		$("#saveadd").attr("onclick","updateRole("+athRole.ntid+")");
 		//显示新增窗口
 		$('#editForm').modal('show');
     }
	/* function updateRole(atid,ptid){
		//用来关闭新增窗口***********
		$("#editActivity").modal('hide');
		//alert("ghjkl")
		var url = "${pageContext.request.contextPath }/back/admin/updateActivity";
		$.post(
			url,
			{
				atid:atid,
				ptid:ptid,
				attitle:$("#editActivity #attitle").val(),
				atintgard:$("#editActivity #atintgard").val(),
				atcontent:$("#editActivity #atcontent").val(), 
				atstarttime:$("#editActivity #atstarttime").val(),
				atendtime:$("#editActivity #atendtime").val(),
				atstatus:$("#editActivity #atstatus").val(),
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
				$('#tb_Activity').bootstrapTable('refresh');
			},
			"text"
		);	
	}  */
	//删除按钮事件
	//*************************************************************************按钮事件
	function btn_delete(){
		delActivity();
	}
	//删除
	function delActivity(){
		//获取当前选中行的信息
		var stuList = $('#tb_Activity').bootstrapTable('getSelections');
		var ids = "";
		//判断有没有选中
		if(stuList.length<=0){
			parent.layer.alert('请选择要删除的数据');
			return;
		}
		//拼接ids  1,2,3,4  用于批量删除
		for(var i =0 ;i<stuList.length;i++){
			if(i!=stuList.length-1){
				ids = ids +stuList[i].ntid+",";
			}else{
				ids = ids +stuList[i].ntid;
			}
		}
		var url = "${pageContext.request.contextPath }/back/admin/deleteNoticeType";
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
				$('#tb_Activity').bootstrapTable('refresh');
			},
			"text"
		);	
	}
	
	//条件查询按钮
	function searchForm(){
		$('#tb_Activity').bootstrapTable('refresh');
	}
	$(function () {
	 	//激活弹框提示
		$("[data-toggle='tooltip']").tooltip();
		 //先销毁表格  
        $('#tb_Activity').bootstrapTable('destroy');  
		$('#tb_Activity').bootstrapTable({
			url : '${pageContext.request.contextPath}/back/admin/pageNoticeType', //请求后台的URL（*）
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
				field : 'ntid',
				title : '主键'
			}, {
				field : 'employe.ename',
				title : '发布人姓名'
			}, {
				field : 'ntemail',
				title : '邮箱通知状态',
				align : 'center',
				formatter : function(value, row, index) {
					var ntemail = row.ntemail;
					if(ntemail==1){
			            return '<i class="fa fa-lock" style="color:red"></i>'
			        }else if(ntemail==2){
			            return '<i class="fa fa-unlock" style="color:green"></i>'
			        }else{
			            return '数据错误'
			        }
				}
			},  {
				field :	'ntnews',
				title : '短信通知状态',
				align : 'center',
				formatter : function(value, row, index) {
					var ntnews = row.ntnews;
					if(ntnews==1){
			            return '<i class="fa fa-lock" style="color:red"></i>'
			        }else if(ntnews==2){
			            return '<i class="fa fa-unlock" style="color:green"></i>'
			        }else{
			            return '数据错误'
			        }
				}
			},/* {
				field : 'ptid',
				title : '角色权限',
				formatter : function(value, row, index) {
					//var id = row.id;
					return "<a  onclick='rolist("+row.atid+");' data-toggle='modal' data-target='#tb_model'><span class='glyphicon glyphicon-new-window'></span>权限设置</a>";
				}
			}, */]
		});
		
		
});
	function queryParams(params) {
		var temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
			//***这里的参数传到后台，用来进行分页处理*************************
			rows: params.limit, //页面大小
			page: params.offset, //页码
			eid:$("#editActivity #eid").val(),
			ntemail:$("#editActivity #ntemail").val(),
			ntnews:$("#editActivity #ntnews").val(),
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
						<h5>网站活动信息</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i></a>
							<!-- <a class="close-link"> <i class="fa fa-times"></i></a> -->
						</div>
					</div>
					<div class="ibox-content">
							
						<div id="toolbar" class="btn-group">
							<button id="btn_add" type="button" class="btn btn-w-m btn-primary" data-toggle="modal" data-target="#addStudent" onclick="addActivity()">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
							</button>
							<button id="btn_edit" type="button" class="btn btn-w-m btn-success" onclick="UpActivity();">
								<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
							</button>
							<button id="btn_delete" type="button" class="btn btn-w-m btn-danger" onclick="btn_delete()">
								<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
							</button>
						</div>
						<!-- table代码就这些，用js构建表格 -->
						<table id="tb_Activity" >
							
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 新增弹窗 -->
	<div class="modal fade" id="editForm" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
	<form id="editActivity" class="form-horizontal m-t" method="post" enctype="multipart/form-data">
			
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">活动管理</h4>
				</div>
				<div class="modal-body">
					<!-- 新增系别 -->
					
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">发布人ID</label> 
							<div class="col-sm-8">
							<input type="hidden" name="ntid" id="ntid" />
								<input type="text" name="eid" class="form-control" id="eid">
							</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">邮箱通知状态</label>
							<div class="col-sm-8">
								<input type="text" name="ntemail" class="form-control" id="ntemail">
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">短信通知状态</label>
							<div class="col-sm-8">
								<input type="text" name="ntnews" class="form-control" id="ntnews">
	            			</div>
						</div>
				</div>
				<div class="modal-footer">
					
					<button type="submit" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
					</button>
					<button type="submit" id="saveadd" class="btn btn-primary" >
						<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存
					</button>
				</div>
			</div>
	</form>
		</div>
	</div>
</body>
</html>