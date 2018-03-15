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
			function upload() {
				var option = {
					type : "POST",
					url : "${pageContext.request.contextPath}/back/import",
					data : {"fileName" : "file1"},
					dataType : "JSON",
					success : function(data) {
						console.info(data);
						if(data=="success"){
							alert("上传成功");
							$('#import').modal('hide');
							$('#tb_emp').bootstrapTable('refresh');
						}
					}
				};
				
				// ajax表单提交
				$("#uploadForm").ajaxSubmit(option);
			}
		</script>

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
            	eenum: {
                    message: '员工编号验证失败',
                    validators: {
                    	 notEmpty: {
                             message: '员工编号不能为空'
                         },
     		            stringLength: {
     		                min: 1,
     		                max: 9,
     		                message: '请输入0-9位数字'
     		            },
     		            regexp: {
     		                regexp: /^[0-9]*$/,
     		                message: '只能输入数字'
     		            }
                    }
                },
                ephone: {
                    message: '员工电话验证失败',
                    validators: {
                    	 notEmpty: {
                             message: '员工电话不能为空'
                         },
                         stringLength: {
                             min: 11,
                             max: 11,
                             message: '请输入11位手机号码'
                         },
                         regexp: {
                             regexp: /^1[3|5|8]{1}[0-9]{9}$/,
                             message: '请输入正确的手机号码'
                         }
                    }
                },
                ename: {
                    message: '员工姓名验证失败',
                    validators: {
                    	 notEmpty: {
                             message: '员工姓名不能为空'
                         },
                    }
                },
                esex: {
                    message: '员工性别验证失败',
                    validators: {
                    	 notEmpty: {
                             message: '员工性别不能为空,请选择'
                         }
                    }
                },
                eidcard: {
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
                },
                eemail: {
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
                },
                eretime: {
                    message: '员工注册时间验证失败',
                    validators: {
                    	 notEmpty: {
                             message: '员工注册时间不能为空'
                         }
                        
                    }
                },
                estatus: {
                	message: '员工状态验证失败',
                    validators: {
                        notEmpty: {
                            message: '员工状态不能为空,请选择'
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
            var form = new FormData(document.getElementById("editRole"));
            var eid =$("#editRole #eid").val();
            var eid =$("#editRole #eid").val();
            if(eid==null || eid==""){
            	$.ajax({
       	          url:"${pageContext.request.contextPath}/back/insertEmp",
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
       					$('#tb_emp').bootstrapTable('refresh');
       	          },
       	          error:function(e){
       	        	parent.layer.alert('错误');
       	          }
             });
            	
            }else{
            	$("#editForm").modal('hide');
        		var url = "${pageContext.request.contextPath }/back/updateEmp";
        		$.post(
        			url,
        			{
        				eid:eid,
        				reid:$("#editRole #reid").val(),
        				eenum:$("#editRole #eenum").val(),
        				esex:$("#editRole #esex").val(),
        				eidcard:$("#editRole #eidcard").val(),
        				ephone:$("#editRole #ephone").val(),
        				eposition:$("#editRole #eposition").val(),
        				eemail:$("#editRole #eemail").val(),
        				ename:$("#editRole #ename").val(),
        				estatus:$("#editRole #estatus").val(),
        				eretime:$("#editRole #eretime").val(),
        				eremark:$("#editRole #eremark").val(),
        				eimage:$("#editRole #eimage").val(),
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
        });
});
</script>
<script  type="text/javascript" >
    var rows = null;
    function addRole(){
    	//清空editModel原来填写的内容
    	$("#editRole #reid").val('');
		$("#editRole #eenum").val('');
		$("#editRole #esex").val('');
		$("#editRole #eidcard").val('');
		$("#editRole #ephone").val('');
		$("#editRole #eposition").val('');
		$("#editRole #eemail").val('');
		$("#editRole #ename").val('');
		$("#editRole #estatus").val('');
		$("#editRole #eretime").val('');
		$("#editRole #eremark").val('');
		$("#editRole #eimage").val('');
		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
		$("#btn_submit").attr("onclick","insertEmploye()");
		//显示新增窗口
		$('#editForm').modal('show');
    }
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
		$("#editRole #eid").val(athRole.eid);
		$("#editRole #reid").val(athRole.reid);
		$("#editRole #eenum").val(athRole.eenum);
		$("#editRole #epassword").val(athRole.epassword);
		$("#editRole #esex").val(athRole.esex);
		$("#editRole #eidcard").val(athRole.eidcard);
		$("#editRole #ephone").val(athRole.ephone);
		$("#editRole #eposition").val(athRole.eposition);
		$("#editRole #eemail").val(athRole.eemail);
		$("#editRole #ename").val(athRole.ename);
		$("#editRole #estatus").val(athRole.estatus);
		$("#editRole #eretime").val(athRole.eretime);
		$("#editRole #eremark").val(athRole.eremark);
		//$("#editRole #eimage").val(athRole.eimage);
		
		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
		$("#btn_submit").attr("onclick","updateEmploye("+athRole.eid+")");
		//显示新增窗口
		$('#editForm').modal('show');
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
			url : '${pageContext.request.contextPath}/back/selectEmployeList', //请求后台的URL（*）
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
			pageSize : 5, //每页的记录行数（*）
			pageList : [ 5,10, 15, 20 ], //可供选择的每页的行数（*）
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
			},
			 {
				field : 'eenum',
				title : '员工编号'
			}, 
			{
				field : 'eimage',
				title : '员工头像',
				align : 'center',
				formatter : function(value,row,index) {
					var image = row.eimage;
					if(image!=null){
						return "<img src=${pageContext.request.contextPath}"+row.eimage+" width='35px' height='40px' />"
					}
				}
			},
			 {
				field : 'ename',
				title : '员工姓名'
			},
			{
				field : 'esex',
				title : '员工性别'
			},  {
				field : 'eidcard',
				title : '员工身份证号',
				align : 'center',
			}, 
			{
				field : 'ephone',
				title : '员工手机号'
			}, 
			{
				field : 'role.rename',
				title : '所属角色'
			},
			{
				field : 'eposition',
				title : '员工职位'
			},  {
				field : 'eemail',
				title : '员工邮箱'
			},  {
				field : 'estatus',
				title : '角色状态',
				align : 'center',
				formatter : function(value, row, index) {
					var estatus = row.estatus;
					if(estatus==1){
			            return '<i class="fa fa-lock" style="color:red"></i>'
			        }else if(estatus==0){
			            return '<i class="fa fa-unlock" style="color:green"></i>'
			        }else{
			            return '数据错误'
			        }
				}
			},  {
				field : 'eretime',
				title : '创建时间'
			},  {
				field : 'eremark',
				title : '自我声明'
			}, ]
		});
		
		
});
	function queryParams(params) {
		var temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
			//***这里的参数传到后台，用来进行分页处理*************************
			rows: params.limit, //页面大小
			page: params.offset, //页码
			eenum : $("#eenum").val(),
			esex : $("#esex").val(),
			eidcard : $("#eidcard").val(), 
			ephone : $("#ephone").val(),
			eposition : $("#eposition").val(),
			eemail : $("#eemail").val(), 
			ename : $("#ename").val(),
			estatus : $("#estatus").val(), 
			eretime : $("#eretime").val(),
			eremark : $("#eremark").val(),
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
		
		
		
		//导出
		function btn_export(){
			$.ajax({
				url:'${pageContext.request.contextPath}/back/export',
				type:'post',
				success:function(data){
					//alert("导出成功，地址在："+data);
					if(data!=null){
						//$('#exportOpens').append("");
						$('#exportOpens').html("导出成功，地址在："+data);
						$('#export').modal('show');
					}
				}
			});
		}
		//导入
		function openImport(){
			//$('#import').show();
			
			$('#import').modal('show');
		}

		//关闭导出窗口
		function enterExport(){
			//$('#import').show();
			
			$('#export').modal('hide');
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
						<h5>网站员工信息</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i></a>
							<!-- <a class="close-link"> <i class="fa fa-times"></i></a> -->
						</div>
					</div>
					<div class="ibox-content">
							<div class="form-group">
		            			<label for="incomeTypes" class="control-label col-sm-1">员工姓名</label>
								<div class="col-sm-2">
									<input type="text" name="ename" class="form-control" id="ename">
		            			</div>
		            			<label for="operateTime" class="control-label col-sm-1">员工性别</label>
		            			<div class="col-sm-2">
		            				<select class="form-control m-b" id="esex" name="esex" style="margin-bottom: 0px;">
		                        		<option value="">请选择</option>
		                        		<option value="男">男</option>
		                        		<option value="女">女</option>
		                        	</select>
		                        	
	            					<!-- <input type="text" name="esex" class="form-control" id="esex"> -->
	            				</div>
	            				<label for="operateTime" class="control-label col-sm-1">员工编号</label>
		            			<div class="col-sm-2">
	            					<input type="text" name="eenum" class="form-control" id="eenum">
	            				</div>
				                <button type="button" id="searchForm" class="btn btn-primary" onclick="searchForm()">搜索</button>
							</div>
						<div id="toolbar" class="btn-group">
							<button id="btn_add" type="button" class="btn btn-w-m btn-primary" data-toggle="modal" data-target="#addStudent" onclick="addRole()">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
							</button>
							<button id="btn_edit" type="button" class="btn btn-w-m btn-success" onclick="UpRole()">
								<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
							</button>
							<button id="btn_delete" type="button" class="btn btn-w-m btn-danger" onclick="btn_delete()">
								<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
							</button>
							<button id="btn_export" type="button" class="btn btn-w-m btn-primary" onclick="btn_export()">
								<span class="glyphicon glyphicon-export" aria-hidden="true"></span>导出
							</button>
							<button  type="button" class="btn btn-w-m btn-success" id="openImport" onclick="openImport();">
								<span class="glyphicon glyphicon-import" aria-hidden="true"></span>
								导入
							</button>
						</div>
						<!-- table代码就这些，用js构建表格 -->
						<table id="tb_emp" >
							
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
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">员工管理</h4>
				</div>
				<div class="modal-body">
					<!-- 新增系别 -->
					<form id="editRole" class="form-horizontal m-t" method="post" enctype="multipart/form-data">
						<!-- <form id="editRole" method="post" class="form-horizontal m-t" action="ajaxSubmit.php"> -->
                		<input type="hidden" name="eid" id="eid" />
                		<div class="form-group">
							<label for="url" class="control-label col-sm-3">员工编号</label>
							<div class="col-sm-8">
								<input type="text" name="eenum" rows="3" class="form-control" id="eenum" />
	            			</div>
						</div>
						<div class="form-group">
							<div class="col-sm-8">
								<input type="hidden" name="epassword" rows="3" class="form-control" id="epassword" />
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">员工手机号</label>
							<div class="col-sm-8">
								<input type="text" name="ephone" rows="3" class="form-control" id="ephone" />
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">员工姓名</label>
							<div class="col-sm-8">
								<input type="text" name="ename" rows="3" class="form-control" id="ename" />
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">员工性别</label>
							<div class="col-sm-8">
								<select class="form-control m-b" id="esex" name="esex" style="margin-bottom: 0px;">
		                        		<option value="">请选择</option>
		                        		<option value="男">男</option>
		                        		<option value="女">女</option>
		                        </select>
								<!-- <textarea name="esex" rows="3" class="form-control" id="esex"></textarea> -->
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">员工身份证号</label>
							<div class="col-sm-8">
								<input type="text" name="eidcard" rows="3" class="form-control" id="eidcard" />
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">员工头像</label>
							<div class="col-sm-8">
								<input type="file" name="file" id="eimage"/>
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">员工职位</label>
							<div class="col-sm-8">
								<input type="text" name="eposition" rows="3" class="form-control" id="eposition" />
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">入职时间</label>
							<div class="col-sm-8">
								<input placeholder="请选择日期" name="eretime" id="eretime" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">所属角色</label> 
							<div class="col-sm-8">
								<select class="form-control m-b" id="reid" name="reid" style="margin-bottom: 0px;">
		                        	<c:forEach items="${rolelist}" var="role" >
		                        		<option value="${role.reid}">${role.rename}</option>
		                        	</c:forEach>
		                        </select>
	            			</div>
						</div>	
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">员工邮箱</label>
							<div class="col-sm-8">
								<input type="text" name="eemail" rows="3" class="form-control" id="eemail" />
	            			</div>
						</div>	
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">角色状态</label>
							<div class="col-sm-8">
								<select class="form-control m-b" id="estatus" name="estatus" style="margin-bottom: 0px;">
		                        		<option value="-1">请选择</option>
		                        		<option value="0">禁用</option>
		                        		<option value="1">启用</option>
		                        </select>
	            			</div>
						</div>
						<div class="form-group">
							<label for="url" class="control-label col-sm-3">自我声明</label>
							<div class="col-sm-8">
								<textarea name="eremark" rows="3" class="form-control" id="eremark"></textarea>
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
            
        </div>
		</form>
				</div>
			</div>
		</div>
		
		
		
		
		<!-- 导入 -->
		<div class="modal fade" id="import" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">导入</h4>
				</div>
					<center>
						<%-- <form id="importAjax" action="${pageContext.request.contextPath}/back/import" namespace="/" enctype="multipart/form-data" method="post" >
							<input type="file" name="fileName" accept="excel/*">
							<br><br>
							<input type="submit" id="importIn" value="导入">
						</form> --%>
						<form id="uploadForm">
							<input type="file" name="file1" class="btn btn-w-m btn-primary"/>
							<br><br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button  type="button" class="btn btn-w-m btn-primary" onclick="upload();">
								导入
							</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="${pageContext.request.contextPath}/back/downloadEmploye" class="btn btn-w-m btn-danger">下载模板</a> <br>
							
						</form>
					</center>
				</div>
			</div>
		</div>
		
		
		<!-- 导导出 -->
		<div class="modal fade" id="export" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document" style="width:300px;height: 500px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">导出</h4>
				</div>
					<center style="height:250px;">
					<br><br><br>
						<div>
							<font size="5" color="red"><span id="exportOpens"></span></font>
						</div>
						<button  type="button" class="btn btn-w-m btn-primary" onclick="enterExport();">
								确定
						</button>
					</center>
				</div>
			</div>
		</div>
</body>
</html>