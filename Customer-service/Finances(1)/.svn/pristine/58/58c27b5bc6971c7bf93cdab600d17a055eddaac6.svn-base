<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<jsp:include page="/statics/back/static/jsp/init.jsp"></jsp:include>
<script type="text/javascript" src="/Finances/statics/back/static/js/laydate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/js/jquery.form.js"></script>
<script src="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/js/bootstrapValidator.min.js"></script>
<link href="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/css/bootstrapValidator.min.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/js/bootstrapValidator.min.js"></script>
<link href="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/css/bootstrapValidator.min.css" rel="stylesheet" />
<script type="text/javascript">
$(document).ready(function() {
    $('#idCard')
        .bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
            	upfile: {
                    message: '员工编号验证失败',
                    validators: {
                    	 notEmpty: {
                             message: '文件不能为空'
                         },
                    }
                },
            }
        })
        .on('success.form.bv', function(e) {
        	
        	$("#idCardform").modal('hide');
            // Prevent form submission
            e.preventDefault();

            // Get the form instance
            var $form = $(e.target);

            // Get the BootstrapValidator instance
            var bv = $form.data('bootstrapValidator');
            var form = new FormData(document.getElementById("editRole"));
            var uiid =$("#idCardform #uiid").val();
            AuthIcCard(uiid);	
           
        });
});
</script>	
<script  type="text/javascript" >
    var rows = null;
	
	$(function () {
	 	//激活弹框提示
		$("[data-toggle='tooltip']").tooltip();
		$('#tb_idcard').bootstrapTable({
			url : '${pageContext.request.contextPath}/idcard/selectiIdcardList', //请求后台的URL（*）
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
			pageSize : 6, //每页的记录行数（*）
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
				title : '用户昵称'
			},
			{
				field : 'icname',
				title : '姓名'
			},{
				field : 'icnumber',
				title : '身份证证号'
			}, {
				field : 'icstarttime',
				title : '身份认证时间'
			}, 
			{
				field : 'icstatus',
				title : '身份认证状态',
				align : 'center',
				formatter : function(value,row,index) {
					var icstatus = row.icstatus;
					if(icstatus==2){
			            return '<i><font color="red">认证通过</font></i>'
			        }else{
			        	return '<i  ><font color="green">未认证</front></i>'
			        }
				}
			},{
                field: 'operate',
                title: '操作',
                align : 'center',
				formatter : function(value, row, index) {
					var icstatus = row.icstatus;
					if(icstatus==2){
						return "<button type='button' class='btn btn-primary' style='background-color: #ccc;'>修改</button>"
					}
					else{
						return "<button type='button' onclick='getupIdCard("+row.icid+");' class='btn btn-primary'>修改</button>"
					}
				
				}
            } ]
		});
	});
	function queryParams(params) {
		var temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
			//***这里的参数传到后台，用来进行分页处理*************************
			rows: params.limit, //页面大小
			page: params.offset, //页码
			icname:$("#icname").val(),
			icnumber:$("#icnumber").val(),
			icstatus:$("#icstatus").val(),
		};
		return temp;
	};
	//修改弹出框
	function getupIdCard(icid){
		//获取当前选中行的信息
 		var selectList = $('#tb_idcard').bootstrapTable('getSelections');
 		var athRole = selectList[0];
 		//把选中行的数据放到弹窗的控件中
 		$("#idCardform #uiname").html(athRole.uiname);
 		$("#idCardform #icname").html(athRole.icname);
 		$("#idCardform #icnumber").html(athRole.icnumber);
 		$("#idCardform #icid").val(athRole.icid);
 		$("#idCardform #uiid").val(athRole.uiid);
 		if(athRole.icstatus==1){
 			$("input[name='icstatus'][value='1']").attr("checked",true);
 			$('input[name="icstatus"][value="2"]:checked').attr("checked",false);
 		}
 		else{
 			$("input[name='icstatus'][value='2']").attr("checked",true);
 			$('input[name="icstatus"][value="1"]:checked').attr("checked",false);
 		}
 		
 		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
 		/* $("#btn_submit").attr("onclick","AuthIcCard("+athRole.uiid+")"); */
 		//显示新增窗口
 		$('#idCardform').modal('show');
	}
	function AuthIcCard(uiid){
		$("#idCardform").modal('hide');
		var eid = $('#eid').val();
		var form = new FormData(document.getElementById("idCard"));
		//alert(form.icstatus);
		var icstatus = $("input[name='icstatus']:checked").val();
		$.ajax({
			url:  "${pageContext.request.contextPath }/idcard/AuthIdCard",
		    type: 'post',
		    cache: false,
		    data: form,
		    processData: false,
		    contentType: false,
		    success:function(data){
	        	//后台返回int类型的数据
					if(data>0){
						//新增成功，下面是后台框架的提示
						parent.layer.alert('修改成功');
					}else{
						//新增失败
						parent.layer.alert('修改失败');
					}
					//新增完刷新表格数据
					$('#tb_idcard').bootstrapTable('refresh');
	          },
	          error:function(e){
	              alert("错误！！");
	          }
	      });        
     
     
	}
	//条件查询按钮
	function searchForm(){
		$('#tb_idcard').bootstrapTable('refresh');
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
						<h5>网站身份认证</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i></a>
						</div>
					</div>
					<div class="ibox-content">
						<div class="form-group">
		            			<label for="incomeTypes" class="control-label col-sm-1 col-md-17">身份姓名:</label>
								<div class="col-sm-2">
								  <input type="text" name="icname" class="form-control" id="icname">
		            			</div>
		            			<label for="operateTime" class="control-label col-sm-1">身份证证号</label>
		            			<div class="col-sm-2">
	            					<input type="text" name="icnumber" class="form-control" id="icnumber">
	            				</div>
		            			<label for="operateTime" class="control-label col-sm-1">认证状态</label>
		            			<div class="col-sm-2">
									<select class="form-control m-b" id="icstatus" name="icstatus" style="margin-bottom: 0px;">
		                        		<option value=-1>请选择</option>
		                        		<option value=1>未认证</option>
		                        		<option value=2>认证通过</option>
		                        	</select>
		            			</div>
				                <button type="button" id="searchForm" class="btn btn-primary" onclick="searchForm()">搜索</button>
							</div>
						<div id="toolbar" class="btn-group"></div>
						<!-- table代码就这些，用js构建表格 -->
						<table id="tb_idcard" ></table>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 认证弹窗 -->
	<div class="modal fade" id="idCardform" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">实名认证</h4>
				</div>
				<form id="idCard"  class="form-horizontal m-t" method="post" enctype="multipart/form-data">  
					<div class="modal-body">
						<!-- 实名认证系别 -->				
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">用户昵称</label> 
							<div class="col-sm-8">
								<span id="uiname"></span>
							</div>
						</div>
						<input type="hidden" name="icid" id="icid" />
						<input type="hidden" name="uiid" id="uiid" />
						<input type="hidden" name="eid" id="eid" value="${sessionScope.employee.eid}">
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">姓名</label> 
							<div class="col-sm-8">
								<span id="icname" ></span>
							</div>
						</div>
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">身份证证号</label> 
							<div class="col-sm-8">
								<span id="icnumber" ></span>
							</div>
						</div>
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">身份证正面</label> 
							<div class="col-sm-8">
								 <input type="file" name="upfile"  class="form-control" id="upfile">
							</div>
						</div>
						<div class="form-group">
							<label for="urlName" class="control-label col-sm-3">身份证反面</label> 
							<div class="col-sm-8">
								 <input type="file" name="upfile"  class="form-control" id="upfile">
							</div>
						</div>
						<div class="form-group" id="icstatus">  
							  <label for="leader" class="control-label col-sm-3">实名认证状态</label>  
							   &nbsp;&nbsp;
							  <input type="radio" name="icstatus"  value="1" />未认证 
							  	&nbsp;&nbsp;&nbsp;&nbsp;	
							  <input type="radio" name="icstatus"   value="2"   />认证通过 
							</div> 
							<div class="modal-footer">
							<button type="submit" class="btn btn-default" data-dismiss="modal">
								<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
							</button>
							<button type="submit" id="btn_submit" class="btn btn-primary" >
								<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>