<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<!-- 引用js文件 -->
<jsp:include page="/statics/back/static/jsp/init.jsp"></jsp:include>
<script type="text/javascript" src="/Finances/statics/back/static/js/laydate.js"></script>
<script  type="text/javascript">
    var rows = null;
    
    function addRole(){
    	//清空editModel原来填写的内容
		$("#editRole #ftitle").val('');
		$("#editRole #uid").val('');
		$("#editRole #fcode").val('');
		$("#editRole #ftype").val('');
		$("#editRole #fpart").val('');
		$("#editRole #froe").val('');
		$("#editRole #fincrease").val('');
		$("#editRole #fcontent").val('');
		$("#editRole #fsituation").val('');
		$("#editRole #fopinion").val('');
		$("#editRole #fmoney").val('');
		$("#editRole #fendmoney").val('');
		$("#editRole #fendtime").val('');
		$("#editRole #fminmoney").val('');
		$("#editRole #fmaxmoney").val('');
		$("#editRole #frate").val('');
		$("#editRole #upfile").val('');
		$("#editRole #forderimg").val('');
		$("#editRole #fcontract").val('');
		$("#editRole #fbidstatus").val('');
		$("#editRole #fstatus").val('');
		$("#editRole #fsecurity").val('');
		$("#editRole #fprocedures").val('');
		$("#editRole #frepayment").val('');
		$("#editRole #fsecuritymea").val('');
		$("#editRole #fhuanstat").val('');
		$("#editRole #fhuanend").val('');
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
	
		var formobj =  document.getElementById("editForm");
		var formdata = new FormData(formobj);
		
		$.ajax({
			url:  "${pageContext.request.contextPath }/back/insertfabiao",
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
		
		$("#editRole #fid").val(athRole.fid);
		$("#editRole #ftitle").val(athRole.ftitle);
		$("#editRole #uid").val(athRole.uid);
		$("#editRole #fcode").val(athRole.fcode);
		$("#editRole #ftype").val(athRole.ftype);
		$("#editRole #fpart").val(athRole.fpart);
		$("#editRole #froe").val(athRole.froe);
		$("#editRole #fincrease").val(athRole.fincrease);
		$("#editRole #fcontent").val(athRole.fcontent);
		$("#editRole #fsituation").val(athRole.fsituation);
		$("#editRole #fopinion").val(athRole.fopinion);
		$("#editRole #fmoney").val(athRole.fmoney);
		$("#editRole #fendmoney").val(athRole.fendmoney);
		$("#editRole #fendtime").val(athRole.fendtime);
		$("#editRole #fminmoney").val(athRole.fminmoney);
		$("#editRole #fmaxmoney").val(athRole.fmaxmoney);
		$("#editRole #frate").val(athRole.frate);
		//$("#editRole #fimage").val(athRole.fimage);
		//$("#editRole #forderimg").val(athRole.forderimg);
		//$("#editRole #fcontract").val(athRole.fcontract);
		$("#editRole #fbidstatus").val(athRole.fbidstatus);
		$("#editRole #fstatus").val(athRole.fstatus);
		//$("#editRole #fsecurity").val(athRole.fsecurity);
		$("#editRole #fprocedures").val(athRole.fprocedures);
		//$("#editRole #frepayment").val(athRole.frepayment);
		$("#editRole #fsecuritymea").val(athRole.fsecuritymea);
		$("#editRole #fhuanstat").val(athRole.fhuanstat);
		$("#editRole #fhuanend").val(athRole.fhuanend);
		
		$("#editRole #fid").val(athRole.fid);
		//更改弹窗中保存按钮的事件（新增和修改用用同一个弹窗）
		$("#btn_submit").attr("onclick","updateRole()");
		//显示新增窗口
		$('#editRole').modal('show');
    }
    function updateRole(fid){
		//用来关闭新增窗口***********
		//用来关闭新增窗口***********
		$("#editRole").modal('hide');
		var formobj =  document.getElementById("editForm");
		var formdata = new FormData(formobj);
	/**
		var dd = $("#cwechartimgurl").val();
		if(dd==""){
			parent.layer.alert('第一个文件不能为空');
			return;
		}
		
		var cc = $(" #cweboimgurl").val();
		if(cc==""){
			alert('第二个文件不能为空');
			parent.layer.alert('第二个文件不能为空');
			return;
		}
		*/
	      $.ajax({
	          url:"${pageContext.request.contextPath}/back/updatefabiao",
	          type:"post",
	          data:formdata,
	          processData:false,
	          contentType:false,
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
				ids = ids +stuList[i].fid+",";
			}else{
				ids = ids +stuList[i].fid;
			}
		}
		var url = "${pageContext.request.contextPath }/back/deletefabiao";
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
			url : '${pageContext.request.contextPath}/back/selectFabiao', //请求后台的URL（*）
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
			singleSelect: false,  //设置为单选
			columns : [ {
				checkbox : true,
			}, {
				field : 'fid',
				title : '主键id'
			}, {
				field : 'uid',
				title : '用户id'
			}, {
				field : 'fpart',
				title : '发标类型'
			},  {
				field : 'fcontent',
				title : '发标概要'
			},	{
				field : 'fmoney',
				title : '发标金额'
			},	{
				field : 'fsecuritymea',
				title : '风险措施'
			},	{
				field : 'fendtime',
				title : '投标截止时间'
			},	{
				field : 'fimage',
				title : '代表图'
			},	{
				field : 'fsecurity',
				title : '担保措施'
			},	{
				field : 'forderimg',
				title : '详情图片'
			}, {
				field : 'fstatus',
				title : '发标状态',
				align : 'center',
				/* formatter : function(value, row, index) {
					var status = row.restatus; */
					/* if(status==0){
						return "<span class='label label-primary'>å¯ç¨</span>";
					}else{
						return "<span class='label label-danger'>ç¦ç¨</span>";
					} */
					/* if(status==1){
			            return '<i class="fa fa-lock" style="color:red"></i>'
			        }else if(status==0){
			            return '<i class="fa fa-unlock" style="color:green"></i>'
			        }else{
			            return 'æ°æ®éè¯¯'
			        }
				} */
			},/* {
				field : 'ptid',
				title : 'è§è²æé',
				formatter : function(value, row, index) {
					//var id = row.id;
					return "<a  onclick='rolist("+row.nid+");' data-toggle='modal' data-target='#tb_model'><span class='glyphicon glyphicon-new-window'></span>æéè®¾ç½®</a>";
				}
			}, */]
		});
		
		
});
	function queryParams(params) {
		var temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
			//***这里的参数传到后台，用来进行分页处理*************************
			rows: params.limit, //页面大小
			page: params.offset, //页码
			fid : $("#fid").val(),
			uid : $("#uid").val(),
			fpart : $("#fpart").val(),
			fcontent : $("#fcontent").val(), 
			fmoney : $("#fmoney").val(),
			fsecuritymea : $("#fsecuritymea").val(),
			fendtime : $("#fendtime").val(),
			fimage : $("#fimage").val(),
			fsecurity : $("#fsecurity").val(),
			forderimg : $("#forderimg").val(),
			fstatus : $("#fstatus").val(), 
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
					<!-- 
					<div class="form-group">
            			<label for="incomeTypes" class="control-label col-sm-1">è§è²åç§°</label>
						<div class="col-sm-2">
							<input type="text" name="rename" class="form-control" id="renames">
            			</div>
            			<label for="operateTime" class="control-label col-sm-1">è§è²å¤æ³¨</label>
            			<div class="col-sm-2">
           					<input type="text" name="reremark" class="form-control" id="reremarks">
           				</div>
            			<label for="operateTime" class="control-label col-sm-1">è§è²ç¶æ</label>
            			<div class="col-sm-2">
							<select class="form-control m-b" id="restatuss" name="restatus" style="margin-bottom: 0px;">
                        		<option value=-1>è¯·éæ©</option>
                        		<option value=1>ç¦ç¨</option>
                        		<option value=2>å¯ç¨</option>
                        	</select>
            			</div>
				                <button type="button" id="searchForm" class="btn btn-primary" onclick="searchForm()">æç´¢</button>
							</div>
						-->
						<div id="toolbar" class="btn-group">
							<!-- <button id="btn_add" type="button" class="btn btn-w-m btn-primary" data-toggle="modal" data-target="#addStudent" onclick="addRole()">
								<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
							</button> -->
							<button id="btn_edit" type="button" class="btn btn-w-m btn-success" onclick="UpRole()">
								<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>审核发标
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
			<span aria-hidden="true">x</span>
		</button>
		<h4 class="modal-title" id="myModalLabel">发标表</h4>
		</div>
		<div class="modal-body">
			<!-- 新增系别 -->
			<form id="editForm" class="form-horizontal m-t">
			<input type="hidden" name="fid" id="fid">
				<div class="form-group">
					<label for="urlName" class="control-label col-sm-3">标名</label> 
					<div class="col-sm-8">
						<input type="text" name="ftitle" class="form-control" id="ftitle" readonly="readonly">
					</div>
				</div>
				<input type="hidden" name="fid" id="fid">
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">用户id</label>
					<div class="col-sm-8">
						<input type="text" name="uid" class="form-control" id="uid" readonly="readonly">
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">商品编号</label>
					<div class="col-sm-8">
						<input type="text" name="fcode" class="form-control" id="fcode">
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">标种</label>
					<div class="col-sm-8">
						<select name="ftype"  class="form-control" id="ftype">
							<option value="新手标">新手标</option>
							<option value="热门标">热门标</option>
						</select>
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">标的分类</label>
					<div class="col-sm-8">
						<select name="fpart"  class="form-control" id="fpart">
							<option value="爱车贷">爱车贷</option>
							<option value="爱房贷">爱房贷</option>
							<option value="消费基金">消费基金</option>
							<option value="爱公益">爱公益</option>
						</select>
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">年收益率</label>
					<div class="col-sm-8">
						<input type="text" name="froe" class="form-control" id="froe" onkeyup="value=value.replace(/[^\d.]/g,'')">
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">活动加息</label>
					<div class="col-sm-8">
						<input type="text" name="fincrease" class="form-control" id="fincrease" onkeyup="value=value.replace(/[^\d.]/g,'')">
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">产品概要</label>
					<div class="col-sm-8">
						<textarea rows="4" cols="52" type="text" name="fcontent" id="fcontent">
						</textarea>
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">项目情况</label>
					<div class="col-sm-8">
						<input type="text" name="fsituation" class="form-control" id="fsituation">
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">爱钱帮独立意见</label>
					<div class="col-sm-8">
						<input type="text" name="fopinion" class="form-control" id="fopinion">
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">投标金额</label>
					<div class="col-sm-8">
						<input type="text" name="fmoney" class="form-control" id="fmoney" readonly="readonly" onkeyup="value=value.replace(/[^\d]/g,'') " ng-pattern="/[^a-zA-Z]/">
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">已投金额</label>
					<div class="col-sm-8">
						<input type="text" name="fendmoney" class="form-control" id="fendmoney">
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">投标截止时间</label>
					<div class="col-sm-8">
						<!--<input type="text" name="fendtime" class="form-control" id="fendtime"> <input name="fendtime" id="fendtime" placeholder="请输入日期" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})"> -->
           				
           				<input placeholder="请选择日期" name="fendtime" id="fendtime" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD'})">
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">最小投标金额</label>
					<div class="col-sm-8">
						<input type="text" name="fminmoney" class="form-control" id="fminmoney" onkeyup="value=value.replace(/[^\d]/g,'') " ng-pattern="/[^a-zA-Z]/">
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">最大投标金额</label>
					<div class="col-sm-8">
						<input type="text" name="fmaxmoney" class="form-control" id="fmaxmoney" onkeyup="value=value.replace(/[^\d]/g,'') " ng-pattern="/[^a-zA-Z]/">
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">收益率</label>
					<div class="col-sm-8">
						<input type="text" name="frate" class="form-control" id="frate" onkeyup="value=value.replace(/[^\d.]/g,'')">
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">代表图</label>
					<div class="col-sm-8">
						<input type="file"  name="upfile" >
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">详情图片</label>
					<div class="col-sm-8" id="filecontr">
						<input type="file" name="upfile" id="upfile"><span id="tisspan" onclick="addimgs()">添加</span>
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">合同</label>
					<div class="col-sm-8">
						<input type="file" name="orderfile" >
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">投标状态</label>
					<div class="col-sm-8">
						<select name="fbidstatus"  class="form-control" id="fbidstatus">
							<option value="0">未满</option>
							<option value="1">已满</option>
						</select>
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">发布状态</label>
					<div class="col-sm-8">
						<select name="fstatus"  class="form-control" id="fstatus">
							<option value="1">募集标</option>
							<option value="2">还款标</option>
							<option value="3">结清标</option>
							<option value="4">流标</option>
							<option value="5">废标</option>
							<option value="6">待审核标</option>
							<option value="7">满标</option>
						</select>
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">担保措施</label>
					<div class="col-sm-8">
						<input type="file" name="secfile" >
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">还款开始时间</label>
					<div class="col-sm-8">
						<input placeholder="请选择日期" name="fhuanstat" id="fhuanstat" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD'})">
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">还款结束时间</label>
					<div class="col-sm-8">
						<input placeholder="请选择日期" name="fhuanend" id="fhuanend" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD'})">
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">手续</label>
					<div class="col-sm-8">
						<input type="text" name="fprocedures" class="form-control" id="fprocedures">
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">还款方式</label>
					<div class="col-sm-8">
						<input type="file" name="repfile" >
           			</div>
				</div>
				<div class="form-group">
					<label for="url" class="control-label col-sm-3">风险措施</label>
					<div class="col-sm-8">
						<input type="text" name="fsecuritymea" class="form-control" id="fsecuritymea" readonly="readonly">
           			</div>
				</div>
			</form>
		</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">
						<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
					</button>
					<button type="button" id="btn_submit" class="btn btn-primary" onclick="insertRole()">
						<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存
					</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>