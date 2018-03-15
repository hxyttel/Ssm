<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
%>  
<!DOCTYPE html>
<html>
<head>
<link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/6.png">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <meta name="keywords" content="高收益理财产品,理财投资,网络投资理财平台,网贷理财,互联网金融,投资理财平台,投资理财,赚钱,小额投资理财,如何投资理财,投资理财知识,投资理财,北京p2p理财">
 <meta name="description" content="爱钱帮可以为您赚钱的网络投资理财平台，为投资理财用户和贷款用户两端提供公平、透明、安全、高效的网贷理财服务，爱钱帮互联网金融中网贷投资理财平台的最好的选择。">

 <title>首页 | 亿信金融</title>
 
 	 <script src="http://code.jquery.com/jquery-1.4.2.min.js"></script>
 
    <!--[if lt IE 9]>
    	<script src="/Finances/statics/front/statics/newcommon/js/html5shiv.js"></script>
    <![endif]-->
    
    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-main.css">
    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/userCenter.css">
    
    <script type="text/javascript" src="/Finances//statics/front/statics/newcommon/js/common.js"></script>
	<script type="text/javascript" src="/Finances/statics/front/statics/home2/js/jquery.knob.js"></script>
	<script type="text/javascript" src="/Finances/statics/front/statics/home2/js/jquery.SuperSlide.js"></script>
	<script type="text/javascript" src="/Finances/statics/other/js/do-it.js"></script>
	
    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-main.css">
	<link rel="stylesheet" href="/Finances/statics/front/statics/home/css/newPage.css" />
	<link type="text/css" rel="stylesheet" href="/Finances/statics/front/statics/common/tipBox/colorbox-master/css/colorbox.css">
	
	<script src="/Finances/statics/front/statics/common/js/common.js"></script>

	<script src="/Finances/statics/front/statics/common/tipBox/common.js"></script>
	
	<!-- 图形验证码 -->
	<script src="/Finances/statics/front/js/gVerify.js"></script>
	<!-- 桌面预加载动画 -->
	<script src="/Finances/statics/front/js/topbar.min.js"></script>
	<script type="text/javascript">
	 $(function() {
         //prettyPrint()
         function resetToDefaults() {
           topbar.config({
             autoRun      : true,
             barThickness : 3,
             barColors    : {
               '0'      : 'rgba(26,  188, 156, .9)',
               '.25'    : 'rgba(52,  152, 219, .9)',
               '.50'    : 'rgba(241, 196, 15,  .9)',
               '.75'    : 'rgba(230, 126, 34,  .9)',
               '1.0'    : 'rgba(211, 84,  0,   .9)'
             },
             shadowBlur   : 10,
             shadowColor  : 'rgba(0,   0,   0,   .6)'
           })
         }
         // Page load
         resetToDefaults()
         topbar.show()
         setTimeout(function() {
           $('#main_content').fadeIn('slow')
           topbar.hide()
         }, 1500)

   
     })
	</script>
	
	<!--tipBOx-->
	<script language=JavaScript type="text/javascript" src="/Finances/statics/front/statics/home/js/tab.js"></script>
	<script type="text/javascript">
		$(function () {
		    if ($.browser && $.browser.msie && ($.browser.version == "6.0") && !$.support.style) {
		        $('#fixed-services').css('display', 'none');
		    }
		})
	</script>
	
	<!--公共提示框start-->

     <style type="text/css">
        .myloginmask {position:fixed;top: 0;left: 0;right: 0;bottom: 0;background-color: black;display: none;opacity: 0.7;z-index: 800;filter:alpha(opacity=70)}
        .mylogin {position:   fixed;top: 50%;left: 50%;margin-top: -346px;margin-left: -260px;width: 520px;height: 496px;background-image: url("/Finances/statics/front/statics/home2/images/login/login_info.png");background-repeat: no-repeat;z-index: 1000;display: none;}
        .mylogin .topcontent {font-weight:bold;text-align: center;color: #666666;font-size: 18px;padding-top: 284px;line-height: 36px;}
        .mylogin .topcontent span {color: #883535;}
        .mylogin .bottomcontent {font-weight:bold;font-size:20px;line-height: 30px;width:384px;margin: 50px auto;}
        .mylogin .bottomcontent a{color: #333333;text-decoration: none;}
        .mylogin .closeimg {position: absolute;top: 220px;right: 14px;width: 43px;height: 43px;background-image: url("/Finances/statics/front/statics/home2/images/login/cha.png");}
    </style>  
    
     <script type="text/javascript">
        $(function(){
            $('.m2-pwdConfirm-auto b').click(function(){
                $('.m2-pwdConfirm-auto,.m2-pwdBg').hide();
            })
        })
    </script>

     <!--公共提示框end-->

</head>
	<body>
		<div class="myloginmask"></div>
	    <div class="mylogin">
	        <div class="closeimg"></div>
	        <div class="topcontent">
	            <p><span id="user"></span>，欢迎回来！</p>
	            <p>钱帮币<span id="nowcoin"></span>个，<span id="mytime"></span>即将到期<span id="overcoin"></span>个</p>
	        </div>
	        <div class="bottomcontent">
	            <a href="#"> 查看规则>></a>
	            <a href="#" style="float:right">钱帮币兑换宝物>></a>
	        </div>
	    </div>
	    
	    <div class="m2-pwdBg" style='display:none;z-index:9000'></div>
	    <div class="m2-pwdConfirm" style='display:none;z-index:9001'>
	        <i class="m2-pwdConfirm-close"></i>
	        <i class="m2-pwdConfirm-ture" id='dialog-status'></i>
	        <div class="m2-pwdConfirm-con"></div>
	    </div>
		<!-- 右侧上边栏start -->
		
		<!-- 语音弹窗start -->
		<div class="m2-login-voice" style="display:none;">
	    	<i class="m2-loginVoi-boxClose"></i>
	    	<div class="m2-logVoi-psg">您好！您填写的手机号在5分钟内会接到由400-1016-064拨打的电话，您在接通后可收听6位语音验证码，输入验证码点击注册即可成为爱钱帮的用户。</div>
	    	<div class="m2-logVoi-btn">
		        <span class="m2-logVoi-sur">确&nbsp;&nbsp;&nbsp;定</span>
		        <span class="m2-logVoi-can">取&nbsp;&nbsp;&nbsp;消</span>
	    	</div>
		</div>
		
		<script type="text/javascript">
    	$(function(){
        	// 显示&隐藏
        	$('.m2-loginVoi-boxClose,.m2-logVoi-sur,.m2-logVoi-can').click(function(){
            	$('.m2-commonBg,.m2-login-voice').hide();
        	});
    	});
		</script>
		<!-- 语音弹窗end -->
		
		<!-- 用户协议弹窗start -->
		<div class="m2-loginReg-box" style="display:none;">

		</div>
		<!-- 用户协议弹窗end -->
		
		<!-- 弹出层start -->
		<div class="m2-detConfirm">
			<b class="m2-detConfirm-close"></b>
    		<div class="m2-detConfirm-head" id="msgtitle"></div>
    		<div class="m2-detConfirm-main" id="msgcontent"></div>
    		
    		<div class="m2-detConfirm-btn" id="msgbtn2" style="display:none">
	        	<a href="javascript:void(0)" class="m2-detConfirmbtn-confirm" onclick="$('#transfer_form').submit();">确认承接</a>
	        	<a href="javascript:void(0)" class="m2-detConfirmbtn-cancle">取消</a>
    		</div>
    		
    		<div class="m2-detConfirm-btn" id="msgbtn3" style="display:none">
		        <a href="#" target="_blank" class="m2-detConfirmbtn-confirm">去充值</a>
		        <a href="javascript:void(0)" class="m2-detConfirmbtn-cancle">取消</a>
    		</div>
    		
    		<div class="m2-detConfirm-btn" id="msgbtn1" style="display:none">
        		<a href="javascript:void(0)" class="m2-detConfirmbtn-center">确认</a>
    		</div>
    	</div>
		
		<div class="m2-tranBg"></div>
		<div class="m2-tranHide">
    		<i class="m2-tranHide-close"></i>
    		<h2 class="m2-tranHide-head">债转收益计算器</h2>
    		<div class="m2-tranHide-box">
        		<div class="m2-tranHidetit" id='trans-borrow-name'>
            		<span>所选项目：</span>
        		</div>
		        <div class="m2-tranHiderem">
		            <span>账户余额：</span>
		            <a href="login.html#login_callback=index" target="_blank">登录</a>后可看                <b class="invest_all">全用</b>
		        </div>
        		<div class="m2-tranHidenum">
            		<span>投资金额：</span>
            		<input placeholder="请输入金额" type="text" id='transfer_money1'>
            		<span class="m2-tranHidenum-btn">确认返回</span>
            		<!--<b>提示错误信息</b>-->
        		</div>
    		</div>
    		
    		<div class="m2-tranHide-info">
        		<div class="m2-tranInfo-sum">投资到期可获得总收益：<span id="transfer-income">0元</span></div>
        		<div class="m2-tranInfo-num">起投金额：<span id='transfer_limit'>0元</span>投资金额：<span id='transfer_money3'>0元</span></div>
    		</div>
    		<div class="m2-tranHidelist">
        		<ul id="trans-pay-list"></ul>
    		</div>
		    <div class="m2-tranHidetoggle m2-tranMore">
		        <span>显示更多&raquo;</span>
		    </div>
    		<p class="m2-transHide-bottom">偿还本金: <span style="color:#ea731e;" id='transfer_money2'>0元</span></p>
		</div>
		<!-- 弹出层end -->
		
		<!-- 右侧边栏 start -->
		<jsp:include page="include/sidebar.jsp"></jsp:include>
		<!-- 右侧边栏 end -->
		
		<!-- headerStart -->	
    	<jsp:include page="include/head.jsp"></jsp:include>
		<!-- headerEnd -->

			<!-- bannerStart -->
		<div class="m2-banner-box">
    		<div class="m2-indexLogincon">
        		<!-- 登录box start -->
        		<div class="mo2-indexLoginbox">
        			<c:if test="${sessionScope.user.uid!=null}">
		            	<!-- 已登录start -->
		            	<div class="mo2-indLoged">				
			            	<div class="mo2-indLoged-tit">
			            		<span>你好！<span style="color:#f34940;">${sessionScope.user.uphone}</span>，欢迎来到爱钱帮</span>
			            	</div>
	               			<div class="mo2-indLog-userHead">
	                    		<a href="/Finances/tousercenter">
	                    			<img src="<%=path %>${sessionScope.user.userinfo.uiheadImg}" title="欢迎来到爱钱帮投资理财平台" alt="">
	                    		</a>
	                		</div>
	                		
	                		<div class="mo2-indLogedmain">
			                    <p class="mo2-indLoged-sma">今日赚取</p>
			                    <p class="mo2-indLoged-big">&yen;<span>${sessionScope.dayMoneyUser}</span></p>
	                		</div>
	                		
			                <div class="mo2-indLog-btn" style="margin-top:18px;">
			                    <a href="/Finances/tousercenter?uid=${sessionScope.user.uid }">我的账户<i></i></a>
			                </div>
	            		</div>
	            		<!-- 已登录end -->
            		</c:if>
            	<c:if test="${sessionScope.user.uid  == null}">
            		<!-- 登录注册start -->
	            	<div class="mo2-indLogreg">				
	            		<div class="mo2-indLogtab">
			                <ul>
			                    <li class="mo2-logTab-unsel mo2-indTab-reg">
			                        <span>注册</span><b></b>
			                    </li>
			                    <li class="mo2-logTab-sel mo2-indTab-log">
			                        <span>登录</span><b></b>
			                    </li>
			                </ul>
	            		</div>
	            		
	                <!-- 注册start -->
	                	<div class="mo2-indRegbox" style="display:none;">
		                    <div class="mo2-indLogitem" style="margin-bottom:6px;">
		                        <i class="mo2-indLogicon-tel"></i><input class="mo2-indIpt-all" id="regTel" maxlength="11" type="text" placeholder="输入手机号码">
		                        <b class="mo2-indLogwar"><em class="mo2-indlogWar-arr"></em><u></u></b>
		                    </div>
		                    
		                    <div class="mo2-indLogitem" style="margin-bottom:6px;">
		                        <i class="mo2-indLogicon-psw"></i><input class="mo2-indIpt-all m2-ind-banPsw" id="pass" onkeyup="isNumber()" type="password" placeholder="6-20位数字与字母组合的密码"><b class="mo2-indLogwar"><em class="mo2-indlogWar-arr"></em><u></u></b>
		                    </div>
		                    
		                    <div class="mo2-indLogitem-step1">
		                        <div class="mo2-indLogreg-step1">
		                            <i class="mo2-indLogicon-code"></i><input class="mo2-indIptcod-step1" id="vcode" type="text" placeholder="验证码">
		                        </div>
		                        <div class="mo2-indRegcode"  id="reverifyCode" ></div>
		                        <b class="mo2-indLogwar"><em class="mo2-indlogWar-arr"></em><u></u></b>
		                    </div>
		                    
	                    <div class="mo2-indReg-btn" id="verifyregcode" onclick="verifycode();" style="margin-top:8px;">
	                        <a class="mo2-indRegbtn-able" href="#">立即注册</a>
	                    </div>
	                    
	                    <div class="mo2-indRegagree">
	                        <i class="mo2-indReg-sel"></i><span>我已阅读并同意</span><b>《爱钱帮注册服务协议》</b>
	                    </div>
	                </div>
	                <!-- 注册end -->
	                
	                
	                <!-- 注册step2 start -->
	                <div class="mo2-indRegbox2"  style="display:none;" >
	                    <div class="mo2-indReg2-con">
	                        <ul>
	                            <li><i class="mo2-indRegicon-step1"></i><span>为了确保您手机可用，请填写您收到的手机动态码。</span></li>
	                            <li><i class="mo2-indRegicon-step2"></i><span>如收不到短信验证码，可点击下面的获取语音验证码。</span></li>
	                        </ul>
	                    </div>
	                    
	                    <div class="mo2-indLogitem">
	                        <i class="mo2-indLogicon-code"></i><input class="mo2-indIpt-half" id="code" type="text" placeholder="验证码">
	                        <span class="mo2-indRegtim mo2-regTin-able"><u>60秒后</u><span>获取手机验证码</span></span>
	                        <b class="mo2-indLogwar" style="width:200px;"><em class="mo2-indlogWar-arr"></em><u>错误提示信息</u></b>
	                    </div>
	                    
	                    <div class="mo2-indRegvoice">
	                        <span class="mo2-indRegvoi-btn mo2-indRegvoi-able"><i></i>获取语音验证码</span>
	                    </div>
	                    <input type="hidden" id="myyzcode">
	                    <div class="mo2-indReg-btn" onclick="registeraaa();" id="verifyregphone"  style="margin-top:8px;">
	                        <a class="mo2-indRegbtn-able"  href="#">立即注册</a>
	                    </div>
	                </div>
	                <!-- 注册step2 end -->
	                
	                
	                <!-- 登录start -->
	                <div class="mo2-indLogbox">
	                    <div class="mo2-indLogitem mo2-indLogitem-use" style="margin-bottom:9px;">
	                        <i class="mo2-indLogicon-use"></i><input class="mo2-indIpt-all" type="text" id="user_name" placeholder="用户名/手机号">
	                        <b class="mo2-indLogwar" id="w_usernameMain"><em class="mo2-indlogWar-arr"></em><u id="r_usernameMain"></u></b>
	                    </div>
	                    
	                    <div class="mo2-indLogitem mo2-indLogitem-psw" style="margin-bottom:9px;">
	                        <i class="mo2-indLogicon-psw"></i><input class="mo2-indIpt-all m2-ind-banPsw" maxlength="20" id="pass_word" type="password" id="pass_word" placeholder="输入登录密码">
	                        <b class="mo2-indLogwar" id="w_passwordMain"><em class="mo2-indlogWar-arr"></em><u id="r_passwordMain"></u></b>
	                    </div>
	                    <!--
	                    <div class="mo2-indLog-code" style="display:none;margin-bottom:8px;">
	                        <div class="mo2-indLogcod-lef">
	                            <i class="mo2-indLogicon-psw"></i>
	                            <input type="text" id="vcode" placeholder="验证码"></div>
	                        <div class="mo2-indLogcod-rig"><img src="/Finances/statics/front/statics/home2/images/Index-VerifyCode.png" onClick="document.getElementById('reverifyCode').src='Index-VerifyCode.png?time='+Math.random();void(0);" alt="点击刷新验证码"></div>
	                    </div>
	                      -->
	                    <div class="mo2-indLog-forget">
	                    		记住密码：<input type="checkbox" id="issvae" checked="">
	                    		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                    		 <a href="forget.html">忘记密码?</a>
	                    	</div>
	                    
	                    <div class="mo2-indReg-btn" style="margin-top: 20px;">
	                        <a class="mo2-indRegbtn-able" onclick="login();">登录</a>
	                    </div>
	                </div>
	                <!-- 登录end -->
	            </div>
            	<!-- 登录注册end -->
            </c:if>
        </div>
        <!-- 登录box end -->
    </div>
    
   	<!-- 轮播图 -->
    <div class="m2-bd">
        <ul id="m2-ul">
	        <c:forEach items="${indexpicList}" var="hi">
	            <li  style="background-color: white;">
	                <div class="m-width">
	                    <a  href="${hi.ipurl}" target="_blank">
	                    <img src="/Finances${hi.ipimage}" title="${hi.ipname}"   alt="${hi.ipname}"/>
	                   </a>
	                </div>
	            </li>
		    </c:forEach>     
	    </ul>          
    </div>
    
    <!-- 自动调整轮转图片的显示大小（宽度） -->
    <div class="m2-banner-btn">
        <a style="display:none;" class="m2-prev"  href="javascript:void(0);"></a>
        <a style="display:none;" class="m2-next" href="javascript:void(0);"></a>
        <div class="m2-hd"><div class="m2-hdBg"></div><ul></ul></div>
    </div>
    
    <!-- 自动调整轮转图片的显示大小（宽度）-->
    <script type="text/javascript">
        window.onresize=function(){
            var oM2Ul=document.getElementById('m2-ul');
            oM2Ul.style.width=document.documentElement.clientWidth+'px';
        } 
    </script>
</div>

	<!--新用户完成注册-->
	<div class="comregist" id="newregister" style="display:none;">
	    <div class="comregistmask z100"></div>
	    <div class="comregistbox z101">
	        <div class="comregistbox_b">
	            <p></p>
	            <div>
	                <img src="/Finances/statics/front/statics/home2/images/december-expermoney/regist.png" alt="恭喜您注册爱钱帮，20000元体验金已经发送您的账户">
	                <span class="incentivebox_bp1">恭喜您注册爱钱帮，<span class="red">20000元</span>体验金已经发送您的账户</span>
	                <p class="comregistbox_bp2">您可以去体验金项目进行投资</p>
	            </div>
	            <a href="/Finances/toinvestzt">去投资</a>
	            <div class="close" id="newregister-close"><img src="/Finances/statics/front/statics/home2/images/december-expermoney/close.png" alt="点击取消"></div>
	        </div>
	    </div>
	</div>
	<!--新用户完成注册-->

	<!-- bannerEnd -->

	<div class="m2-indexMain" style="width: 1000px;margin: 0 auto;position:relative;">
    	<div class="mo2-indexStep">
        	<ul>
            	<li class="mo2-indSteite  mo2-indSteite1">
                	<a href="/Finances/toguarantee" target="_blank">
                    	<div class="mo2-indStelef">
                    		<i class="mo2-indSteicon1"></i>
                    	</div>
                    	<div class="mo-indSterig">
	                        <p class="mo2-indSte-big">安全可靠</p>
	                        <p class="mo2-indSte-sma">资金银行存管<br>银行级风控</p>
                    	</div>
                	</a>
            	</li>
            
            	<li class="mo2-indSteite  mo2-indSteite2">
	                <a href="/Finances/topro" target="_blank">
	                    <div class="mo2-indStelef"><i class="mo2-indSteicon2"></i></div>
	                    <div class="mo-indSterig">
	                        <p class="mo2-indSte-big">安全收益</p>
	                        <p class="mo2-indSte-sma">稳健预期年化收益<br>余额生息</p>
	                    </div>
	                </a>
            	</li>
            	
	            <li class="mo2-indSteite  mo2-indSteite3">
	                <a href="/Finances/topro" target="_blank">
	                    <div class="mo2-indStelef"><i class="mo2-indSteicon3"></i></div>
	                    <div class="mo-indSterig">
	                        <p class="mo2-indSte-big">灵活方便</p>
	                        <p class="mo2-indSte-sma">百元起投 提现秒到<br>当日投资 当日计息</p>
	                    </div>
	                </a>
	            </li>
	            
	            <li class="mo2-indSteite  mo2-indSteite4" style="width:174px;">
	                <a href="/Finances/toabout" target="_blank">
	                    <div class="mo2-indStelef"><i class="mo2-indSteicon4"></i></div>
	                    <div class="mo-indSterig">
	                        <p class="mo2-indSte-big">实力雄厚</p>
	                        <p class="mo2-indSte-sma">盛大资本战略投资<br></p>
	                    </div>
	                </a>
	            </li>
        	</ul>
    	</div>
    
    <!-- 滚动公告start -->
    <div class="mo2-notice">
        <div id="upRoll1" class="upRoll">
            <div id="holder1">
                <ul class="list-ul1">
                <c:forEach items="${listNotice}" var="notice">
                    <li>
                        <a href="${pageContext.request.contextPath}/font/selectType?nid=${notice.nid}">
                            <span class="mo2-rollTit">${notice.ntitle }<b>&nbsp;&nbsp;<font color="red">new</font></b></span>
                            <span class="mo2-rollTiM">${notice.ntime }</span>
                        </a>
                    </li>
                 </c:forEach>
                    <!-- <li>
	                    <a href="/Finances/tobilia">
	                        <span class="mo2-rollTit">爱钱帮CEO王吉涛出席全球互联网创新金融峰会</span>
	                        <span class="mo2-rollTiM">2016-08-19</span>
	                    </a>
                	</li>
                	
	                <li>
	                    <a href="/Finances/tobilia">
	                        <span class="mo2-rollTit">【平台公告】关于网络优化的公告</span>
	                        <span class="mo2-rollTiM">2016-08-18</span>
	                    </a>
	                </li>       -->      
	             </ul>
            </div>
        </div>
        
        <div class="mo2-notMore">
            <a href="${pageContext.request.contextPath}/tonot">更多公告</a>
        </div>
    </div>
    <!-- 滚动公告end -->
    
    
    <!-- 新手项目start -->
    <div class="mo2-indexSingle">
        <div class="mo2-indWbq">
            <h2><i class="mo2-indProtop-sma tobig">新手项目</i><a href="javascript:void(0)" target="_blank"></a><span>新手体验金</span></h2>
            <div class="mo2-indWbqmain">
                <div class="mo2-indWbqmain-lef"></div>
                <div class="mo2-indWbqmain-rig">
                    <h4><a href="javascript:void(0)" target="_blank" title="爱钱帮理财新手体验金项目">爱钱帮理财新手体验金项目</a></h4>
                    <div class="mo2-indWbqdet">
                        <p>
                            <span class="mo2-indWbqdet-tit">预期年化收益率：</span>
                            <span class="mo2-indWbqdet-sma">10%</span><span style="font-size:20px;" class="mo2-indWbqdet-sma huodongjiaxi">+10%</span>
                            <span style="margin-top:-14px;margin-left:150px;" class="jiaxishow">活动加息10%</span>
                        </p>
                        
                        <p style="height:36px;">
                            <span class="mo2-indWbqdet-tit" style="line-height:36px;">项目余额：</span>
                            <span class="mo2-indWbqdet-nor">4782万元</span>
                        </p>
                        
                        <p style="height:36px;">
                            <span class="mo2-indWbqdet-tit" style="line-height:36px;">项目时间：</span>
                            <span class="mo2-indWbqdet-nor">2天</span>
                        </p>
                    </div>
                    
                    <div class="mo2-indWbqrig-main">
                        <div class="mo2-indWbqtim">
                        <span class="mo2-wbqTimedown">
                            <b></b>
                            <span class="mo2-wbqDay"><i></i>天&nbsp;</span>
                            <span class="mo2-wbqHou"><i></i>时&nbsp;</span>
                            <span class="mo2-wbqMin"><i></i>分&nbsp;</span>
                            <span class="mo2-wbqSec"><i></i>秒&nbsp;</span>
                        </span>
                        </div>
                        <div class="mo2-wbqProc"  style="display:none;">
                        <span class="mo2-wbqProcess">
                            <span class="mo2-wbqProcess-tit">正在募集：</span>
                            <b>
                                <i style="width:4.36%;"></i>
                                <u style="left:4.36%;">
                                    4.36%
                                    <em></em>
                                </u>
                            </b>
                        </span>
                        </div>
                        <div class="mo2-wbqBtn">
                            <a href="javascript:void(0)" target="_blank">即将开始</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 新手项目end -->
        
        <!-- 私人定期start -->
        <div class="mo2-indPri">
            <h2><i class="mo2-indProtop-sma tobig">新手项目</i>
                <a href="javascript:void(0)"></a>
                <span>新手专享标</span></h2>
            <div class="mo2-indPrimain">
                <div class="mo2-indPrimain-lef">

                </div>
                <div class="mo2-indPrimain-rig">
                    <h4><a href="javascript:void(0)" target="_blank" title="爱车贷-雪佛兰迈锐宝-XAA067">爱车贷-雪佛兰迈锐宝-XA…</a></h4>
                    <div class="mo2-indPridet">
                        <p style="margin-bottom:10px;">
                            <span class="mo2-indPridet-tit">预期年化收益率：</span>
                                <span class="mo2-indPridet-big huodongjiaxi">
                              	8%<span style="font-size:20px;">+1%</span>								</span>
                              	<span style="margin-top:-20px;margin-left:120px;" class="jiaxishow">
									活动加息1%																		</span>
                        </p>
                        
                        <p>
                            <span class="mo2-indPridet-tit">项目余额：</span>
                            <span class="mo2-indPridet-nor">4.99万</span>
                        </p>
                    </div>
                    
                    <div class="mo2-indPririg-main">
                        <div class="mo2-indPritim">
                        <span class="mo2-priTimedown">
                            <b></b>
                            <span class="mo2-priDay"><i></i>天&nbsp;</span>
                            <span class="mo2-priHou"><i></i>时&nbsp;</span>
                            <span class="mo2-priMin"><i></i>分&nbsp;</span>
                            <span class="mo2-priSec"><i></i>秒&nbsp;</span>
                        </span>
                        </div>
                        <div class="mo2-priProc"  style="display:none;">
                        <span class="mo2-priProcess">
                            <span class="mo2-priProcess-tit">正在募集：</span>
                            <b>
                                <i style="width:42.11%;"></i>
                                <u style="left:42.11%;">
                                    42.11%
                                    <em></em>
                                </u>
                            </b>
                        </span>
                        </div>
                        <div class="mo2-priBtn">
                            <a href="javascript:void(0)" target="_blank">即将开始</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 私人定期end -->
    
    <!-- 爱车贷start -->
    <div class="mo2-indCar-con">
        <h2 class="mo2-indCar-head">
            <i class="mo2-indProtop-sma tobig">投资理财 — 爱车贷</i>
            <a class="mo2-indCarhead-a1" href="/Finances/toinvestche"></a>
            <span>汽车金融，垂直细分新领域</span>
            <a class="mo2-indCarhead-a2" href="/Finances/toinvestche">查看全部</a>
        </h2>
        <div class="mo2-indCarlist-prev"></div>
        <div class="mo2-indCarlist-next"></div>
        <div class="mo2-indCarbox">
        	<c:if test="${fn:length(fabiaolistsafd)==0}">
					<center>
						<img src="/Finances/statics/front/images/nodata.png">	
						<h1>没有数据</h1>
					</center>
				</c:if>
            <ul class="mo2-indCar">
            <c:forEach items="${fabiaolistsafd}" var="fbindexlist">
                <li class="mo2-indCarlist mo2-indCarlist-ing">
					<div class="mo2-indCartop">
	                    <div class="mo2-indCartop-img">
	                    	<!-- 
                        	m2-invItem-new :为图片上的新手标
                        	m2-invItem-hot :为图片上的热门标
                        	没加i标签的则为普通标
                         -->
                         	<c:if test="${fbindexlist.ftype=='新手标'}">
                         		<i class="mo2-listNewicon"></i>
                         	</c:if>
                            <c:if test="${fbindexlist.ftype=='热门标'}">
                         		<i class="m2-invItem-hot"></i>
                         	</c:if>
	                                             
	                        <img src="${pageContext.request.contextPath}/${fbindexlist.fimage}" alt="${fbindexlist.ftitle}" title="${fbindexlist.ftitle}" onclick="window.open('duanqi_licai_chanpin-moxOeTwTZaOw8TY79g.html')"/>
	                    </div>
                    
                    	<div class="mo2-indCartop-rig">
                        	<ul>
	                            <li class="mo2-indCar-tit"><a href="/Finances/topro" target="_blank" title="${fbindexlist.ftitle}">${fbindexlist.ftitle}</a></li>
	                            <li class="mo2-indCar-msg">
                                	<span>预期年化收益率：</span>
                                		<span class="huodongjiaxi">
                                			${fbindexlist.froe*100}%+${fbindexlist.fincrease*100}%								
                                		</span>
                                		<p style="margin-top:0;margin-left:60px;" class="jiaxishow"> 活动加息${fbindexlist.fincrease*100}%</p>
                            	</li>
                            	
	                            <li class="mo2-indCar-msg">
	                                <span>项目期限：</span>
	                                <span>${fbindexlist.rematime}个月</span>
	                            </li>
	                            
	                            <li class="mo2-indCar-msg">
	                                <span>项目余额：</span>
	                                <span>${fbindexlist.fmoney-fbindexlist.fendmoney}万</span>
	                            </li>
                        	</ul>
                    	</div>
                	</div>
                	
                    <div class="mo2-indCarmid">
                        <div class="mo2-carProc">
                            <span class="mo2-carProcess">
                                <span class="mo2-carProcess-tit">正在募集：</span>
                                <b>
                                    <i style="width:${fbindexlist.compnrate};"></i>
                                    <u style="left:${fbindexlist.compnrate};">
                                       ${fbindexlist.compnrate}
                                        <em></em>
                                    </u>
                                </b>
                            </span>
                        </div>
                    </div> 
					
					<div class="mo2-indCarbot">
                        <c:if test="${fbindexlist.fstatus==1}">
							<a href="/Finances/toproject?pid=${fbindexlist.fid}" target="_blank">立即投资</a> 
                         </c:if> 
                         <c:if test="${fbindexlist.fstatus==2}">
							<a href="javascript:void(0)" style="background-color:#ccc;" target="_blank">还款中</a>
                         </c:if> 
                         <c:if test="${fbindexlist.fstatus==7}">
							<a href="javascript:void(0)" style="background-color:#ccc;" target="_blank">已满标</a>
                         </c:if>                    
                    </div>
                </li>             
                </c:forEach>  
            
          </ul>
        </div>
    </div>
    <!-- 爱车贷end -->
    
    <!-- 爱房贷start -->
    <div class="mo2-indCar-con">
        <h2 class="mo2-indHouse-head">
            <i class="mo2-indProtop-sma tobig">投资理财 — 爱房贷</i>
            <a class="mo2-indHousehead-a1" href="/Finances/toinvestfang"></a>
            <span>核心区域房产，依托银行审核，100%实地考察评估</span>
            <a class="mo2-indHousehead-a2" href="/Finances/toinvestfang">查看全部</a>
        </h2>
        
        <div class="mo2-indHoulist-prev"></div>
        <div class="mo2-indHoulist-next"></div>
        <div class="mo2-indHoubox">
       	 		<c:if test="${fabiaofdas==null || fn:length(fabiaofdas) == 0}">
					<center>
						<img src="/Finances/statics/front/images/nodata.png">	
						<h1>没有数据</h1>
					</center>
				</c:if>
            <ul class="mo2-indHou">
            	<c:forEach items="${fabiaofdas}" var="afdfabiao">
                <li class="mo2-indCarlist mo2-indCarlist-ing">
					<div class="mo2-indCartop">
	                    <div class="mo2-indCartop-img">
	                        <img src="${pageContext.request.contextPath}/${afdfabiao.fimage}" alt="${afdfabiao.ftitle}" title="${afdfabiao.ftitle}" onclick="window.open('duanqi_licai_chanpin-moxOeTwTZaOw8TY79g.html')"/>
	                    </div>
                    
                    	<div class="mo2-indCartop-rig">
                        	<ul>
	                            <li class="mo2-indCar-tit"><a href="/Finances/topro" target="_blank" title="${afdfabiao.ftitle}">${afdfabiao.ftitle}</a></li>
	                            <li class="mo2-indCar-msg">
                                	<span>预期年化收益率：</span>
                                		<span class="huodongjiaxi">
                                			${afdfabiao.froe*100}%+${afdfabiao.fincrease*100}%								
                                		</span>
                                		<p style="margin-top:0;margin-left:60px;" class="jiaxishow"> 活动加息${afdfabiao.fincrease*100}%</p>
                            	</li>
                            	
	                            <li class="mo2-indCar-msg">
	                                <span>项目期限：</span>
	                                <span>${afdfabiao.rematime}个月</span>
	                            </li>
	                            
	                            <li class="mo2-indCar-msg">
	                                <span>项目余额：</span>
	                                <span>${afdfabiao.fmoney-afdfabiao.fendmoney}万</span>
	                            </li>
                        	</ul>
                    	</div>
                	</div>
                	
                    <div class="mo2-indCarmid">
                        <div class="mo2-carProc">
                            <span class="mo2-carProcess">
                                <span class="mo2-carProcess-tit">正在募集：</span>
                                <b>
                                    <i style="width:${afdfabiao.compnrate};"></i>
                                    <u style="left:${afdfabiao.compnrate};">
                                       ${afdfabiao.compnrate}
                                        <em></em>
                                    </u>
                                </b>
                            </span>
                        </div>
                    </div> 
					
					<div class="mo2-indCarbot">
                        <c:if test="${afdfabiao.fstatus==1}">
							<a href="/Finances/toproject?pid=${afdfabiao.fid}" target="_blank">立即投资</a> 
                         </c:if> 
                         <c:if test="${afdfabiao.fstatus==2}">
							<a href="javascript:void(0)" style="background-color:#ccc;" target="_blank">还款中</a>
                         </c:if>  
                          <c:if test="${afdfabiao.fstatus==7}">
							<a href="javascript:void(0)" style="background-color:#ccc;" target="_blank">已满标</a>
                         </c:if>                         
                    </div>
                </li>             
                </c:forEach>
          </ul>
        </div>
    </div>
    <!-- 爱房贷end -->
    
    <!-- 消费金融start -->
    <div class="mo2-indCar-con">
        <h2 class="mo2-indHouse-head">
            <i class="mo2-indProtop-sma tobig">投资理财 — 消费金融</i>
            <a class="mo2-indfinancehead-a1" href="/Finances/toinvestjj"></a>
            <span> 真实消费场景，依托大数据风控，实地考察评估</span>
            <a class="mo2-indHousehead-a2" href="/Finances/toinvestjj">查看全部</a>
        </h2>
        
        <div class="mo2-indFinlist-prev"></div>
        <div class="mo2-indFinlist-next"></div>
        <div class="mo2-indHoubox">
        		<c:if test="${fabiaoxfjr==null || fn:length(fabiaoxfjr) == 0}">
					<center>
						<img src="/Finances/statics/front/images/nodata.png">	
						<h1>没有数据</h1>
					</center>
				</c:if>
            <ul class="mo2-indFin">
            	<c:forEach items="${fabiaoxfjr}" var="xfjrlist">
                <li class="mo2-indFinlist mo2-indHoulist-ing">
                    <div class="mo2-indFintop">
                        <div class="mo2-indHoutop-img">
                            <img src="${pageContext.request.contextPath}/${xfjrlist.fimage}" title="${xfjrlist.ftitle}" onclick="window.open('/Finances/topro')"/>
                        </div>
                        
                        <div class="mo2-indFintop-rig">
                            <ul>
                                <li class="mo2-indHou-tit"><a href="/Finances/topro" target="_blank" title="${xfjrlist.ftitle}">${xfjrlist.ftitle}</a></li>
                                <li class="mo2-indHou-msg">
                                    <span>预期年化收益率：</span>
                                	<span class="huodongjiaxi">${xfjrlist.froe*100}%+${xfjrlist.fincrease*100}%</span>
                                    <p style="margin-top:0;margin-left:60px;" class="jiaxishow">活动加息${xfjrlist.fincrease*100}%	</p>
                                </li>
                                
                                <li class="mo2-indHou-msg">
                                    <span>项目期限：</span>
                                    <span>${xfjrlist.rematime}个月</span>
                                </li>
                                
                                <li class="mo2-indHou-msg">
                                    <span>项目余额：</span>
                                    <span>${xfjrlist.fmoney-xfjrlist.fendmoney}元</span>
                                </li>
                                
                            </ul>
                        </div>
                    </div>
                    
                    <div class="mo2-indHoumid">
                        <div class="mo2-carProc">
                            <span class="mo2-carProcess">
                                <span class="mo2-carProcess-tit">正在募集：</span>
                                <b>
                                    <i style="width: ${xfjrlist.compnrate};"></i>
                                    <u style="left: ${xfjrlist.compnrate};">
                                        ${xfjrlist.compnrate}
                                        <em></em>
                                    </u>
                                </b>
                            </span>
                        </div>
                    </div>                
                    
                    <div class="mo2-indHoubot">
                    	<c:if test="${xfjrlist.fstatus==1}">
							<a href="/Finances/toproject?pid=${xfjrlist.fid}" target="_blank">立即投资</a> 
                         </c:if> 
                         <c:if test="${xfjrlist.fstatus==2}">
                         	<a href="javascript:void(0)" style="background-color:#ccc;" target="_blank">还款中</a>
                         </c:if>
                         <c:if test="${xfjrlist.fstatus==7}">
                         	<a href="javascript:void(0)" style="background-color:#ccc;" target="_blank">已满标</a>
                         </c:if>
                	</div>
                </li>
                 </c:forEach>
          </ul>
        </div>
    </div>
    <!-- 消费金融end -->
    
    <div class="m2-indexStepbox">
        <div class="m2-indexSteplist-box">
            <ul class="m2-indexSteplist">
                <li class="m2-indexStep-sel">
                    <i></i>
                    <b></b>
                    <span>项目直投</span>
                </li><li class="m2-indexStep-unsel">
                <i></i>
                <span>债权转让</span>
            </li>
            </ul>
        </div>
        
        <div class="m2-indexStepimg-box">
            <ul class="m2-indexStepimg-list">
            </ul>
        </div>
    </div>

    <div class="m2-indexItembox">
        <div class="m2-indexItemlist-prev"></div>
        <div class="m2-indexItemlist-next"></div>
        <div class="m2-indexItembox-con">
            <ul class="m2-indexItemlist">
	            <c:if test="${fabiaoxmzt==null || fn:length(fabiaoxmzt) == 0}">
						<center>
							<img src="/Finances/statics/front/images/nodata.png">	
							<h1>没有数据</h1>
						</center>
				</c:if>
				<c:forEach items="${fabiaoxmzt}" var="xmztlist">
                <li class="m2-indexItem m2-indexItem-ing borrow-cate-5 borrow">
                    <h3 class="m2-indexItem-head"><a href="/Finances/toproject?pid=${xmztlist.fid}" target="_blank" title="${xmztlist.ftitle}">${xmztlist.ftitle}</a></h3>

                    <div class="m2-indItemdetials">
                        <h4><i></i>项目详情</h4>
                        <div class="m2-indItemdet" style="height: 99px;">
                            <span>“${xmztlist.ftitle}”${fn:substring(xmztlist.fsituation,0,38)}...</span>
                            <a href="/Finances/toproject?pid=${xmztlist.fid}" target="_blank">详情</a>
                        </div>
                    </div>
                    <div class="m2-indItemnum">
                        <div class="m2-indItemnum-year">
                            <p class="m2-indItemnum-big">
                               <span class="huodongjiaxi">${xmztlist.froe*100}%+${xmztlist.fincrease*100}%</span>
                              	<span style="color:white;margin-left:26px;" class="jiaxishow">
										活动加息${xmztlist.fincrease*100}%	
								</span>
							</p>
                            <p class="m2-indItemnum-nor">收益率</p>
                            <b></b>
                        </div>
                        <div class="m2-indItemnum-time">
                            <p class="m2-indItemnum-big">${xmztlist.rematime}天</p>
                            <p class="m2-indItemnum-nor">项目期限</p>
                        </div>
                    </div>
                    <div class="m2-indItemprogress">
                        <span class="m2-indItemprogress-tit">正在募集：</span>
                        <b><i style="width: ${xmztlist.compnrate};"></i></b>
                        <span class="m2-indItemprogress-num">${xmztlist.compnrate}</span>
                    </div>

                    <div class="m2-indItembtn">
                        <a class="m2-indItembtn-ing" href="/Finances/toproject?pid=${xmztlist.fid}" target="_blank">立即投资</a> </div>
                </li>    
                </c:forEach>                    
            </ul>
           
        </div>
    </div>

    <div class="m2-indexRankbox">
        </div>

    <div class="m2-indexNewstable">
        <div class="m2-indNewstab">
            <ul class="m2-indNewstablist">
                <li class="m2-indNewtab-sel">
                    <span>媒体报道</span><i></i>
                </li>
                <li class="m2-indNewtab-unsel">
                    <span>行业动态</span><i></i>
                </li>
                <li class="m2-indNewtab-unsel">
                    <span>网站公告</span><i></i>
                </li>
               
	                 <li class="m2-indNewtab-unsel">
	                  <span>项目公告</span><i></i> 
	                </li>
                
                <li class="m2-indNewtab-unsel">
                    <span>还款公告</span><i></i>
                </li>
                <li class="m2-indNewtab-unsel">
                    <span>爱钱帮动态</span><i></i>
                </li>
                <li class="m2-indNewtab-unsel">
                    <span>理财技巧</span><i></i>
                </li>
            </ul>
            <a class="m2-indNewstab-link" href="meitibaodao_aiqianbang_licaiwang.html" id="article-more" target="_blank">更多&raquo;</a>
        </div>
        <div class="indNewsmain-con">
            <ul class="indNewslist-pic newslist" id="newslist1">
                <li>
                    <div class="indNewslist-picLef"><img src="/Finances/statics/front/uploadData/ad/20151229133918775.png" alt="没有信息共享机制，网贷凭什么限额？"></div>
                    <div class="indNewslist-picRig">
                        <h4><a href="dashiji_show.html#16027.html" target='_blank' title="没有信息共享机制，网贷凭什么限额？">没有信息共享机制，网贷凭什么限额？</a></h4>
                        <div class="indNewslist-picMain">
                            <span>今天下午，银监会、工信部、公安部、网信办四部委联合发布《网络借贷信息中介机构业务活动管理暂行办法》。此前备受市场关注的借款设上限在发布会上被确认。&nbsp;银监会普惠金融部主任李均锋 ........ </span>
                            <a href="dashiji_show.html#16027.html"  target='_blank'>更多</a>
                        </div>
                    </div>
                </li><li>
                <div class="indNewslist-picLef"><img src="/Finances/statics/front/uploadData/ad/20151130140815865.png" alt="网贷管理办法明确13项禁止性行为"></div>
                <div class="indNewslist-picRig">
                    <h4><a href="dashiji_show.html#16026.html" target='_blank' title="网贷管理办法明确13项禁止性行为">网贷管理办法明确13项禁止性行为</a></h4>
                    <div class="indNewslist-picMain">
                        <span>&nbsp;24日，银监会会同工信部、公安部、国家互联网信息办公室等部门研究起草的《网络借贷信息中介机构业务活动管理暂行办法》（简称《办法》）发布。《办法》强调了从业机构作为信息中介的 ........ </span>
                        <a href="dashiji_show.html#16026.html"  target='_blank'>更多</a>
                    </div>
                </div>
            </li>            </ul>
            <ul class="indNewslist-psg newslist" style="display:none;" id="newslist2">
                <li><a href="dashiji_show.html#15857.html" target='_blank' class="m2-indNewslist-psgNew" title="资金存管是P2P投资理财未来发展的核心">1）资金存管是P2P投资理财未来发展的核心</a>
                    <b>new</b>                    <span class="m2-indNews-psgTim">2016-05-05</span></li><li><a href="dashiji_show.html#15854.html" target='_blank' class="m2-indNewslist-psgNew" title="监管政策落地预示着P2P理财平台将获得重生">2）监管政策落地预示着P2P理财平台将获得重生</a>
                <b>new</b>                    <span class="m2-indNews-psgTim">2016-05-05</span></li><li><a href="dashiji_show.html#15853.html" target='_blank' class="m2-indNewslist-psgNew" title="网络投资理财平台须有“担当”">3）网络投资理财平台须有“担当”</a>
                <b>new</b>                    <span class="m2-indNews-psgTim">2016-05-05</span></li><li><a href="dashiji_show.html#15852.html" target='_blank' class="m2-indNewslist-psgNew" title="监管来袭很有必要选对网络投资理财平台">4）监管来袭很有必要选对网络投资理财平台</a>
                <span class="m2-indNews-psgTim">2016-05-05</span></li><li><a href="dashiji_show.html#15851.html" target='_blank' class="m2-indNewslist-psgNew" title="从规范发展的角度看网络投资理财平台">5）从规范发展的角度看网络投资理财平台</a>
                <span class="m2-indNews-psgTim">2016-05-05</span></li>            </ul>
            <ul class="indNewslist-psg newslist" style="display:none;" id="newslist3">
               <c:forEach items="${listwz }" var="wz">
                <li><a href="${pageContext.request.contextPath}/font/selectType?nid=${wz.nid}" target='_blank' class="m2-indNewslist-psgNew" title="">${wz.ntitle }</a>
                	<b>new</b>  <span class="m2-indNews-psgTim">${ wz.ntime}</span>
                </li>
               </c:forEach>
                <!-- <li><a href="dashiji_show.html#16005.html" target='_blank' class="m2-indNewslist-psgNew" title="【平台公告】关于网络优化的公告">3）【平台公告】关于网络优化的公告</a>
                	<b>new</b>  <span class="m2-indNews-psgTim">2016-08-18</span></li>
                <li><a href="dashiji_show.html#15987.html" target='_blank' class="m2-indNewslist-psgNew" title="【平台公告】爱钱帮会员商城试运营公告">4）【平台公告】爱钱帮会员商城试运营公告</a>
                <span class="m2-indNews-psgTim">2016-08-05</span></li><li><a href="dashiji_show.html#15986.html" target='_blank' class="m2-indNewslist-psgNew" title="【平台公告】爱钱帮7月运营报告">5）【平台公告】爱钱帮7月运营报告</a>
                <span class="m2-indNews-psgTim">2016-08-04</span></li>  -->           
            </ul>
            <ul class="indNewslist-psg newslist" style="display:none;" id="newslist4">
            	<c:forEach items="${listxm }" var="txm">
                <li><a href="${pageContext.request.contextPath}/font/selectType?nid=${txm.nid}" target='_blank' class="m2-indNewslist-psgNew" title="【项目公告】易安家长租公寓项目温馨继续">${txm.ntitle }</a>
                    <b>new</b>                    <span class="m2-indNews-psgTim">${txm.ntime }</span></li>
                    </c:forEach>
                    
                <!-- <li><a href="dashiji_show.html#15599.html" target='_blank' class="m2-indNewslist-psgNew" title="【项目公告】娱乐帮-电影《你好，疯子！》投资项目">2）【项目公告】娱乐帮-电影《你好，疯子！》投资项目</a>
                <b>new</b>                    <span class="m2-indNews-psgTim">2016-02-20</span></li><li><a href="dashiji_show.html#15572.html" target='_blank' class="m2-indNewslist-psgNew" title="【项目公告】“世果汇”—越南青芒果直采【投资满额送青…">3）【项目公告】“世果汇”—越南青芒果直采【投资满额送青…</a>
                <b>new</b>                    <span class="m2-indNews-psgTim">2016-02-01</span></li>  -->           </ul>
            <ul class="indNewslist-psg newslist" style="display:none;" id="newslist5">
               <c:forEach items="${listhk }" var="hk">
                <li><a href="${pageContext.request.contextPath}/font/selectType?nid=${hk.nid}" target='_blank' class="m2-indNewslist-psgNew" title="">${hk.ntitle }</a>
                    <b>new</b>                    <span class="m2-indNews-psgTim">${hk.ntime }</span>
                </li>
               </c:forEach>
                <!-- <li><a href="dashiji_show.html#16025.html" target='_blank' class="m2-indNewslist-psgNew" title="【还款公告】2016年9月1日爱钱帮投资理财项目还本…">2）【还款公告】2016年9月1日爱钱帮投资理财项目还本…</a>
                <b>new</b>                    <span class="m2-indNews-psgTim">2016-09-01</span></li><li><a href="dashiji_show.html#16024.html" target='_blank' class="m2-indNewslist-psgNew" title="【还款公告】2016年8月31日爱钱帮投资理财项目还…">3）【还款公告】2016年8月31日爱钱帮投资理财项目还…</a>
                <b>new</b>                    <span class="m2-indNews-psgTim">2016-08-31</span></li><li><a href="dashiji_show.html#16022.html" target='_blank' class="m2-indNewslist-psgNew" title="【还款公告】2016年8月30日爱钱帮投资理财项目还…">4）【还款公告】2016年8月30日爱钱帮投资理财项目还…</a>
                <span class="m2-indNews-psgTim">2016-08-30</span></li><li><a href="dashiji_show.html#16019.html" target='_blank' class="m2-indNewslist-psgNew" title="【还款公告】2016年8月29日爱钱帮投资理财项目还…">5）【还款公告】2016年8月29日爱钱帮投资理财项目还…</a>
                <span class="m2-indNews-psgTim">2016-08-29</span></li>      -->       </ul>
            <ul class="indNewslist-psg newslist" style="display:none;" id="newslist6">
                <li><a href="dashiji_show.html#15532.html" target='_blank' class="m2-indNewslist-psgNew" title="爱钱帮&amp;i烘焙之爱上CUP CAKE">1）爱钱帮&amp;i烘焙之爱上CUP CAKE</a>
                    <b>new</b>                    <span class="m2-indNews-psgTim">2016-01-18</span></li><li><a href="dashiji_show.html#15470.html" target='_blank' class="m2-indNewslist-psgNew" title="爱钱帮志愿者进社区普及防范非法集资知识">2）爱钱帮志愿者进社区普及防范非法集资知识</a>
                <b>new</b>                    <span class="m2-indNews-psgTim">2015-12-10</span></li><li><a href="dashiji_show.html#15421.html" target='_blank' class="m2-indNewslist-psgNew" title="爱钱帮联姻南昌银行  开创消费金融新体验">3）爱钱帮联姻南昌银行  开创消费金融新体验</a>
                <b>new</b>                    <span class="m2-indNews-psgTim">2015-10-29</span></li><li><a href="dashiji_show.html#15354.html" target='_blank' class="m2-indNewslist-psgNew" title="爱钱帮单月破亿 支持垂直马拉松">4）爱钱帮单月破亿 支持垂直马拉松</a>
                <span class="m2-indNews-psgTim">2015-09-07</span></li><li><a href="dashiji_show.html#15346.html" target='_blank' class="m2-indNewslist-psgNew" title="爱钱帮支持高等教育 人民大学MBA开学典礼隆重举行">5）爱钱帮支持高等教育 人民大学MBA开学典礼隆重举行</a>
                <span class="m2-indNews-psgTim">2015-08-31</span></li>            </ul>
            <ul class="indNewslist-psg newslist" style="display:none;" id="newslist7">
                <li><a href="dashiji_show.html#15867.html" target='_blank' class="m2-indNewslist-psgNew" title="逐渐规范的时代，要找寻优质P2P投资理财平台">1）逐渐规范的时代，要找寻优质P2P投资理财平台</a>
                    <b>new</b>                    <span class="m2-indNews-psgTim">2016-05-09</span></li><li><a href="dashiji_show.html#15866.html" target='_blank' class="m2-indNewslist-psgNew" title="P2P投资理财，这五种心态绝对不能有">2）P2P投资理财，这五种心态绝对不能有</a>
                <b>new</b>                    <span class="m2-indNews-psgTim">2016-05-09</span></li><li><a href="dashiji_show.html#15865.html" target='_blank' class="m2-indNewslist-psgNew" title="如果还有梦，就从P2P投资理财开始吧">3）如果还有梦，就从P2P投资理财开始吧</a>
                <b>new</b>                    <span class="m2-indNews-psgTim">2016-05-09</span></li><li><a href="dashiji_show.html#15864.html" target='_blank' class="m2-indNewslist-psgNew" title="要学会为P2P投资理财制定计划">4）要学会为P2P投资理财制定计划</a>
                <span class="m2-indNews-psgTim">2016-05-09</span></li><li><a href="dashiji_show.html#15863.html" target='_blank' class="m2-indNewslist-psgNew" title="优秀的P2P投资理财者如何选择标的">5）优秀的P2P投资理财者如何选择标的</a>
                <span class="m2-indNews-psgTim">2016-05-09</span></li>            </ul>
        </div>
    </div>

    <div class="m2-indexVodbox">
        <h2 class="m2-indVodhead"><i></i><span>精彩尽在爱钱帮</span><a href="meitibaodao_aiqianbang_licaiwang.html" target="_blank">查看全部</a></h2>
        <div class="m2-indexVod-border">
            <div class="m2-indexVod-con">
				
                <div class="m2-indexVodbtn-prev"></div>
                <div class="m2-indexVodbtn-next"></div>
                <div class="m2-indVodmain">
                <c:if test="${fn:length(videosp)==0}">
					<center>
						<h1>没有数据</h1>
						<img src="/Finances/statics/front/images/nodata.png">	
					</center>
				</c:if>
                    <ul class="m2-indVodlist">
                    	<c:forEach items="${videosp}" var="listvideos">
                        <li videvalue='${pageContext.request.contextPath}${listvideos.vvurl}'>
                            <div class="m2-indVodlist-bg"></div>
                            <div class="m2-indVodlist-bot">${listvideos.vname}</div>
                            <img src="${pageContext.request.contextPath}${listvideos.vimgurl}" alt="${listvideos.vname}">
                            <i></i>
                        </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="m2-indexCooperation">
        <div class="m2-indCooorg">
            <h2>实力合作机构
                <!--<a class="m2-indCoomore" href="#">更多&raquo;</a>-->
            </h2>
            <ul>
            	<c:if test="${fn:length(cooorgsp)==0}">
					<center>
						<h1>没有数据</h1>
						<img src="/Finances/statics/front/images/nodata.png">	
					</center>
				</c:if>
            	<c:forEach items="${cooorgsp}" var="cooorging">
	                <li><a href="${cooorging.colinkurl}" target="_blank">
	                    <img src="/Finances${cooorging.coimgurl}" width="100" hight="50" alt=""></a>
	                </li>
                </c:forEach>
          </ul>
        </div>
        
        <div class="m2-indCootip">
            <h2 style="border-bottom-width: 0px;"><!-- 友情提示<a class="m2-indCoomore" href="#">更多&raquo;</a> --></h2>
            <div class="m2-indCootip-box">
                <div class="m2-indCootip-lef">
                    <!--<span>友情链接：</span>-->
                </div>
                <div class="m2-indCootip-rig">
                </div>
            </div>
        </div>
    </div>
</div>
	

	
<form action="/cupdata-transfer-index" style="display: none;" id="transfer_form">
    <input name="tid" id="form_transfer_id">
    <input name="num" id="form_transfer_num">
    <input type="hidden" name="__hash__" value="6666cd76f96956469e7be39d750cc7d9_ee70776ff5a128756690de65b1bc04be" /></form>


 
<script type="text/javascript">
    //codeShow();
    //显示验证码
    function codeShow(){
        $('.mo2-indLog-code').show();
    }
</script>
<!--[if lt IE 9]>
<script type="text/javascript">
    $(function(){
        $('input').each(function(){
            if($(this).hasClass('m2-ind-banPsw')){
                $(this).parents('.mo2-indLogitem').append('<span class="m2-ind-place" style="display:inline-block;position:absolute;color:#999;width:195px;height:40px;top:0;left:35px;line-height:40px;font-size:14px;z-index:5;padding-left:10px;"></span>');
                $('#pass').siblings('.m2-ind-place').html('6-15位数字与字母组合的密码');
                $('#pass_word').siblings('.m2-ind-place').html('输入登录密码');

                $(this).siblings('.m2-ind-place').click(function(){
                    $(this).hide();
                    $(this).siblings('.m2-ind-banPsw').focus();
                })
                $(this).focus(function(){
                    //获取焦点隐藏
                    if($(this).val()==''){
                        $(this).siblings('.m2-ind-place').hide();
                    }

                });
                $(this).blur(function(){
                    //失去焦点显示
                    if($(this).val()==''){
                        $(this).siblings('.m2-ind-place').show();
                    }

                });
            }else{
                if($(this).attr('placeholder')!=undefined && $(this).attr('PlaceHolder')!=''){
                    var curHol = $(this).attr('placeholder');
                    //初始值设置成placeholder
                    $(this).val(curHol);
                    $(this).css('color',"#999");


                    //获得焦点值为空
                    $(this).focus(function(){
                        if($(this).attr('PlaceHolder')!=''){
                            $(this).val('');
                            $(this).css('color',"#333");
                        }

                    });

                    //值为空是失去焦点，值设置成placeholder
                    $(this).blur(function(){
                        if ($(this).val()=='') {
                            $(this).val(curHol);
                            $(this).css('color',"#999");
                        }else if ($(this).val()!='' && $(this).val()!=curHol) {
                            $(this).css('color',"#333");
                        }
                    });

                    //键盘事件
                    $(this).keyup(function(){
                        if ($(this).val()!='') {
                            $(this).css('color',"#333");
                        }
                    });
                }
            }
        })
    })
</script>
<![endif]-->
	<!-- 足部start -->
    <jsp:include page="include/floot.jsp"></jsp:include>
    <!-- 足部end -->
			
		<!-- 现在导入index所有封装的js方法 -->
		<script type="text/javascript" src="/Finances/statics/front/js/indexall.js"></script>	
		<script type="text/javascript" src="/Finances/statics/front/js/indexlogreg.js"></script>	
	</body>
</html>