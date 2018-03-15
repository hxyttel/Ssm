<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<div class="m2-userCentermain">
			<div class="m2-userCentermain-aside">
	        <ul>
	            <li class="m2-asideListitem">
	                <a class="m2-aside-item" href="/Finances/tousercenter?uid=${sessionScope.user.uid }"><i class="m2-asideIcon1"></i>我的账户</a>
	            </li>
	            <li class="m2-asideListitem">
	                <a class="m2-aside-item" href="/Finances/togrowth"><i class="m2-asideIcon-vip"></i>成长值中心</a>
	            </li>
	            <li class="m2-asideListitem">
	                <a class="m2-aside-item m2-aside-toggle" ><i class="m2-asideIcon2"></i>投资管理<b class="m2-asideIcon-new"></b></a>
	                <ul class="m2-aside-secItem" style="display:none">
                    <!--             取消自动投标-->
                    <!--                   <li>-->
                    <!--                        <a class="m2-aside-secLink-item" href="/usercenter-investcontrol-autoinvest"><b class="m2-asideIcon-new"></b>自动投标</a>-->
                    <!--                    </li>-->
						<li>
	                        <a class="m2-aside-secLink-item" href="/Finances/toinvestrecord">投资记录</a>
	                    </li>
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/topayment">回款计划</a>
	                    </li>
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/toinvestzt" target="_blank">立即投资</a>
	                    </li>
	
	                </ul>
	            </li>
	
	            <li class="m2-asideListitem">
	                <a class="m2-aside-item" href="/Finances/toinviting?uinvite=${sessionScope.user.uinvite}">
	                    <i class="m2-asideIcon-invit"></i>
	                    <b class="m2-asideIcon-prize"></b>
	                    邀请好友
	                </a>
	            </li>
	            <li class="m2-asideListitem">
	            	<input type="hidden" id="vp_status" value="${sessionScope.userinfo.uiid }"/>
	            	<c:set var="open_status" value="${sessionScope.userinfo.uiopenstatus }" />
					<c:if test="${open_status == 0 }">
						<a id="openstatus" class="m2-aside-item m2-aside-toggle" href="javascript:void(0);">
							<i class="m2-asideIcon3"></i>徽商资金管理
						</a>
					</c:if>  
					<c:if test="${open_status == 1 }">
						<a class="m2-aside-item m2-aside-toggle" href="/Finances/toopen">
							<i class="m2-asideIcon3"></i>徽商资金管理
						</a>
					</c:if>
	                <c:if test="${open_status == 2 }">
						<a class="m2-aside-item m2-aside-toggle">
							<i class="m2-asideIcon3"></i>徽商资金管理
						</a>
					</c:if>
	                <ul class="m2-aside-secItem" style="display:none">
		                <li><a class="m2-aside-secLink-item" href="/Finances/torecharge?uiid=${sessionScope.userinfo.uiid }">充&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;值</a></li>
		                <li><a class="m2-aside-secLink-item" href="/Finances/towithdraw?uiid=${sessionScope.userinfo.uiid }">提&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;现</a></li>
		                <li><a class="m2-aside-secLink-item" href="/Finances/tomoneyreward?uid=${sessionScope.user.uid }">资金流水</a></li>
	            	</ul>
	            </li>
	            <li class="m2-asideListitem">
	                <a class="m2-aside-item m2-aside-toggle" ><i class="m2-asideIcon4"></i>奖励管理</a>
	                <ul class="m2-aside-secItem" style="display:none">
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/toreward">奖励金流水</a>
	                    </li>
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/toredpack">我的红包</a>
	                    </li>
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/tointerest">我的代金券</a>
	                    </li>
	                    <!-- <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/tomycoin">我的钱帮币</a>
	                    </li> -->
	                </ul>
	            </li>
	            <li class="m2-asideListitem">
	                <a class="m2-aside-item m2-aside-toggle" ><i class="m2-asideIcon5"></i>消息管理 </a>
	                <ul class="m2-aside-secItem" style="display:none">
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/tomsg">站内消息</a>
	                    </li>
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/tosetmsg">通知设置</a>
	                    </li>
	                </ul>
	            </li>
	            <li class="m2-asideListitem">
	            	<c:set var="fa_status" value="${sessionScope.fabiao.fstatus }" />
	                <a class="m2-aside-item m2-aside-toggle" ><i class="m2-asideIcon6"></i>账户管理</a>
	                <ul class="m2-aside-secItem" style="display:none" id='aaa'>
	                    <li>
	                        <a class="m2-aside-secLink-item" href="/Finances/userverify?uiid=${sessionScope.user.userinfo.uiid }">账户设置</a>
	                    </li>
	                    <c:if test="${fa_status==2 || fa_status==3 }">
	                    	<li>
		                        <a class="m2-aside-secLink-item" href="/Finances/repay/repayverify?uid=${sessionScope.user.uid }">还款设置</a>
		                    </li>
	                    </c:if>
	                </ul>
	            </li>
	        </ul>
	    </div>
		<!-- 实名认证提示框 -->
		<div class="m2-userCentercommon-confirm" style="top:30%;padding-top:10px;display:none"  id='dialog-info-divs'>
		    <span class="m2-userCentercommon-confirmClose"></span>
		    <div style="text-align: center;padding: 20px 0 20px 0;">
		        <h3 id='dialog-info-texts'></h3>
		    </div>
		    <p class="m2-userCommon-confirmBtn">
		        <a class="m2-user-confirmBtn" target="_blank">确&nbsp;定</a>
		    </p>
		</div>
		<script type="text/javascript">
		    var uiid = $("#vp_status").val();
			$('#openstatus').click(function(){
				$('#dialog-info-divs').show();
	            $('#dialog-info-texts').text("请先实名认证!");
	            
	            $('.m2-user-confirmBtn').click(function () {
	            	window.location="http://127.0.0.1:8080/Finances/userverify?uiid="+uiid+"&nameNumber="+1;
	            })
	            $('.m2-userCentercommon-confirmClose').click(function () {
	                $('.m2-userCentercommon-confirm').hide();
	            });
			});
		</script>
		
		
	    <script>
	        // 		$(document).ready(function(){
	        var href = window.location.href;
	        var search = window.location.search;
	        $('.m2-asideListitem ul a').each(function () {
	            if ($(this).prop('href') + search == href) {
	                if ($(this).prop('href') == "/usercenter-wangbaoqiang" || $(this).prop('href') == "/usercenter-sirendingqi") {
	                } else {
	                    $(this).parent().parent('ul').show();
	                    $(this).parent().parent('ul').prev('a').removeClass('m2-aside-item');
	                    $(this).parent().parent('ul').prev('a').addClass('m2-aside-cur');
	                    $(this).css('text-decoration', 'underline');
	                    $(this).css('color', '#0996CC');
	                }
	            }
	        });
	        $('.m2-asideListitem a:not(.m2-asideListitem ul a)').each(function () {
	            if ($(this).prop('href') + search == href) {
	                if ($(this).prop('href').search("usercenter-wangbaoqiang") > -1) {
	                    $(this).removeClass('m2-aside-wbq');
	                    $(this).addClass('m2-aside-cur');
	                } else if ($(this).prop('href').search("usercenter-sirendingqi") > -1) {
	                    $(this).removeClass('m2-aside-wbq');
	                    $(this).addClass('m2-aside-cur');
	                } else {
	                    $(this).removeClass('m2-aside-item');
	                    $(this).addClass('m2-aside-cur');
	                }
	            }
	        });
	        $('.m2-asideListitem a:not(.m2-asideListitem ul a)').click(function () {
	            if ($(this).prop('href') == '') {
	                $(this).siblings('ul').slideToggle();
	                $(this).parent().siblings('.m2-asideListitem').children('.m2-aside-secItem').slideUp();
	            }
	        });
	        // 		});
	    </script>
	</body>
</html>