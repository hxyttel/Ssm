<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
    
	

	<link rel="Shortcut  Icon" href="${pageContext.request.contextPath}/statics/other/lco/smalllog.png">
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
		                             type: 'POST'//请求方式
		                             /**自定义提交数据，默认值提交当前input value
		                              *  data: function(validator) {
		                                   return {
		                                       password: $('[name="passwordNameAttributeInYourForm"]').val(),
		                                       whatever: $('[name="whateverNameAttributeInYourForm"]').val()
		                                   };
		                                }
		                              */
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
		        	$("#pwdForm").modal('hide');
		            // Prevent form submission
		            e.preventDefault();
		
		            // Get the form instance
		            var $form = $(e.target);
		
		            // Get the BootstrapValidator instance
		            var bv = $form.data('bootstrapValidator');
		            var form = new FormData(document.getElementById("editRole"));
		            var eid =$("#pwdForm #eid").val();
		            var epassword = $("#pwdForm #SureEpassword").val();
		            if(epassword=="" || epassword ==null && eid=="" || eid==null){
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
		              	
		            }else{
		            	
		            } 
		        });
		});
</script>
</head>
<body>
 <div class="container">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2">
            <div class="page-header">
                <h2>Using Ajax to submit data</h2>
            </div>

            <form id="defaultForm" method="post" class="form-horizontal" action="ajaxSubmit.php">
                <div class="form-group">
                    <label class="col-lg-3 control-label">Username</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="username" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">Email address</label>
                    <div class="col-lg-5">
                        <input type="text" class="form-control" name="email" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-lg-3 control-label">Password</label>
                    <div class="col-lg-5">
                        <input type="password" class="form-control" name="password" />
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-lg-9 col-lg-offset-3">
                        <button type="submit" class="btn btn-primary">Sign up</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>