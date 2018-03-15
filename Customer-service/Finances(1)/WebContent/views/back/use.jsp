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
<title>用户列表</title>
<!-- 引用js文件 -->

<jsp:include page="/statics/back/static/jsp/init.jsp"></jsp:include>
<script type="text/javascript" src="/Finances/statics/back/static/js/laydate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/js/jquery.form.js"></script>
<script src="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/js/bootstrapValidator.min.js"></script>
<link href="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/css/bootstrapValidator.min.css" rel="stylesheet" />

<script  type="text/javascript" >
    var rows = null;
	
	$(function () {
	 	//激活弹框提示
		$("[data-toggle='tooltip']").tooltip();
		$('#tb_role').bootstrapTable({
			url : '${pageContext.request.contextPath}/user/selectiUserList', //请求后台的URL（*）
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
				field : 'uid',
				title : '用户ID'
			},{
				field : 'uphone',
				title : '电话号码'
			}, {
				field : 'uregTime',
				title : '注册时间'
			}, {
				field : 'uloginTime',
				title : '登录时间'
			}, {
				field : 'qrcode',
				title : '二维码',
				align : 'center',
				formatter : function(value,row,index) {
					var qrcode = row.qrcode;
					if(qrcode!=null){
						return "<img src=${pageContext.request.contextPath}"+row.qrcode+" width='35px' height='40px' />"
					}
				}
			}, {
				field : 'uaddress',
				title : '自己常用登陆地'
			}, {
				field : 'uip',
				title : 'ip'
			}, {
				field : 'ucredit',
				title : '信用额度'
			}, {
				field : 'ubalance',
				title : '余额值'
			}, {
				field : 'ulid',
				title : '成长等级'
			}, {
				field : 'vid',
				title : '会员积分id'
			}, {
				field : 'uenable',
				title : '是否禁用',
				align : 'center',
				formatter : function(value, row, index) {
					var uenable = row.uenable;
					if(uenable==1){
			            return '<i class="fa fa-unlock" style="color:green"></i>'
			        }else{
			        	return '<i class="fa fa-lock" style="color:red"></i>'
			        }
				}
			},{
                field: 'operate',
                title: '操作',
                align : 'center',
				formatter : function(value, row, index) {
					return "<button type='button' onclick='getAlert("+row.uid+");' class='btn btn-primary'>查看</button>"
				}
            } ]
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
	function getAlert(uid){
		$.ajax({
 	          url:"${pageContext.request.contextPath}/user/findUserinfo",
 	          type:"post",
 	          data:{"uid":uid},
 	          dataType : "JSON",
 	          success:function(data){
 	        	 if(data!=null){
 	        		var cc ='<div style="width: 80%;margin: 20px;"><span style="margin: 20px;height: 21px;line-height: 20px;">头像:</span><span><img src=${pageContext.request.contextPath}'+data.uiheadImg+' style="width: 40px;height: 40px;"/></span><br/>';
						cc+='<span style="margin: 20px;height: 21px;line-height: 20px;">昵称:</span><span>'+data.uiname+'</span><br />';
	        			cc+='<span style="margin: 20px;height: 21px;line-height: 20px;">性别:</span><span>'+data.uisex+'</span><br/>';		
	        			cc+='<span style="margin: 20px;height: 21px;line-height: 20px;">生日:</span><span>'+data.uibirthday+'</span><br/>';
	        			cc+='<span style="margin: 20px;height: 21px;line-height: 20px;">邮箱:</span><span>'+data.uiemail+'</span><br/>';
 	        			if(data.uiopenstatus=='1'){
 	        				cc+='<span style="margin: 20px;height: 21px;line-height: 20px;">开户:</span><span>实名认证待审核</span></div>';
 	        			}
 	        			if(data.uiopenstatus=='2'){
 	        				cc+='<span style="margin: 20px;height: 21px;line-height: 20px;">开户:</span><span>已开户</span></div>';
 	        			}
 	        			if(data.uiopenstatus=='0'){
 	        				cc+='<span style="margin: 20px;height: 21px;line-height: 20px;">开户:</span><span>未实名认证</span></div>'
 	        			}
 	        		 
	 	        	parent.layer.open({
	 	       		    type: 1,
	 	       		    skin: 'layui-layer-rim', //加上边框
	 	       		    area: ['300px', '240px'], //宽高
	 	       		    content:cc
	 	       		})
 	        	 }else{
 	        		parent.layer.alert('数据返回失败');
 	        	 }
 	          },
 	          error:function(e){
 	        	parent.layer.alert('请求错误');
 	          }
       });
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
						<h5>网站角色信息</h5>
						<div class="ibox-tools">
							<a class="collapse-link"> <i class="fa fa-chevron-up"></i></a>
						</div>
					</div>
					<div class="ibox-content">
						<div id="toolbar" class="btn-group"></div>
						<!-- table代码就这些，用js构建表格 -->
						<table id="tb_role" ></table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>