<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>head</title>
<script type="text/javascript" >
	function myinfo(){ 
		var uid = $("#uid").val();
		if( uid == null){
			$('#dialog-info-divs1').show();
	        $('#dialog-info-texts1').text("您还未登录 ! 请先登录");
	        $('.m2-user-confirmBtn').click(function () {
	        	window.location="${pageContext.request.contextPath }/tologin";
	        })
	        $('.m2-userCentercommon-confirmClose,.m2-user-confirmBtns').click(function () {
	            $('.m2-userCentercommon-confirm').hide();
	        });
		}else if(uid != null){
			parent.window.location="${pageContext.request.contextPath }/tousercenter?uid="+uid; 
			return true;
		} 
	}
	function logout(){
		$('#dialog-info-divs1').show();
        $('#dialog-info-texts1').text("是否退出登录？");
        $('.m2-user-confirmBtn').click(function () {
        	window.location="${pageContext.request.contextPath }/user/logout";
        })
        $('.m2-userCentercommon-confirmClose,.m2-user-confirmBtns').click(function () {
            $('.m2-userCentercommon-confirm').hide();
        });
	}
</script>
</head>
<body>
	<!-- 登录提示框  -->
	<div class="m2-userCentercommon-confirm" style="top:30%;padding-top:10px;display:none"  id='dialog-info-divs1'>
	    <span class="m2-userCentercommon-confirmClose"></span>
	    <div style="text-align: center;padding: 20px 0 20px 0;">
	        <h3 id='dialog-info-texts1'></h3>
	    </div>
	    <p class="m2-userCommon-confirmBtn">
	        <a class="m2-user-confirmBtn" target="_blank">确&nbsp;定</a>&nbsp;&nbsp;&nbsp;&nbsp;
	        <a class="m2-user-confirmBtns" target="_blank">取&nbsp;消</a>
	    </p>
	</div>
	
	<!-- headerStart -->
<header>
<div class="m2-commonTop-con">
    <div class="m2-commonTop">
        <div class="m2-commonTop-left">
            <div class="m2-commonTop-tel"><i></i><span id="dianhua"></span></div>
            <div class="m2-commonTop-service" style="padding-left:0;">
            	<span style="float:left;">客服：</span>
                <div id="kfdian" style="float:left;display:inline-block;width:92px;height:22px;padding:6px 0 13px 0;margin-top: -6px"></div>
            </div>
            <div class="m2-commonEwm">
                <span class="m2-commonEwm-tit">关注我们：</span>
                <div class="m2-commonEwmwx">
                    <i class="m2-commonEwmicon"></i>
                    <div class="m2-commonEwmhid">
                        <em class="m2-commonEwmhid-arr"></em>
                        <em class="m2-commonEwmhid-arrBg"></em>
                        <b id="wx"></b>
                        <span>扫一扫<br>关注忆信金融订阅号</span>
                    </div>
                </div>
                <div class="m2-commonEwmwb">
                <a id="wbh" target="_blank">
                    <i class="m2-commonEwmicon"></i>
                 </a>
                </div>
            </div>
        </div>
        <div class="m2-commonTop-right">
            <div class="m2-commonTop-link">
                <ul>
                    <!-- 论坛导航栏全部关闭 -->
                    <!--<li class="m2-commonTop-btn" style="display: none" id="bbs"><a id="bbslogin" target="_blank">论坛</a></li>-->
                    <li class="m2-commonTop-loged">
                       	<span class="m2-commonTop-userName">
                           	<c:if test="${sessionScope.user.uid  != null}">
								<input id="uid" value="${sessionScope.user.uid}" hidden="true">
	                       		<p><font color="white" >您好,${sessionScope.user.uphone}</font></p>
	                       	</c:if>
	                       	<c:if test="${sessionScope.user.uid  == null}">
	                       		 <a href="${pageContext.request.contextPath }/tologin" target="_blank" style="border-right:none;">登录</a>
	                       	</c:if>
                        </span>
                    </li>
                    <li class="m2-commonTop-btn">
                    	<c:if test="${sessionScope.user.uid  != null}">
                       		<a onclick="logout();" style="border-right:none;" target="_blank">退出</a>
                       	</c:if>
                       	<c:if test="${sessionScope.user.uid  == null}">
                       		 <a href="${pageContext.request.contextPath }/toregirset" style="border-right:none;" target="_blank">注册</a>
                       	</c:if>
                    </li>
                  <c:if test="${sessionScope.user.ubalance  != 0.00}">
                    <li class="m2-commonTop-btn">
                    	<a href="/Finances/tofinan" id="cfpage" style="border-right:none;width: 50px;">预约理财</a>
                    </li> 
           		 </c:if>
           		  <c:if test="${sessionScope.user.ubalance  == 0.00}">
                    <li class="m2-commonTop-btn">
                    	<a onclick="openmsage();" id="cfpage" style="border-right:none;width: 50px;">预约理财</a>
                    </li> 
           		 </c:if>
                </ul>
            </div>
            <div class="m2-commonTop-app" onclick='window.open("appdownload.html")' style="cursor:pointer;">
                <a href="" class="m2-commonTop-and"></a>
                <a href="" class="m2-commonTop-ios"></a>
                <span>app下载入口</span>
            </div>
        </div>
    </div>
</div>

<div class="m2-commonNav-con">
    <div class="m2-commonNav-box">
        <div class="m2-commonLogo">
            <a class="m2-comImg-logo" href="/Finances/toindex">
                <img src="/Finances/statics/front/statics/newcommon/images/logs.png" title="亿信金融投资理财平台" alt="亿信金融标识">
            </a>
            <a class="m2-conImg-slogan" href="">
                <img src="/Finances/statics/front/statics/newcommon/images/m2-sloganHS.png" title="徽商银行投资理财托管" alt="">
            </a>
        </div>
        <div class="m2-commonNav">
            <ul class="m2-commonNavul-fir" data_page='${pageName }'>
                <!--  <li class="m2-commonNav-fir"><a href="http://huifu.iqianbang.com" target="_blank" >汇付版本</a></li>-->
                <li class="m2-commonNav-fir"><a href="/Finances/toindex" id="index">首页</a></li>
                <li class="m2-commonNav-fir"><a href="/Finances/toinvestzt" id="invset">我要投资</a></li>
                <li class="m2-commonNav-fir"><a href="/Finances/tomembermall" id="business">会员商城</a></li>
                <li class="m2-commonNav-fir"><a onclick="myinfo();" id="myinfo">我的账户</a></li>
                <li class="m2-commonNav-fir"><a href="/Finances/toguarantee" id="security">安全保障</a></li>
                <li class="m2-commonNav-fir"><a href="/Finances/toabout" id="about">关于我们</a></li>
                <li class="m2-commonNav-fir"><a href="${pageContext.request.contextPath }/listActivity" id="activity">活动专区</a></li>
            </ul>
        </div>
    </div>
</div>
</header>

<style>
    .vIVR{display:none}
</style>
<script>
    var page=$(".m2-commonNavul-fir").attr("data_page");
    $("#"+page).parent().css("borderBottom","2px solid #ff6666");
    var queuename = '30017180006';
    function callback() {
        $('#tel').val($('#phonenumber').val());
        call();
    }
    setCallResponse = function (json) {
        var obj = eval('(' + json + ')');
        if (obj['description']) {
            $('#callBack-codeErr').css('display', 'block');
            $('#ivrSecurityCode').val('');
            getCode();
            setTimeout(function () {
                $('#callBack-codeErr').css('display', 'none');
            }, 3000);
        }
    }
	</script>
<!-- headerEnd -->
 <script type="text/javascript">
$(function(){
	 
	 $.ajax({  
		    url : "/Finances/ajaxgetwechart",  
		    type: "post",
		    success: function(data){  
		    	 var dataObj=eval("("+data+")");
				 $("#dianhua").html(dataObj.cephone);
		    	 $("#kfdian").html(dataObj.csphone);
		    	 //$("#wx").css("background","url(" + "/Finances"+dataObj.cwechartimgurl + ")");
		    	 var cc ="http://weibo.com/"+dataObj.caddress;
		    	 $("#wbh").attr("href",""+cc+"");
		    },  
		    error: function(XMLHttpRequest, textStatus, errorThrown){  
		        alert(XMLHttpRequest.readyState + XMLHttpRequest.status + XMLHttpRequest.responseText);  
		    }  
		});  
});
</script>
<script type="text/javascript">
	 function openmsage(){
		 $('#dialog-info-divs1').show();
	        $('#dialog-info-texts1').text("您未实名充值");
	        $('.m2-user-confirmBtn').click(function () {
	        	window.location="${pageContext.request.contextPath }/tousercenter?uid=${sessionScope.user.uid}";
	        })
	        $('.m2-userCentercommon-confirmClose,.m2-user-confirmBtns').click(function () {
	            $('.m2-userCentercommon-confirm').hide();
	        });
	}
</script>
</body>
</html>