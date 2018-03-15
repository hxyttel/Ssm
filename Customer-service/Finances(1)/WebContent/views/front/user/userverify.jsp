<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--[if lt IE 9]>
    	<script src="<%=path%>/statics/front/statics/newcommon/js/html5shiv.js"></script>
    <![endif]-->
    <meta name="keywords" content="网贷平台,网络借贷，网络赚钱项目,理财产品">
    <meta name="description" content="爱钱帮网贷平台为您提供网络赚钱项目；为此相继推出了许多新的理财产品，在为您创造高收益的同时也优化了理财产品模式。网络借贷，就选爱钱帮。">
    <title>账户设置 | 亿信金融</title>
    <link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/6.png">
   	<link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
    <link rel="Shortcut  Icon" href="/Finances/statics/front/statics/newcommon/images/minilogo.png">
    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/userCenter.css">
    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/jquery.datetimepicker.css" />
    
    <script src="${pageContext.request.contextPath}/statics/back/static/js/jquery.min.js"></script>
    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/esl.js"></script>
    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/jquery.datetimepicker.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/js/jquery.form.js"></script>
    <!-- 图形验证码 -->
	<script src="/Finances/statics/front/js/gVerify.js"></script>
	
	<!-- 美化按钮  -->
	<link href="/Finances/statics/front/css/beautify-bar.css" rel="stylesheet" />
</head>
<body style="background:url('/Finances/statics/front/images/two.jpg');background-size:100% 100%;">
	
	<div class="m2-userCentercommon-bg" style='display: none'></div>
	<div class="m2-userCentercommon-confirm" style='display: none'></div>
	
	<!-- 右侧边栏start -->
	<jsp:include page="../include/userside.jsp"></jsp:include>
	<!-- 右侧边栏end -->
	
	<!-- headerStart -->
	<jsp:include page="../include/head.jsp"></jsp:include>
	<!-- headerEnd -->
	
	<!-- 树start -->
	<jsp:include page="../include/tree.jsp"></jsp:include>
	<!-- 树end -->

    <div class="m2-userCentersettings-con">
        <!--您现在的安全级别-->
        <div class="m2-userCentersettings-bg">
            <div class="m2-wel-level m2-userSettings-level">
                <div class="m2-level-image">
                    <b class="m2-wel-levelTip">您现在的安全级别</b>
                    <b class="m2-userSettingslevel-low" id='safe_level'></b>
                    <i class="m2-levelIcon-fal"></i>
                    <i class="m2-levelIcon-fal"></i>
                    <i class="m2-levelIcon-fal"></i>
                    <i class="m2-levelIcon-fal"></i>
                    <b class="m2-wel-levelTip">请通过完善下方信息来提升安全级别</b>
                </div>
            </div>
            <ul>
                <li class="m2-userCentersettings-step1 m2-userSettings-step">
                    <div class="m2-userSettings-stepShow">
                        <i></i>
                        <span class="m2-userSettingsshow-tit m2-userSettingsshow-tit2">手机号码</span>
                        <span class="m2-userSettingsshow-exp">亿信金融会通过手机号发送各类短信，验证手机号会更加便捷</span>
                        <span class="m2-userSettingsaut m2-userSettingsaut-fal" id='phone_status'><b></b>未绑定</span>
                        <span class="m2-userSettingsshow-link"><a href="javascript:void(0)">添加</a></span>
                    </div>

                    <ul class="m2-userSettings-setpHide" style="display:none;" id='phone_status_1'>
                        <!--<li class="m2-userSettingshide-tit"> -->
                        <!--可添加说明文字可添加说明文字可添加说明文字 -->
                        <!--</li> -->
                        <li>
                        	<input type="hidden" id='vp-uid' value="${sessionScope.user.uid }">
                        	<input type="hidden" id='vp-uphone' value="${sessionScope.user.uphone }">
                        	
                            <span class="m2-userSettingshide-nor"><u>*</u>手机号：</span>
                            <input type="text" placeholder="请输新手机号码" id='vp-phonenum' value="${sessionScope.user.uphone }">
                            <a class="m2-userSettings-telSubmit" href="javascript:void(0)" id='vp-textbtn'>短信验证码</a>
                            <!-- <a class="m2-userSettings-telSubmit" href="javascript:void(0)" id='vp-voicebtn'>语音验证码</a> -->
                            <span class="m2-userSettingshide-warning" style='margin-left: 80px;margin-top: 10px;display: none;' id='vp-warn'><em></em>请输入正确的手机号。</span>
                            <span class="m2-userSettingshide-success m2-userSettingshide-successTel" style='display: none' id='vp-msg'><em></em>验证码已发出,如果您在2分钟之内未收到验证码,请再次获取验证码</span>
                        </li>
                        <li style="display:none;" id='verifyphoneli'>
                            <span class="m2-userSettingshide-nor"><u>*</u>验证图码：</span>
                            <input type="text" placeholder="请输入图片验证码" type="text" id='vp-vpic'>
                           	<span  style="cursor: pointer;width: 104;height: 40" id="reverifyCode"></span>                           
                            <span class="m2-userSettingshide-warning" style='margin-left: 80px;margin-top: 10px;display: none;' id='vpic-warn'><em></em>请输入正确的图形验证码</span>
                        </li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>验证码：</span>
                            <input type="text" placeholder="请输入收到的验证码" type="text" id='vp-text'>
                            <input type="hidden" id="userCode">
                            <span class="m2-userSettingshide-warning" style='margin-left: 10px;margin-top: 10px;display: none;' id='code-warn'><em></em>请输入正确的短信验证码</span>
                        </li>
                        <li class="m2-userSettingshide-btn"><a href="javascript:void(0)" id='vp-submit'>修改</a></li>
                    </ul>
                </li>
                <li class="m2-userCentersettings-step2 m2-userSettings-step">
                    <div class="m2-userSettings-stepShow">
                        <i></i>
                        <input type="hidden" id='vp-uiopenstatic' value="${sessionScope.userinfo.uiopenstatus }">
                        <span class="m2-userSettingsshow-tit m2-userSettingsshow-tit2">徽商存管账户</span>
                        <span class="m2-userSettingsshow-exp">投资合同需要实名签署，实名合同才有法律效应，爱钱帮通过徽商银行完成实名认证</span>
                        <span class="m2-userSettingsaut m2-userSettingsaut-fal"  id='id_status'><b></b>未认证</span>
                        <span class="m2-userSettingsshow-link">
                        	<c:set var="statuses" value="${sessionScope.userinfo.uiopenstatus }" />
							<c:if test="${statuses == 0 }">
								<a id="uiopenstatuses" href="javascript:void(0);" target="_blank">认证</a>
							</c:if>  
							<c:if test="${statuses == 1 }">
								<a href="<%=path %>/toopen" target="_blank">认证</a>
							</c:if>
			                <c:if test="${statuses == 2 }">
								<a href="<%=path %>/toopen" target="_blank">认证</a>
							</c:if>
                        </span>
                    </div>
                </li>
                <li class="m2-userCentersettings-step3 m2-userSettings-step">
                	<input type="hidden" id='dealpwd' value="${sessionScope.userinfo.uidealpwd }">
                    <div class="m2-userSettings-stepShow">
                        <i></i>
                        <span class="m2-userSettingsshow-tit">徽商交易密码</span>
						<span class="m2-userSettingsshow-exp">交易密码需跳转徽商交易系统页面输入，适用于投资验证及提现验证
						</span>
                        <span class="m2-userSettingsaut m2-userSettingsaut-fal"  id="id_dealpwd"><b></b>未设置</span>
                        <span class="m2-userSettingsshow-link"><a href="javascript:void(0)">设置</a></span>					
                    </div>
					<ul class="m2-userSettings-setpHide" style="display:none;">
						<c:set var="dealpwds" value="${sessionScope.userinfo.uidealpwd }" />
						<c:if test="${dealpwds != null }">
						<c:if test="${dealpwds != '' }">
				    		<li>
	                            <span class="m2-userSettingshide-nor"><u>*</u>原密码：</span>
	                            <input type="password" placeholder="请输入原密码" type="text" id='olddealpwd'>
	                            <span class="m2-userSettingshide-warning"></span>
	                        </li>
	                    </c:if>
			    		</c:if>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>新密码：</span>
                            <input type="password" placeholder="请输入新密码" type="text" id='newdealpwd1'>
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>确认密码：</span>
                            <input type="password" placeholder="请再次输入新密码" type="text" id='newdealpwd2'>
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li class="m2-userSettingshide-btn"><a href="javascript:void(0)" id='setdealpwd-btn'>确认</a></li>
                    </ul>
                </li>

                <li class="m2-userCentersettings-step4 m2-userSettings-step">
                    <div class="m2-userSettings-stepShow">
                        <i></i>
                        <input type="hidden" id='getemailstatus' value="${sessionScope.user.userinfo.uiemailstatus }">
                        <span class="m2-userSettingsshow-tit">电子邮箱</span>
                        <span class="m2-userSettingsshow-exp">获取最新的投资讯息和账户信息变动通知</span>
                        
                        <span class="m2-userSettingsaut m2-userSettingsaut-fal" id='email_status'><b></b>未认证</span>
                        <span class="m2-userSettingsshow-link"><a href="javascript:void(0)">认证</a></span>
                    </div>
                    <ul class="m2-userSettings-setpHide" style="display:none;" id='email_status_2'>
                        <li class="m2-userSettingshide-tit">请填写您的电子邮箱，点击下面的按钮发送激活邮件，登陆您的电子邮箱，完成验证。</li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>邮箱：</span>
	                        <input type="text" placeholder="请输入邮箱地址" type="text" value="${sessionScope.userinfo.uiemail}" id="verifyemail">
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li class="m2-userSettingshide-btn"><a href="javascript:void(0)" id='verifyemail-btn'>发送验证邮件</a></li>
                    </ul>
                </li>
            
                <li class="m2-userCentersettings-step5 m2-userSettings-step">
                	<form id="uploadForm" enctype="multipart/form-data">
                	<input type="hidden" name="uiid" value="${sessionScope.userinfo.uiid }"/>
                    <div class="m2-userSettings-stepShow">
                        <i></i>
                        <span class="m2-userSettingsshow-tit">基本信息</span>
                        <span class="m2-userSettingsshow-exp">完善(修改)用户基本信息</span>
                        <span class="m2-userSettingsaut m2-userSettingsaut-fal"  id='base_info'><b></b>未完善</span>
                        <span class="m2-userSettingsshow-link"><a href="javascript:void(0)">完善</a></span>
                    </div>
                    <ul class="m2-userSettings-setpHide">
                    	<li>
                            <span class="m2-userSettingshide-nor">头像：</span>
                            <a href="javascript:void(0);" class="file">选择文件
                            	<input type="file" id="uiheadImg" name="uiheadImg"  style='width: 100px;'/>
							</a>
                            <input type="hidden" name="uiheadImgs" id="getValueName" class="addr_info"/>
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li>
                        	<div>
                            	<span class="m2-userSettingshide-nor">性别：</span>
                            	<c:set var="sex" value="${sessionScope.userinfo.uisex }" />
                            	<input type="radio" id="male" name="uisex" value="男" <c:if test="${sex=='男'}"> checked </c:if> /><label for="male">男</label>
                            	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							    <input type="radio" id="female" name="uisex" value="女" <c:if test="${sex=='女'}"> checked </c:if> /><label for="female">女</label>
							   	<input type="hidden" id="getValueSex" value="${sessionScope.userinfo.uisex }"/>
							   	<span class="m2-userSettingshide-warning"></span>
							</div>
                        </li>
                        <li>
                            <span class="m2-userSettingshide-nor">生日：</span>
							<input class="laydate-icon" name="uibirthday" id="uibirthday" value="${sessionScope.userinfo.uibirthday }" placeholder="请选择日期" onClick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" />
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li>
                            <span class="m2-userSettingshide-nor">昵称：</span>
                            <input type="text" name="uiname" id="uiname" value="${sessionScope.userinfo.uiname }" placeholder="请输入昵称" style='width: 280px;' />
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li>
                        	<c:set var="address_privice" value="${sessionScope.userinfo.pvid }" />
                        	<c:set var="address_city" value="${sessionScope.userinfo.cyid }" />
                        	<c:set var="address_area" value="${sessionScope.userinfo.aeid }" />
                            <span class="m2-userSettingshide-nor">地址：</span>
                            <select id="lmkselect1" name="pvid" style="width:140px;height:30px;">
		            			<option value="">请选择</option>
						        <c:forEach items="${pvlist}" begin="0" end="${pvlistsize}" var="p" >
						  			<option value="${p.pvid}" <c:if  test="${p.pvid==address_privice}"> selected="selected"</c:if> >${p.pvname}</option>
								</c:forEach>
							</select>
							<select id="lmkselect2" name="cyid" <c:if test="${address_city==null }"> disabled="true" </c:if> style="width:120px;height:30px;">
								<c:if test="${address_city==null }">
									<option value="">请选择</option>
								</c:if>
								<c:if test="${address_city!=null }">
									<c:forEach items="${cylist}" begin="0" end="${cylistsize}" var="cys" >
										<option value="${cys.cyid}" <c:if  test="${cys.cyid==address_city}"> selected="selected"</c:if> >${cys.cyname}</option>
									</c:forEach>
								</c:if>
							</select>
                            <select id="lmkselect3" name="aeid" <c:if test="${address_area==null }"> disabled="true" </c:if> style="width:120px;height:30px;">
								<c:if test="${address_area==null }">
									<option value="">请选择</option>
								</c:if>
								<c:if test="${address_area!=null }">
									<c:forEach items="${aelist}" begin="0" end="${aelistsize}" var="aes" >
										<option value="${aes.aeid}" <c:if  test="${aes.aeid==address_area}"> selected="selected"</c:if> >${aes.aename}</option>
									</c:forEach>
								</c:if>
							</select>
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li class="m2-userSettingshide-btn"><a href="javascript:void(0)" id='baseinfo-btn'>确认</a></li>
                    </ul>
                    </form>
                </li>
				
                <li class="m2-userCentersettings-step6 m2-userSettings-step">
                    <div class="m2-userSettings-stepShow">
                        <i></i>
                        <span class="m2-userSettingsshow-tit">登录密码</span>
                        <span class="m2-userSettingsshow-exp">上次登录时间：${sessionScope.user.uloginTime }</span>
                        <span class="m2-userSettingsaut m2-userSettingsaut-tur"><b></b>已设置</span>
                        <span class="m2-userSettingsshow-link"><a href="javascript:void(0)">修改</a></span>
                    </div>
                    <ul class="m2-userSettings-setpHide">
                        <!--<li class="m2-userSettingshide-tit">可添加说明文字可添加说明文字可添加说明文字</li> -->
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>原密码：</span>
                            <input type="password" placeholder="请输入原密码" type="text" id='oldpass'>
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>新密码：</span>
                            <input type="password" placeholder="请输入新密码" type="text" id='newpass1'>
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>确认密码：</span>
                            <input type="password" placeholder="请再次输入新密码" type="text" id='newpass2'>
                            <span class="m2-userSettingshide-warning"></span>
                        </li>
                        <li class="m2-userSettingshide-btn"><a href="javascript:void(0)" id='setpass-btn'>确认</a></li>
                    </ul>
                </li>
                <li class="m2-userCentersettings-step7 m2-userSettings-step" >
                	<input type="hidden" id='vp-uiid' value="${sessionScope.user.userinfo.uiid }">
                	<input type="hidden" id='vp-icid' value="${sessionScope.userinfo.idCard.icid }">
                	<input type="hidden" id='icstatus' value="${sessionScope.userinfo.idCard.icstatus }">
                    <div class="m2-userSettings-stepShow">
                        <i></i>
                        <span class="m2-userSettingsshow-tit">实名认证</span>
                        <span class="m2-userSettingsshow-exp">通过此功能对用户进行实名<br/>及身份证认证管理</span>
                        
                        <span class="m2-userSettingsaut m2-userSettingsaut-fal" id='name_number'><b></b>未认证</span>
                        <span class="m2-userSettingsshow-link"><a href="javascript:void(0)">认证</a></span>
                    </div>
                    <ul class="m2-userSettings-setpHide">
                        <li class="m2-userSettingshide-tit">用户名只允许中文、字母、数字、下划线组成，首位只能为字母，且至少需要 2 个字符。</li>
                        <li>
                            <span class="m2-userSettingshide-nor"><u>*</u>用户名：</span>
                            <input placeholder="请输入真实姓名" type="text" id='usernametext' value="${sessionScope.userinfo.idCard.icname}">
                            <span class="m2-userSettingshide-warning" id='usernamewarn'></span>
                        </li>
                        <li>
                        	<span class="m2-userSettingshide-nor"><u>*</u>身份证号：</span>
                            <input placeholder="请输入身份证号" type="text" id='icnumbertext' value="${sessionScope.userinfo.idCard.icnumber}">
                            <span class="m2-userSettingshide-warning" id='usericidwarn'></span>
                        </li>
                        <li class="m2-userSettingshide-btn"><a href="javascript:void(0)" onclick='changeUserName()'>确定</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <script type="text/javascript" src="<%=path %>/statics/front/statics/home2/js/HMZCity.json"></script>
    <!-- 需要具体实现的js(修改验证的ajax) -->
    <script type="text/javascript" src="<%=path %>/statics/front/js/useraccount.js"></script>
    <!-- 获取日期 -->
    <script type="text/javascript" src="<%=path %>/statics/back/static/js/laydate.js"></script>
	    
	    <!-- 获取上传文件名 -->
	    <script type="text/javascript">
		  	//设置文件上传显示的文件
		    $(".file").on("change","input[type='file']",function(){
		        var filePath=$(this).val();
		        if(filePath.indexOf("jpg")!=-1 || filePath.indexOf("png")!=-1){
		        	$('.file').next('span').html("");
		            var arr=filePath.split('\\');
		            var fileName=arr[arr.length-1];
		            $('.file').next("#getValueName").next('span').css('color','#000000').html(fileName);
		            $("#getValueName").val(fileName);
		        }else{
		            $('.file').next("#getValueName").next('span').css('color','red').html('<em></em>您未上传文件，或者您上传文件类型有误！');
		            return false 
		        }
		    })
	    </script>
    
	    <!-- 时间插件 -->
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
		
		<!-- 地址 -->
		<script type="text/javascript">
			/*地址(三级联动)*/
			$('document').ready(function(){
				$("#lmkselect1").change(function(){
					$("#lmkselect2").attr("disabled",false);
				    $("#lmkselect3").attr("disabled",true);
					$.ajax({
						type:"post",
						url:"/Finances/userInfo/getCity",
						data:"pvid="+$("#lmkselect1").val(),
						cache:false,
						dataType:"json",
						success:function(data){
							var attr="<option value=''>请选择</option>";
							$("#lmkselect2").html("");
							for(var i=0;i<data.length;i++){
								attr += "<option value='" + data[i].cyid
								+ "'>" +data[i].cyname
								+ "</option>";
							}
							$("#lmkselect2").append(attr);
							$("#lmkselect3").html("");
							$("#lmkselect3").append("<option value=''>请选择</option>");
						},error:function(){
							alert("请与管理员联系");
						}
					});
				});
				$("#lmkselect2").change(function(){
					$("#lmkselect3").attr("disabled",false);
					$.ajax({
						type:"post",
						url:"/Finances/userInfo/getArea",
						data:"cyid="+$("#lmkselect2").val(),
						cache:false,
						dataType:"json",
						success:function(data){
							var attr="<option value=''>请选择</option>";
							$("#lmkselect3").html("");
							for(var i=0;i<data.length;i++){
								attr += "<option value='" + data[i].aeid
								+ "'>" +data[i].aename
								+ "</option>";
							}
							$("#lmkselect3").append(attr);
						},error:function(){
							alert("请与管理员联系");
						}
					});
				});
			});
		</script>
    </body>
</html>