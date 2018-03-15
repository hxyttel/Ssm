<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		 <meta charset="UTF-8">
	    <!--[if lt IE 9]>
	    	<script src="<%=path%>/statics/front/statics/newcommon/js/html5shiv.js"></script>
	    <![endif]-->
	    <meta name="keywords" content="网贷平台,网络借贷，网络赚钱项目,理财产品">
	    <meta name="description" content="爱钱帮网贷平台为您提供网络赚钱项目；为此相继推出了许多新的理财产品，在为您创造高收益的同时也优化了理财产品模式。网络借贷，就选爱钱帮。">
	    <meta charset="UTF-8">
	    <link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/6.png">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
	    <link rel="Shortcut  Icon" href="/Finances/statics/other/lco/smalllog.png">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/userCenter.css">
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/jquery.min.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/esl.js"></script>
	    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/jquery.datetimepicker.css" />
	    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/jquery.datetimepicker.js"></script>
		<title>通知设置 | 亿信金融</title>
	</head>
	<body>
	<div class="m2-userCentercommon-bg" style='display: none'></div>
		<div class="m2-userCoin-confirm"  style='display: none'></div>
		<!-- 右侧边栏start -->
		<div class="m2-commonRight">
		    <ul class="m2-comRiglist">
		        <li class="m2-comRigli m2-comRigli-ewm">
		            <i class="m2-comRigli-icon"></i>
		            <span class="m2-comRigli-hov">关注<br>微信</span>
		            <div class="m2-comRighide m2-comRighide-ewm"><i></i></div>
		        </li>
		        <li class="m2-comRigli m2-comRigli-tel">
		            <i class="m2-comRigli-icon"></i>
		            <span class="m2-comRigli-hov">联系<br>我们</span>
		            <div class="m2-comRighide m2-comRighide-tel">
		                <div class="m2-comRighide-telSpace"></div>
		                <b class="m2-comRighide-telBorder"></b>
		                <div class="m2-comRigtel-lef">
		                    <div class="m2-comRigtel-lefTop">
		                        <input type="text" placeholder="请输入您的手机号"  id='phonenumber'>
		                    </div>
		                    <div class="m2-comRigtel-lefBot">
		                        <input type="text" placeholder="验证码" id="ivrSecurityCode">
		                        <img id="ivrSecurityCodeImg" onclick="getCode()" src="/Finances/statics/front/statics/home2/images/code.png" alt="验证码" title="点击更新验证码">
		                    </div>
		                </div>
		                <div class="m2-comRigtel-rig">
		                    <span  onclick='callback()'>免费<br>拨打</span>
		                </div>
		            </div>
		        </li>
		        <li class="m2-comRigli m2-comRigli-qq">
		            <a  target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2522274059&amp;site=qq&amp;menu=yes">
		                <i class="m2-comRigli-icon"></i>
		                <span class="m2-comRigli-hov">在线<br>客服</span>
		            </a>
		            <!-- <div class="m2-comRighide"></div> -->
		        </li>
		        <!--<li class="m2-comRigli m2-comRigli-sug">-->
		        <!--<i class="m2-comRigli-icon"></i>-->
		        <!--<span class="m2-comRigli-hov">意见<br>反馈</span>-->
		        <!-- <div class="m2-comRighide"></div> -->
		        <!--</li>-->
		        <li class="m2-comRigli m2-comRigli-top">
		            <i class="m2-comRigli-icon"></i>
		            <span class="m2-comRigli-hov">返回<br>顶部</span>
		            <!-- <div class="m2-comRighide"></div> -->
		        </li>
		    </ul>
		</div>
		<script type="text/javascript">
		    $(function () {
		        var wHei = $(window).height();
		
		        $(document).scroll(function () {
		            // 判断返回顶部是否显示
		            visTop(wHei);
		        });
		
		        $('.m2-comRigli-top').click(function () {
		            $('body,html').animate({scrollTop: 0}, 600);
		            return false;
		        });
		    });
		
		    function visTop(high) {
		
		        if ($(document).scrollTop() > high + 100) {
		            $('.m2-comRigli-top').css('visibility', 'visible');
		        } else {
		            $('.m2-comRigli-top').css('visibility', 'hidden');
		        }
		    }
		</script>
		<!-- 右侧边栏end -->
		
		<!-- 头部start -->
			<jsp:include page="../include/head.jsp"></jsp:include>
		<!-- 头部end -->
		
		<!-- 内容start -->
		
		<!-- 树start -->
	    <jsp:include page="../include/tree.jsp"></jsp:include>
	    <!-- 树end -->
		
		    <div class="m2-userCentermanage-con">
		        <div class="m2-user-recharge">
		            <h3><i class="m2-user-alertset"></i>通知设置</h3>
		        </div>
		        <div class="m2-recharge-mainbody">
		            <div class="m2-user-setbtn">
		                <script>
		                    window.confirm = function(){};
		                    window.prompt  = function(){};
		                    window.open    = function(){};
		                    window.print   = function(){};
		                    // Support hover state for mobile.
		                    if (false) {
		                        window.ontouchstart = function(){};
		                    }
		                </script>
		                <table cellpadding="0" cellspacing="1" border="0">
		                    <tr>
		                        <th></th>
		                        <th>站内消息</th>
		                        <th>邮件通知</th>
		                        <th>短信通知</th>
		                    </tr>
		                    <c:set var="aaaa" value="0"></c:set>
		      		<c:forEach items="${setupnatice}" var="s">         
		                    <tr>
			                        <td id="n${aaaa=aaaa+1}">${s.usname}</td>
				                    <td>
				                            <input type="checkbox" value="${s.usname},insinfo" id="s${aaaa=aaaa+1}"  <c:if test="${s.usinsideStatus==1}">checked=""</c:if> />
				                            <label class="slider-v2" for="s${aaaa}"></label>						
				                    </td>
				                    <td>
				                        <input type="checkbox" value="${s.usname},eminfo" id="s${aaaa=aaaa+1}" <c:if test="${s.usemailStatus==1}">checked=""</c:if>/>
				                        <label class="slider-v2" for="s${aaaa}"></label>						
				                    </td>
				                    <td>
				                    	<c:if test="${s.usmessageStatus!=null}">
				                    		  <input type="checkbox" value="${s.usname},msginfo" id="s${aaaa=aaaa+1}"  <c:if test="${s.usmessageStatus==1}">checked=""</c:if> />
				                     	      <label class="slider-v2" for="s${aaaa}"></label>	
				                    	</c:if>
				                    </td>					
			                </tr>
			      </c:forEach>            
		           </table>
		            </div>
		            <div class="m2-recharge-tips">
		                <h3><i></i>温馨提示：</h3>
		                <ul>
		                    <li><i class="m2-recharge-tips01"></i><b>为了您的资金安全，不建议您去掉重要的消息提醒。</b></li>
		                    <li><i class="m2-recharge-tips02"></i><b>如果您更换了邮箱，手机号，请您及时到 安全设置 页面修改。</b></li>
		                    <li><i class="m2-recharge-tips03"></i><b>使用过程遇到问题，请联系客服，4006-777-518。</b></li>
		                </ul>
		            </div>
		        </div>
		    </div>
		</div>
		<script>
		    if (document.location.search.match(/type=embed/gi)) {
		        window.parent.postMessage('resize', "*");
		    }
		    $(function(){
		        $('input:checkbox').change(function(){
						var my =$(this).val();
						var isck = 0;
						if($(this).attr("checked")) {
							//选择
							isck = 1;
			            }else{
			            	//未选择
			            	isck = 2;
			            }
					var p ={'thisval':my,'isck':isck}	
		            postData('/Finances/user/usersetup',p,function(d){
		                if(d.status==1){
		                    showDialog('修改成功','您已经成功设置了消息提醒');
		                }
		                else{
		                    showDialog('修改失败','对不起，修改失败');
		                }
		            });
		        });
		
		    });
		</script>
	</body>
</html>