<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
%> 
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%  
    String empName = (String) session.getAttribute("empName");  
    pageContext.setAttribute("currentUser", org.apache.shiro.SecurityUtils.getSubject().getPrincipal().toString());  
%>    
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>后台首页</title>
    <!-- 全局js -->
    <script src="${pageContext.request.contextPath}/statics/back/static/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath}/statics/back/static/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${pageContext.request.contextPath}/statics/back/static/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${pageContext.request.contextPath}/statics/back/static/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${pageContext.request.contextPath}/statics/back/static/js/plugins/layer/layer.min.js"></script>

    <!-- 自定义js -->
    <script src="${pageContext.request.contextPath}/statics/back/static/js/hplus.js?v=4.1.0"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/back/static/js/contabs.js"></script>

    <!-- 第三方插件 -->
    <script src="${pageContext.request.contextPath}/statics/back/static/js/plugins/pace/pace.min.js"></script>
    
	

	<script type="text/javascript" src="${pageContext.request.contextPath}/statics/back/static/js/laydate.js"></script>
	<link rel="Shortcut  Icon" href="${pageContext.request.contextPath}/statics/other/lco/6.png">
    <link href="${pageContext.request.contextPath}/statics/back/static/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statics/back/static/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statics/back/static/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statics/back/static/css/style.css?v=4.1.0" rel="stylesheet">
	<script src="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/js/bootstrapValidator.min.js"></script>
	<link href="${pageContext.request.contextPath}/statics/back/static/bootstrapValidator/css/bootstrapValidator.min.css" rel="stylesheet" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/js/jquery.form.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
		    $('#pwdForm')
		        .bootstrapValidator({
		            message: 'This value is not valid',
		            feedbackIcons: {
		                valid: 'glyphicon glyphicon-ok',
		                invalid: 'glyphicon glyphicon-remove',
		                validating: 'glyphicon glyphicon-refresh'
		            },
		            fields: {
		                 OldEpassword: {
		                     message:'密码无效',
		                     validators: {
		                         notEmpty: {
		                             message: '密码不能为空'
		                         },
		                         stringLength: {
		                             min: 1,
		                             max: 30,
		                             message: '用户名长度必须在6到30之间'
		                         },
		                         threshold :  6 , //有6字符以上才发送ajax请求，（input中输入一个字符，插件会向服务器发送一次，设置限制，6字符以上才开始）
		                         remote: {//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}  
		                             url: '${pageContext.request.contextPath}/back/selePwd',//验证地址
		                             message: '原密码不正确',//提示消息
		                             delay :  2000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax（默认输入一个字符，提交一次，服务器压力太大）
		                             type: 'POST',//请求方式
		                             /**自定义提交数据，默认值提交当前input value*/
		                              data: {
		                            	  eid:$("#pwdForm #eid").val(),
		                            	  OldEpassword:$("#pwdForm #OldEpassword").val(),
		                              }
		                         },
		                         regexp: {
		                             regexp: /^[a-zA-Z0-9_\.]+$/,
		                             message: '密码只能由字母、数字、点和下划线组成'
		                         }
		                     }
		                 },
		                 NewEpassword: {
		                     message:'密码无效',
		                     validators: {
		                         notEmpty: {
		                             message: '密码不能为空'
		                         },
		                         stringLength: {
		                             min: 6,
		                             max: 30,
		                             message: '用户名长度必须在6到30之间'
		                         },
		                         different: {//不能和用户名相同
		                             field: 'OldEpassword',
		                             message: '不能和原密码相同'
		                         },
		                         regexp: {
		                             regexp: /^[a-zA-Z0-9_\.]+$/,
		                             message: '密码只能由字母、数字、点和下划线组成'
		                         }
		                     }
		                 },
		                 SureEpassword: {
		                     message: '密码无效',
		                     validators: {
		                         notEmpty: {
		                             message: '确认密码不能为空'
		                         },
		                         stringLength: {
		                             min: 6,
		                             max: 30,
		                             message: '确认密码长度必须在6到30之间'
		                         },
		                         identical: {//相同
		                             field: 'NewEpassword',
		                             message: '两次密码不一致'
		                         },
		                         different: {//不能和用户名相同
		                             field: 'OldEpassword',
		                             message: '不能和原密码相同'
		                         },
		                         regexp: {//匹配规则
		                             regexp: /^[a-zA-Z0-9_\.]+$/,
		                             message: '密码只能由字母、数字、点和下划线组成。'
		                         }
		                     }
		                 },
		            }
		        })
		        .on('success.form.bv', function(e) {
		        	$("#upPwd").modal('hide');
		            // Prevent form submission
		            e.preventDefault();
		            // Get the form instance
		            var $form = $(e.target);
		
		            // Get the BootstrapValidator instance
		            var bv = $form.data('bootstrapValidator');
		            var eid =$("#pwdForm #eid").val();
		            var epassword = $("#pwdForm #SureEpassword").val();
		            if(epassword !="" || epassword !=null && eid !="" || eid!=null){
		            	var url = "${pageContext.request.contextPath }/back/updatePwd";
		        		$.post(
		        			url,
		        			{
		        				eid:eid,
		        				epassword:epassword,
		        			},
		        			function(data){
		        				//后台返回int类型的数据
		        				if(data>0){
		        					//新增成功，下面是后台框架的提示
		        					parent.layer.alert('修改密码成功');
		        				}else{
		        					//新增失败
		        					parent.layer.alert('修改密码失败');
		        				}
		        			},
		        			"text"
		        		);		
		              	
		            }
		        });
		    $('#worktime')
	        .bootstrapValidator({
	            message: '安全弹出框',
	            feedbackIcons: {
	                valid: 'glyphicon glyphicon-ok',
	                invalid: 'glyphicon glyphicon-remove',
	                validating: 'glyphicon glyphicon-refresh'
	            },
	            fields: {
	            	etname: {
	                     message:'任务名称',
	                     validators: {
	                         notEmpty: {
	                             message: '任务名称不能为空'
	                         },
	                        
	                     }
	                 },
	                 etcontent: {
	                     message:'任务内容',
	                     validators: {
	                         notEmpty: {
	                             message: '任务内容不能为空'
	                         },
	                        
	                     }
	                 },
	                 etendtime: {
	                     message: '发布任务结束时间',
	                     validators: {
	                         notEmpty: {
	                             message: '发布任务结束时间不能为空'
	                         },
	                    
	                     }
	                 },
	            }
	        })
	        .on('success.form.bv', function(e) {
	        	$("#work").modal('hide');
	            // Prevent form submission
	            e.preventDefault();
	            // Get the form instance
	            var $form = $(e.target);
	
	            // Get the BootstrapValidator instance
	            var bv = $form.data('bootstrapValidator');
	            	var url = "${pageContext.request.contextPath }/backindex/addEmpTask";
	        		$.post(
	        			url,
	        			{
	        				etname:$('#worktime #etname').val(),
	        			    etcontent:$('#worktime #etcontent').val(),
	        				etendtime:$('#worktime #etendtime').val(),
	        			},
	        			function(data){
	        				//后台返回int类型的数据
	        				if(data>0){
	        					//新增成功，下面是后台框架的提示
	        					parent.layer.alert('任务安排成功');
	        					window.location="${pageContext.request.contextPath }/back/toindex"
	        				}else{
	        					//新增失败
	        					parent.layer.alert('任务安排失败');
	        				}
	        			},
	        			"text"
	        		);		
	              	
	        });
		});
		 
</script>
	<script  type="text/javascript">
		//修改密码弹窗
	function upPwdShow(){
		$("#upPwd #OldEpassword").val('');
		$("#upPwd #NewEpassword").val('');
		$("#upPwd #SureEpassword").val('');
		
		$("#upPwd").modal('show');
	}
	//工作任务安排框
	function workTime(){
		$('#work #etname').val('');
		$('#work #etcontent').val('');
		$('#work #etendtime').val('');
		
		$("#work").modal('show');
	}
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

<body class="fixed-sidebar full-height-layout gray-bg" style="overflow:hidden">
    <div id="wrapper">
        <!--左侧导航开始-->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <span><img alt="image" class="img-circle" src="${pageContext.request.contextPath}${sessionScope.employee.eimage}" width='90px' height='80px'/></span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                               <span class="block m-t-xs"><strong class="font-bold">欢迎您:${sessionScope.employee.ename}</strong></span>
                                <span class="text-muted text-xs block">
                                	<shiro:user>
                                		您的权限为:${sessionScope.employee.role.rename}
                                	</shiro:user>
                                <b class="caret"></b></span>
                                </span>
                            </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a class="J_menuItem"  onclick="upPwdShow()">修改密码</a>
                                </li>
                                <li class="divider"></li>
                                <li><a href="${pageContext.request.contextPath}/back/adminlogout">安全退出</a>
                                </li>
                                <c:if test="${sessionScope.employee.eid == 1}">
                                	<li><a  class="J_menuItem"  onclick="workTime()">安排工作</a>
                                </c:if>
                            </ul>
                        </div>
                        <div class="logo-element">H+</div>
                    </li>
                     <shiro:hasPermission name="管理设置">
                          <li>
                        <a href="#">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">用户管理</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                        	<shiro:hasPermission name="权限管理">
                           		<li>
                                	<a class="J_menuItem" href="${pageContext.request.contextPath}/back/toRole" data-index="0">权限管理</a>
                            	</li>
                            </shiro:hasPermission>
                            <shiro:hasPermission name="用户管理">
                            	<li>
                                	<a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/use.jsp">用户列表</a>
                            	</li>
                            </shiro:hasPermission>
                            <shiro:hasPermission name="员工管理">
                            	 <li>
                                	<a class="J_menuItem" href="${pageContext.request.contextPath}/back/toEmploye">员工列表</a>
                            	</li>
                            </shiro:hasPermission>
                        </ul>
                    </li>   	
                     </shiro:hasPermission>
                    <shiro:hasPermission name="首页管理">
                    	<li>
                        <a href="#">
                            <i class="fa fa fa-bar-chart-o"></i>
                            <span class="nav-label">首页管理</span>
                            <span class="fa arrow"></span>
                        </a>
                        <ul class="nav nav-second-level">
                        	<shiro:hasPermission name="轮播图管理">
                        		<li>
                               		 <a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/Indexpic.jsp">轮播图管理</a>
                            	</li>
                        	</shiro:hasPermission>
                            <shiro:hasPermission name="联系管理">
                            	<li>
                               	 	<a class="J_menuItem" href="graph_flot.jsp">联系管理</a>
                           		</li>
                            </shiro:hasPermission>
                            <shiro:hasPermission name="合作机构管理">
                            	<li>
                                	<a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/Cooorganiz.jsp">合作机构管理</a>
                            	</li>
                        	</shiro:hasPermission>
                        	<shiro:hasPermission name="联系我们管理">
                               	<li>
                               	 	 <a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/contact.jsp">联系我们</a>
                               	</li>
                        	</shiro:hasPermission>
                        	<shiro:hasPermission name="新闻信息管理">
                        		<li>
                                	<a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/news.jsp">新闻管理</a>
                            	</li>
                        	</shiro:hasPermission>
                        	<shiro:hasPermission name="关于我们管理">
                        		<li>
                                	<a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/about.jsp">关于我们管理</a>
                            	</li>
                        	</shiro:hasPermission>
                        	<shiro:hasPermission name="视频管理">
                        		<li>
                                	<a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/video.jsp">视频管理</a>
                            	</li>
                        	</shiro:hasPermission>
                        </ul>
                    </li>
                    </shiro:hasPermission>
                    <shiro:hasPermission name="活动中心管理">
                    	<li>
	                        <a href="#">
	                        	<i class="fa fa-picture-o"></i> 
	                        	<span class="nav-label">活动中心管理</span>
	                        	<span class="fa arrow"></span>
	                        </a>
	                       <ul class="nav nav-second-level">
	                       		<shiro:hasPermission name="公告管理">
	                       			<li>
                               			 <a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/notice.jsp">公告管理</a>
                            		</li>
	                       		</shiro:hasPermission>
	                       		<shiro:hasPermission name="公告类型管理">
	                       			 <li>
		                                <a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/noticeType.jsp">公告类型管理</a>
		                            </li>
	                       		</shiro:hasPermission>
	                       		<shiro:hasPermission name="活动专区管理">
	                       			 <li>
                                		<a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/activity.jsp">活动专区</a>
                            		</li>
	                       		</shiro:hasPermission>
                       		</ul>
                   		</li>
                    </shiro:hasPermission>
                    <shiro:hasPermission name="信息管理">
                    	<li>
                    		 <a href="mailbox.jsp">
		                        <i class="fa fa-envelope"></i> 
		                        <span class="nav-label">信息管理</span>
                        	</a>
                        	 <ul class="nav nav-second-level">
                        	 	<shiro:hasPermission name="短信接口管理">
                        	 		<li>
                                		<a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/SendMsg.jsp">短信接口管理</a>
                            		</li>
                        	 	</shiro:hasPermission>
                        	 	<shiro:hasPermission name="邮箱信息管理">
                        	 		 <li>
                        	 		 	<a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/sendMail.jsp">邮箱信息管理</a>
                        	 		 </li>
                        	 	</shiro:hasPermission>
                        	 </ul>
                    	</li>
                    </shiro:hasPermission>
                    <shiro:hasPermission name="会员管理">
                   		<li>
                    		 <a href="#">
	                        	<i class="fa fa-desktop"></i> 
	                        	<span class="nav-label">会员管理</span>
	                        	<span class="fa arrow"></span>
                        	</a>
                       		<ul class="nav nav-second-level">
                       			<shiro:hasPermission name="会员明细管理">
                             			<li>
                             				<a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/vipdetail.jsp">会员明细管理</a>
                          				</li>
                       			</shiro:hasPermission>
                       			<shiro:hasPermission name="会员成长等级">
                       				<li>
                       					<a class="J_menuItem" href="${pageContext.request.contextPath}/back/toUserlevel">成长等级</a>
                           			</li>
                       			</shiro:hasPermission>
                       		</ul>
                        </li>
                    </shiro:hasPermission>
                    <shiro:hasPermission name="贷借管理">
                    	<li>
                        <a href="mailbox.jsp">
	                        <i class="fa fa-envelope"></i> 
	                        <span class="nav-label">贷借管理</span>
                        </a>
                         <ul class="nav nav-second-level">
                         	<shiro:hasPermission name="投标管理">
                         		<li>
                        			 <a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/bid.jsp">投标管理</a>
                          		 </li>
                         	</shiro:hasPermission>
                         	<shiro:hasPermission name="发标管理">
                         		<li>
	                        		 <a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/fabiao.jsp">发标管理</a>
	                           </li>
                         	</shiro:hasPermission>
                         </ul>
                        </li>
                    </shiro:hasPermission>
                     <shiro:hasPermission name="资金管理">
                   		<li>
                    		 <a href="#">
	                        	<i class="fa fa-desktop"></i> 
	                        	<span class="nav-label">资金管理</span>
	                        	<span class="fa arrow"></span>
                        	</a>
                       		 <ul class="nav nav-second-level">
							<shiro:hasPermission name="充值管理">
								<li>
                                	<a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/Recharge.jsp">充值管理</a>
                            	</li>
							</shiro:hasPermission>
							<shiro:hasPermission name="提现管理">
								<li>
									<a class="J_menuItem" href="${pageContext.request.contextPath}/back/toWithdrawals">提现管理</a>
                            	</li>
							</shiro:hasPermission>
							<shiro:hasPermission name="借款管理">
								<li>
									<a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/loan.jsp">借款管理</a>
								</li>
							</shiro:hasPermission>
							<shiro:hasPermission name="还款管理">
								<li>
									<a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/repayment.jsp">还款管理</a>
								</li>
							</shiro:hasPermission>
                            </ul>
                        </li>
                    </shiro:hasPermission>
                         <shiro:hasPermission name="操作记录管理">
                         	<li>
                              <a href="#">
                       	<i class="fa fa-desktop"></i> 
                       	<span class="nav-label">操作记录管理</span>
                       	<span class="fa arrow"></span>
                     		</a>
                             <ul class="nav nav-third-level">
                             	<shiro:hasPermission name="资金使用明细管理">
                             		<li>
                     					<a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/Moneyrecord.jsp">资金使用明细管理</a>
                         			</li>
                             	</shiro:hasPermission>
                             	<shiro:hasPermission name="管理员操作管理">
                             		  <li>
                             			<a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/record.jsp">管理员操作列表</a>
                         			</li>
                             	</shiro:hasPermission>
                             </ul>
                         </li>
                         </shiro:hasPermission>
                    	<shiro:hasPermission name="奖励与费用管理">
                    		 <li>
		                        <a href="#">
		                        	<i class="fa fa-flask"></i> 
		                        	<span class="nav-label">奖励与费用管理</span>
		                        	<span class="fa arrow"></span>
		                        </a>
	                        	<ul class="nav nav-second-level">
	                        		<shiro:hasPermission name="红包管理">
	                        			 <li>
			                                <a class="J_menuItem" href="${pageContext.request.contextPath}/back/toRedmoney">红包管理</a>
			                            </li>
	                        		</shiro:hasPermission>
	                        		<shiro:hasPermission name="代金券管理">
	                        			<li>
                                			<a class="J_menuItem" href="${pageContext.request.contextPath}/back/toUservouch">代金券管理</a>
                            			</li>
	                        		</shiro:hasPermission>
	                        	</ul>
                    	</shiro:hasPermission>
                    <shiro:hasPermission name="认证审核管理">
                    	 <li>
                        <a href="#">
	                        <i class="fa fa-envelope"></i> 
	                        <span class="nav-label">认证审核管理</span>
	                        <span class="label label-warning pull-right">${sessionScope.audetailsSize}</span>
                        </a>
                        <ul class="nav nav-second-level">
                        	<shiro:hasPermission name="实名认证">
                        		<li>
                        			<a class="J_menuItem" href="${pageContext.request.contextPath}/back/toAuthIdCard">实名认证</a>
                            	</li>
                        	</shiro:hasPermission>
                        	<shiro:hasPermission name="发标审核">
                        		<li>
                        		  <a class="J_menuItem" href="${pageContext.request.contextPath}/views/back/shfabiao.jsp">发标审核管理</a>
                          		</li>
                        	</shiro:hasPermission>
                        </ul>
                    </li>
                    </shiro:hasPermission>
            </div>
        </nav>
        <!--左侧导航结束-->
        <!--右侧部分开始-->
        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                        <form role="search" class="navbar-form-custom" method="post" action="search_results.jsp">
                            <!-- <div class="form-group">
                                <input type="text" placeholder="请输入您需要查找的内容 …" class="form-control" name="top-search" id="top-search">
                            </div> -->
                        </form>
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                <i class="fa fa-envelope"></i> <span class="label label-warning">${sessionScope.audetailsSize}</span>
                            </a>
                            <ul class="dropdown-menu dropdown-messages">
                                <li class="m-t-xs">
                                    <div class="dropdown-messages-box">
                                    	<c:forEach items="${authebDetais}" var="authebDetais">
											<div class="feed-element">
				                                <div>
				                                    <strong>${authebDetais.uiname}</strong>
				                                    <div>${authebDetais.adintroduct}</div>
				                                    <small class="text-muted">${authebDetais.adtime}</small>
				                                    <c:set var="adstype" value="${authebDetais.adstype}" /><!-- 标签用于设置变量值和对象属性。 -->
				                                    <c:if test="${adstype == 1}">
				                                    	 <small class="pull-right text-navy"><a class="J_menuItem"  href="${pageContext.request.contextPath}/back/toAuthIdCardStatus?adstype=${adstype}&adid=${authebDetais.adid}">
				                                    		<u>去处理</u></a></small>
				                                    </c:if>
				                                    <c:if test="${adstype ==2}">
				                                    	 <small class="pull-right text-navy"><a class="J_menuItem" href="${pageContext.request.contextPath}/back/toAuthIdCardStatus?adstype=${adstype}&adid=${authebDetais.adid}">用户发标申请审核
				                                    		<u>去处理</u></a></small>
				                                    </c:if>
				                                </div>
			                            	</div>
									</c:forEach>
                                    </div>
                                </li>
                                <li class="divider"></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                <i class="fa fa-bell"></i> <span class="label label-primary">${sessionScope.audetailsSize}</span>
                            </a>
                            <ul class="dropdown-menu dropdown-alerts">
                                <li>
                                    <a href="mailbox.jsp">
                                        <div>
                                            <i class="fa fa-envelope fa-fw"></i> 您有${sessionScope.audetailsSize}条未读消息
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                            </ul>
                        </li>
                        <li class="dropdown hidden-xs">
                            <a class="right-sidebar-toggle" aria-expanded="false">
                                <i class="fa fa-tasks"></i> 主题
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="row content-tabs">
                <button class="roll-nav roll-left J_tabLeft"><i class="fa fa-backward"></i>
                </button>
                <nav class="page-tabs J_menuTabs">
                    <div class="page-tabs-content">
                        <a href="javascript:;" class="active J_menuTab" data-id="${pageContext.request.contextPath}/views/back/rightindex.jsp">首页</a>
                    </div>
                </nav>
                <button class="roll-nav roll-right J_tabRight"><i class="fa fa-forward"></i>
                </button>
                <div class="btn-group roll-nav roll-right">
                    <button class="dropdown J_tabClose" data-toggle="dropdown">关闭操作<span class="caret"></span>

                    </button>
                    <ul role="menu" class="dropdown-menu dropdown-menu-right">
                        <li class="J_tabShowActive"><a>定位当前选项卡</a>
                        </li>
                        <li class="divider"></li>
                        <li class="J_tabCloseAll"><a>关闭全部选项卡</a>
                        </li>
                        <li class="J_tabCloseOther"><a>关闭其他选项卡</a>
                        </li>
                    </ul>
                </div>
                <a href="${pageContext.request.contextPath}/back/adminlogout" class="roll-nav roll-right J_tabExit"><i class="fa fa fa-sign-out"></i>退出</a>
            </div>
            <div class="row J_mainContent" id="content-main">
                <iframe class="J_iframe" name="iframe0" width="100%" height="100%" src="${pageContext.request.contextPath}/views/back/rightindex.jsp" frameborder="0" data-id="index_v1.jsp" seamless></iframe>
            </div>
            <div class="footer">
                <div class="pull-right">&copy; 2017-2018 <a href="http://www.zi-han.net/" target="_blank">亿信金融平台</a>
                </div>
            </div>
        </div>
        <!--右侧部分结束-->
        <!--右侧边栏开始-->
        <div id="right-sidebar">
            <div class="sidebar-container">

                <ul class="nav nav-tabs navs-3">

                    <li class="active">
                        <a data-toggle="tab" href="#tab-1">
                            <i class="fa fa-gear"></i> 主题
                        </a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div id="tab-1" class="tab-pane active">
                        <div class="sidebar-title">
                            <h3> <i class="fa fa-comments-o"></i> 主题设置</h3>
                            <small><i class="fa fa-tim"></i> 你可以从这里选择和预览主题的布局和样式，这些设置会被保存在本地，下次打开的时候会直接应用这些设置。</small>
                        </div>
                        <div class="skin-setttings">
                            <div class="title">主题设置</div>
                            <div class="setings-item">
                                <span>收起左侧菜单</span>
                                <div class="switch">
                                    <div class="onoffswitch">
                                        <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="collapsemenu">
                                        <label class="onoffswitch-label" for="collapsemenu">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="setings-item">
                                <span>固定顶部</span>

                                <div class="switch">
                                    <div class="onoffswitch">
                                        <input type="checkbox" name="fixednavbar" class="onoffswitch-checkbox" id="fixednavbar">
                                        <label class="onoffswitch-label" for="fixednavbar">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="setings-item">
                                <span>
                        固定宽度
                    </span>

                                <div class="switch">
                                    <div class="onoffswitch">
                                        <input type="checkbox" name="boxedlayout" class="onoffswitch-checkbox" id="boxedlayout">
                                        <label class="onoffswitch-label" for="boxedlayout">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="title">皮肤选择</div>
                            <div class="setings-item default-skin nb">
                                <span class="skin-name ">
                         <a href="#" class="s-skin-0">
                             默认皮肤
                         </a>
                    </span>
                            </div>
                            <div class="setings-item blue-skin nb">
                                <span class="skin-name ">
                        <a href="#" class="s-skin-1">
                            蓝色主题
                        </a>
                    </span>
                            </div>
                            <div class="setings-item yellow-skin nb">
                                <span class="skin-name ">
                        <a href="#" class="s-skin-3">
                            黄色/紫色主题
                        </a>
                    </span>
                            </div>
                        </div>
                    </div>
                 
                        </div>

                    </div>
                    
                </div>

            </div>
        </div>
    </div>
    
    <!-- 修改密码弹窗 -->
		<div class="modal fade" id="upPwd" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">密码修改</h4>
					</div>
					<div class="modal-body">
						<!-- 新增系别 -->
						<form id="pwdForm" class="form-horizontal m-t">
							<div class="form-group">
								<label for="urlName" class="control-label col-sm-3">登录名</label>
								<div class="col-sm-6">
									<input type="hidden" id="eid" name="eid"
										value="${sessionScope.employee.eid}"> 
									<input type="hidden"
										id="ephone" name="ephone" value="${sessionScope.employee.ephone}">
									<input name="" class="form-control" id="ename"
										value="${sessionScope.employee.ename}" disabled="disabled">
								</div>
							</div>
							<div class="form-group">
								<label for="urlName" class="control-label col-sm-3">旧密码</label>
								<div class="col-sm-6">
									<input type="password" name="OldEpassword" class="form-control"
										id="OldEpassword">
								</div>
							</div>
							<div class="form-group">
								<label for="urlName" class="control-label col-sm-3">新密码</label>
								<div class="col-sm-6">
									<input type="password" name="NewEpassword" class="form-control"
										id="NewEpassword">
								</div>
							</div>
							<div class="form-group">
								<label for="urlName" class="control-label col-sm-3">确认密码</label>
								<div class="col-sm-6">
									<input type="password" name="SureEpassword" class="form-control"
										id="SureEpassword">
								</div>
							</div>
							<div class="modal-footer">
								<button type="submit" class="btn btn-default" data-dismiss="modal">
									<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
								</button>
								<button type="submit" id="btn_submit" class="btn btn-primary">
									<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		
		<!-- 安排任务窗口 -->
		<div class="modal fade" id="work" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">发布工作任务安排</h4>
					</div>
					<div class="modal-body">
						<!-- 新增系别 -->
						<form id="worktime" class="form-horizontal m-t">
							<div class="form-group">
								<label for="urlName" class="control-label col-sm-3">任务名称</label>
								<div class="col-sm-6">
									<input type="hidden" id="eid" name="eid"
										value="${sessionScope.employee.eid}"> 
									<input name="etname" class="form-control" id="etname">
								</div>
							</div>
							<div class="form-group">
								<label for="urlName" class="control-label col-sm-3">任务内容</label>
								<div class="col-sm-6">
									<input type="text" name="etcontent" class="form-control"
										id="etcontent">
								</div>
							</div>
							<div class="form-group">
								<label for="urlName" class="control-label col-sm-3" >任务结束时间</label>
								<div class="col-sm-6">
									<input type="text" name="etendtime" 
										placeholder="请选择日期"id="etendtime" class="laydate-icon" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
								</div>
							</div>
							<div class="modal-footer">
								<button type="submit" class="btn btn-default" data-dismiss="modal">
									<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭
								</button>
								<button type="submit" id="worksubmit" class="btn btn-primary">
									<span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>保存
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
</body>

</html>
