<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
	    <title>${thisfb.ftitle}</title>
	    <!--[if lt IE 9]>
	    <script src="statics/newcommon/js/html5shiv.js"></script>
	    <![endif]-->
	    <link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/6.png">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-main.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
	    <script type="text/javascript" src="/Finances/statics/front/statics/home/js/jquery.min.js"></script>
	     
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
		<!-- 弹出层美化 -->
		
		<script type="text/javascript" src="/Finances/statics/front/js/ui.js" ></script>
		<link rel="stylesheet"  href="/Finances/statics/front/css/style.css" ></link>
		
		<link rel="stylesheet" href="/Finances/statics/front/statics/home/css/newPage.css" />
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-main.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-loginModify.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/userCenter.css">
	  
	  	<!-- 支付密码 -->
		<script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/js/payPwd.js"></script> 
	
	  	
	  	<!-- 图形验证码 -->
		<script src="/Finances/statics/front/js/gVerify.js"></script>
	  	          
	    <style>
	        #msgbtn2_alert{
	            display: inline-block;
	            width:18px;
	            height:18px;
	            border-radius:50%;
	            background-color:#c9c9c9;
	            color:white;
	            line-height:18px;
	            position:relative;
	        }
	        #msgbtn2_alert_content {
	            position:absolute;
	            top:24px;
	            right:-17px;
	            width:400px;
	            height:23px;
	            background-image:url("/Finances/statics/front/statics/home/images/tankuang_lan.png");
	            padding-top:24px;
	            color:white;
	            display:none;
	        }
	    </style>
		<style type="text/css">
			.box{width: 100%;margin:0rem auto;display: -webkit-box;display: -webkit-flex;display: -ms-flexbox;display: flex;-webkit-flex-wrap: wrap;-ms-flex-wrap: wrap;flex-wrap: wrap;}
			.box-items {-ms-flex-align: center;-webkit-align-items: center;-webkit-box-align: center;align-items: center;}
			.flex-1{display: block;-webkit-box-flex: 1;-webkit-flex: 1;-ms-flex: 1;flex: 1;width: 0;-webkit-flex-basis: 0;-ms-flex-preferred-size: 0;flex-basis: 0;}
			.pwd-control {text-align: center; width: 200px;}
			.pwd-control .item {margin: 0 0.1rem;position: relative;}
			.pwd-control .item.circle:after {content: "";width: 8px;height: 8px;background: #000;border-radius: 50%;position: absolute;top: 50%;left: 50%;margin-top: -4px;margin-left: -4px;}
			.pwd-control .normal input {color: #000;}
			.pwd-control input {display: block;width: inherit;border-radius: 3px;text-align: center;border: 1px solid #c79f62;width: 100%;color: #fff;line-height: 35px}
			.pwd-control input:focus {box-shadow: 0px 0px 20px #c79f62;}
			.pwd-control .box {padding: 0rem;}
		</style>
		
	</head>
	<body>
	
	
	
		<div class="m2-tranBg"></div>
	    <!-- 右侧边栏start -->
	    <jsp:include page="include/sidebar.jsp"></jsp:include>
	    <!-- 右侧边栏end -->
	    
	    <!-- 头部start -->
	    	<jsp:include page="include/head.jsp"></jsp:include>
	    <!-- 头部end -->
	    
	    
	
	    
	   	<script type="text/javascript" src="/Finances/statics/front/statics/home2/js/m2-front.js"></script>
    	<script type="text/javascript" src="/Finances/statics/front/statics/home2/js/jquery.knob.js"></script>
		
		<body style="background-color:#fff;">
		<!--  交易密码弹出框 -->
		<div class="m2-truPop" id="moneytru" style="display: none;">
		    <div class="m2-turPop-close"></div>
		    <div class="m2-truPop-radius">
		        <div class="m2-regist-inputarea m2-regist-sucess">
		        <center>
		        	<font style="color:#000000;font-size: 80px;">￥<span id="inputmoney">20000.00</span></font>
			            <div class="modal-body">
			           	请输入支付密码：
					    <div class="pwd-control" id="payPwd">
					        <div class="box">
					         	
					            <div class="flex-1 item"><input maxlength="1" type="tel"></div>
					            <div class="flex-1 item"><input maxlength="1" type="tel"></div>
					            <div class="flex-1 item"><input maxlength="1" type="tel"></div>
					            <div class="flex-1 item"><input maxlength="1" type="tel"></div>
					            <div class="flex-1 item"><input maxlength="1" type="tel"></div>
					            <div class="flex-1 item"><input maxlength="1" type="tel"></div>
					        </div>
					        <input type="hidden" name="uidealpwd" id="uidealpwd">
		    			</div>
					</div>
				</center>		            
		        </div>
		    </div>
		</div>
		<script type="text/javascript">
		    $(function () {
		        $('.m2-turPop-close').click(function () {
		            $('.m2-tranBg,.m2-truPop').hide();
		        });
		    })
		</script>
		<!-- 注册托管弹窗end -->
		<div class="m2-userCentercommon-confirm" style="top:30%;padding-top:10px;display:none"  id='dialog-info-div'>
		    <span class="m2-userCentercommon-confirmClose"></span>
		    <div style="text-align: center;padding: 20px 0 20px 0;">
		        <h3 id='dialog-info-text'></h3>
		    </div>
		    <p class="m2-userCommon-confirmBtn">
		        <a class="m2-user-confirmBtn">确定</a>
		    </p>
		</div>
		<div class="m2-detConfirm">
    <b class="m2-detConfirm-close"></b>
    <div class="m2-detConfirm-head" id="msgtitle">

    </div>
    <div class="m2-detConfirm-main" id="msgcontent">

    </div>
    
    
    <!-- 支付详情框 -->
    <div class="m2-detConfirm-btn" id="msgbtn2" style="display:none;width:350px;">
        <a href="javascript:void(0)" id="qrtz" class="m2-detConfirmbtn-confirm" style="float:right;margin-right:50px;">确认投资</a>
        <a href="javascript:void(0)" class="m2-detConfirmbtn-cancle" style="float:left;margin-left:62px;">取消</a>
        <div style="clear:both;"></div>
        <div style="margin-top: 10px;">
            <img alt="爱钱帮" src="/Finances/statics/front/statics/home/images/duihao.png" width="12px">
            <span>投资需前往徽商银行交易系统验证交易密码（也用于提现）</span>
            <div id="msgbtn2_alert">
                <span>?</span>
                <div id="msgbtn2_alert_content">
                    交易密码适用于投资验证及提现验证，可在账户设置中进行修改或找回
                </div>
            </div>
        </div>
    </div>
    
    
    <div class="m2-detConfirm-btn" id="msgbtn3" style="display:none">
        <!--            <a href="#?chargereturnurl=/invest-borrownew-id-moxOeTwTZaOw8TY79g.shtml" target="_blank" class="m2-detConfirmbtn-confirm" style="float:right;">立即支付</a>-->
        <a href="javascript:void(0)" onclick="rechargeInvest();" class="m2-detConfirmbtn-confirm" style="float:right;">立即支付</a>
        <a href="javascript:void(0)" class="m2-detConfirmbtn-cancle" style="float:left;">取消</a>
    </div>
		<div class="m2-detConfirm-btn" id="msgbtn1" style="display:none">
		 <a href="javascript:void(0)" class="m2-detConfirmbtn-center">确认</a>
		</div>
		   	<div class="m2-detConfirm-btn" id="msgbtn4" style="display:none">
		        <a href="javascript:void(0)" class="m2-detConfirmbtn-cancle" style="float:left;">取消</a>
		        <a href="#?isXl=1" class="m2-detConfirmbtn-confirm"  style="float:right;">设置交易密码</a>
		    </div>
		</div>
		
<!-- 奖励弹出框 -->
<div class="m2-detHide" style="display:none;">
    <i class="m2-detHide-close"></i>
    <h2 style="text-align: center;" class="m2-detHidehead-tit">使用奖励<span></span></h2>
    <div class="m2-detHide-selBox">
        <ul>
        <!--  
            <li class="m2-detHidesel-list m2-detHidesel-listPri">
                <i class="m2-detHideicon-pri"></i>
                <span class="m2-detHidecheck-unsel"><b class="m2-detBtnhide-pri"></b>奖励金</span>
            </li>
     	 -->
            <li class="m2-detHidesel-list m2-detHidesel-listRed">
                <i class="m2-detHideicon-red"></i>
                <span class="m2-detHidecheck-unsel"><b class="m2-detBtnhide-red"></b>红&nbsp;&nbsp;&nbsp;包</span>
            </li>
            <li style="float:right;" class="m2-detHidesel-list m2-detHidesel-listAdd" >
                <i class="m2-detHideicon-add"></i>
                <span class="m2-detHidecheck-unsel"><b class="m2-detBtnhide-add"></b>加息券</span>
            </li>
        </ul>
    </div>
    <!--  
	    <div class="m2-detHidecon-pri" style="display:none;">
	    
	        <div class="m2-detHidecon-link">
	        </div>
	        <div class="m2-detHidemain-pri">
	            <p class="m2-detHide-nor">奖励金金额：<span>0</span><i>元</i></p>
	            <div class="m2-detHidepri-ipt">
	                <input placeholder="0.00" type="text" id="rewardmoney">
	                <span>全用</span>
	                <b id="rewardmoneyerror"></b>
	            </div>
	            <div class="m2-detHide-submit m2-detSub-pri"><a style="margin:25px 0 0 80px" href="javascript:void(0)">确定</a></div>
	        </div>
	    </div>
	-->
    <div class="m2-detHidecon-red"  style="display:none;">
        <div class="m2-detHidecon-link">
            <!--<a href="#">如何获取&raquo;</a>-->
        </div>
        <div class="m2-detHidemain-red">
        	<c:if test="${redlist==null || fn:length(redlist) == 0}">
				<center>
					<img src="/Finances/statics/front/images/nodata.png" style="width: 200px;height: 150px;">	
				</center>
			</c:if>
            <p class="m2-detHide-nor">已选择红包金额：<span id="reward_red">0元</span></p>
            <ul>
            	
	            <!-- 红包列出框 -->
	           <c:forEach items="${redlist}" var="reds">
	           <!-- 
	           		data-condition :使用条件(0元起)
	           		data-rewardtype :使用条件
	           		data-rewardval :钱数
	            -->
		             <li class="m2-detHidered-unsel reward-item" style="display: none" data-condition="${reds.rcondition}" data-rewardid="${reds.rid}" data-rewardtype="1" data-rewardval="${reds.rmoney}">
		                 <div class="m2-detHidered-num"><span>${reds.rmoney}</span>元红包</div>
		                 <div class="m2-detHidered-tim">${reds.expireday}天后过期</div>
		                 <div class="mo2-detHide-icon"><i></i></div>
		             </li>
            	</c:forEach>
	          </ul>
            <div class="m2-detHide-pagebox">
                <span class="m2-detHidered-cancle">取消选择</span>
                <!--<div class="m2-detHide-page"><span>上一页</span><span>下一页</span></div>-->
            </div>
            <div class="m2-detHide-submit m2-detSub-red"><a href="javascript:void(0)">确定</a></div>
        </div>
    </div>

    <div class="m2-detHidecon-add" style="display:none;" >
        <div class="m2-detHidecon-link">
            <!--<a href="#">如何获取&raquo;</a>-->
        </div>
        <div class="m2-detHidemain-add">
       		 <c:if test="${voulist==null || fn:length(voulist) == 0}">
				<center>
					<img src="/Finances/statics/front/images/nodata.png" style="width: 200px;height: 150px;">	
				</center>
			</c:if>
            <p class="m2-detHide-nor">代金券券带来额外收益：<span id="reward_coupon">0元</span></p>
            <ul>
	                <c:forEach items="${voulist}" var="vos">
	           <!-- 
	           		data-condition :使用条件(0元起)
	           		data-rewardtype :使用条件
	           		data-rewardval :钱数
	            -->
		             <li class="m2-detHidered-unsel reward-item" style="display: none" data-condition="${vos.ucondition}" data-rewardid="${vos.uvid}" data-rewardtype="2" data-rewardval="${vos.uvmoney}">
		                 <div class="m2-detHidered-num"><span>${vos.uvmoney}</span>元代金券</div>
		                 <div class="m2-detHidered-tim">${vos.uvday}天后过期</div>
		                 <div class="mo2-detHide-icon"><i></i></div>
		             </li>
            	</c:forEach>
	             
            </ul>
            <div class="m2-detHide-pagebox">
                <span class="m2-detHidered-cancle">取消选择</span>
                <!--<div class="m2-detHide-page"><span>上一页</span><span>下一页</span></div>-->
            </div>
       		 </div>
		        <div class="m2-detHide-submit m2-detSub-add"><a href="javascript:void(0)">确定</a></div>
		    </div>
		</div>
		
	
	
		<div class="m2-parHidebox" style="margin-bottom:50px;">
		    <b class="m2-parHideclose"></b>
		    <h2></h2>
		    <div class="m2-parHideimg">
		        <img src="" alt="">
		        <div class="m2-parHideimg-lef"></div>
		        <div class="m2-parHideimg-rig"></div>
		    </div>
		    <div class="m2-parHidefoot">
		        <span class="m2-parPagecurrent"></span>&frasl;<span class="m2-parPagetotal"></span>
		        <i class="m2-parPageprev"></i><i class="m2-parPagenext"></i>
		    </div>
		</div>
		<!-- 投资计算器 -->
		<div class="m2-tranHide">
		    <i class="m2-tranHide-close"></i>
		    <h2 class="m2-tranHide-head">投资收益计算器</h2>
		    <div class="m2-tranHide-box">
		        <div class="m2-tranHidetit">
		            <span>所选项目：</span>
		            【${thisfb.fpart}】${thisfb.ftitle}            </div>
		        <div class="m2-tranHiderem">
		            <span>徽商账户余额：</span>
		            <span style="color:#ea731e;">${sessionScope.user.ubalance}元</span>
		           
		            <b class='invest_all'>全用</b>
		        </div>
		        <div class="m2-tranHidenum">
		            <span>投资金额：</span>
		            <input placeholder="请输入金额" type="text" id='invest_money1'>
		            <span class="m2-tranHidenum-btn">确认返回</span>
		            <b>投资金额应为100的整数倍</b>
		        </div>
		    </div>
		    <div class="m2-tranHide-info">
		        <div class="m2-tranInfo-sum">投资到期可获得总收益：<span id='interesttotal' data-totalinterest='0.64109589041096'>0元</span></div>
		        <div class="m2-tranInfo-num">起投金额：<span>100元</span>投资金额：<span id='invest_money2'>0元</span></div>
		    </div>
		    <div class="m2-tranHidelist">
		        <ul>
		            <li>
		                <div class="m2-tranHide-det m2-tranHide-day">计息天数:<span>26天</span></div>
		                <div class="m2-tranHide-det m2-tranHide-tim">支付时间:<span>2016-10-01</span></div>
		                <div class="m2-tranHide-det m2-tranHide-num" data-interest="0.64109589041096" data-days="26">支付利息:<span>0元</span></div>
		            </li>            </ul>
		    </div>
		    <div class="m2-tranHidetoggle m2-tranMore">
		        <span>显示更多&raquo;</span>
		    </div>
		    <p class="m2-transHide-bottom">偿还本金: <span style="color:#ea731e;" id="invest_money3">0元</span></p>
		</div>
		
		<div class="m2-carBanner"></div>
		<div class="m2-investBread">
		    <div class="m2-investBreadbox">
		        <i class="m2-investBreadicon"></i>
		        <span class="m2-invBre-fat"><a href="/Finances/toindex">首页&nbsp;&gt;</a></span>
		        <span class="m2-invBre-fat"><a href="/Finances/toinvestzt">我要投资&nbsp;&gt;</a></span>
		        <span class="m2-invBre-fat" >项目详情</span>
		    </div>
		</div>
		<div class="m2-detialsCon">
		 <div class="m2-detialsItembox">
	        <h2>
	            <span class="m2-detialsItembox-lef">【${thisfb.fpart}】${thisfb.ftitle}</span>
	            <span class="m2-detialsItembox-rig">项目编号：${thisfb.fcode}</span>
	        </h2>
	    </div>
	    <div class="m2-detialsItem">
	        <div class="m2-detItemlef">
	            <div class="m2-detItemlef-img">
	                <i class="m2-detItemlef-newIcon"></i>              
	                <img  src="${pageContext.request.contextPath}${thisfb.fimage}" alt="${thisfb.ftitle}" width='256' height="200">
	
	                <p class="m2-detItemlef-imgSha" style="margin-top: 0">
	                    <script type="text/javascript" src="http://v3.jiathis.com/code_mini/jia.js" charset="utf-8"></script>
	                <div class="jiathis_style" style='margin-top: 10px;margin-left: 50px;min-height:16px;'>
	                    <span class="jiathis_txt" style='color:#898989;font-size: 14px;'>分享到：</span>
	                    <a class="jiathis_button_qzone" style="min-height:16px;"></a>
	                    <a class="jiathis_button_tsina" style="min-height:16px;"></a>
	                    <a class="jiathis_button_tqq" style="min-height:16px;"></a>
	                    <a class="jiathis_button_weixin" style="min-height:16px;"></a>
	                    <a href="#"  style="min-height:16px;" class="jiathis jiathis_txt jiathis_separator jtico jtico_jiathis" target="_blank" style='color:#898989;font-size: 14px;'>更多</a>
	                </div>
	                <div style="padding-top: 24px;margin-left: 38px;"><span style='color:#898989;font-size: 12px;'>邀请好友投资，双方有奖!</span>
	                    <span id="d_clip_button" class="button" style="color:#ba3635;font-size:12px;margin-right: 30px;">复制推广链接</span>
	                    <!-- 推广URL -->
	                    <input type="hidden" id="tgid" value="127.0.0.1:8080/Finances/topro">
	                    <span id="d_clip_container" style="position:relative;background:#fff000;height:20px;font-size:12px;right:0px"></span></div>
	                </p>
	                 <script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/zer/ZeroClipboard_mo.js"></script>
	
	            </div>
	
	            <div class="m2-detItemlef-con">
	                <ul>
	                    <li style='width: 160px;padding-left: 15px;'>
	                        <span class="m2-detItempsg-big huodongjiaxi" style="white-space: nowrap;">
	                            	${thisfb.froe*100}%+${thisfb.fincrease*100}% 	
	                              	<p style="margin-top:0;margin-left:-2px;" class="jiaxishow">
	                                       		 活动加息${thisfb.fincrease*100}% 																		
	                                   </p>
	                        </span>
	                        <span class="m2-detItempsg-nor">预期年化收益率</span>
	                        <i class="m2-detItemlef-line"></i>
	                    </li>
	                    <li style="width:205px;">
	                        <span class="m2-detItempsg-big">${thisfb.rematime}天
	                                </span>
	                        <span class="m2-detItempsg-nor">期限</span>
	                    </li>
	                    <li style='width: 160px;padding-left: 15px;'>
	                        <span class="m2-detItempsg-big">${thisfb.fendmoney div 10000 } 万</span>
	                        <span class="m2-detItempsg-nor">产品金额</span>
	                    </li>
	                    <li>
	                        <span class="m2-detItempsg-sma">还款日期：${thisfb.fhuanstat}</span>
	                    </li>
	                </ul>
	                <div class="m2-detPro">
	                    <div class="m2-derProgress">
	                        <span>                                正在募集
	                                    ：</span>
	                        <b><i style="width: ${thisfb.compnrate};"></i></b>
	                        <span>${thisfb.compnrate}</span>
	                    </div>
	                    <div class="m2-detProdet">
	                        <span class="m2-detProdet-lef">投资万元预期收益：<span>${thisfb.yield}元</span></span>
	                        <a href="/Finances/downLoadFile?filePath=${thisfb.fcontract}" class="m2-detProdet-rig" target='_blank'>项目合同范本<i></i></a>
	                    </div>
	                </div>
	                <div class="m2-detItemlef-bot">
	                   	 <a href="/Finances/downLoadFile?filePath=${thisfb.fsecurity}" class="m2-detIetmbot2" style='margin-right: 24px;'><i></i>担保措施</a>     
	                   	 <a href="/Finances/downLoadFile?filePath=${thisfb.frepayment}" class="m2-detIetmbot3" style='margin-right: 0px;' > <i></i>还款方式</a>
	                  </div>
	            </div>
	        </div>
	        <div class="m2-detItemrig"  style="display:none;">
	            <div class="m2-detRig-unlogin m2-detRig-select">
	              <c:if test="${sessionScope.user.uid != null}">
	                <div class="m2-detRiglogin">
	                    <p class="mo2-proNewdet">可投金额：<span id='left_money'>${ thisfb.fmoney-thisfb.fendmoney }                             元 </span></p>
	                    <p>徽商账户余额：${sessionScope.user.ubalance}元<a style="color: #09c;float: right;margin-right: 30px;" href='#?chargereturnurl=/invest-borrownew-id-moxOeTwTZaOw8TY79g.shtml' target="_blank">充值</a>
	                    </p>
	                </div>
	             </c:if>
	             <c:if test="${sessionScope.user.uid == null}">
	             	<div class="m2-indTralog">
                        <p>账户余额：<a href="${pageContext.request.contextPath }/tologin" target="_blank">登录</a>后可查看</p>
                    </div>
	             </c:if>
	             
	             <c:if test="${sessionScope.user.uid != null}"> 
	                <div class="m2-detRigipt">
	                    <input placeholder="${thisfb.fminmoney}元起投" type="text" id="invest_money"> 
	                    <span  class='invest_all'>全投</span>
	                </div>
	             </c:if>
	              <c:if test="${sessionScope.user.uid == null}">
	              	<div class="m2-detRigipt">
	                    <input placeholder="请先登入" type="text"  readonly="true"> 
	                </div>
	              </c:if>
	                
	                <div class="m2-detRigjust">
	                    <b class="m2-detRigjust-btn"></b>
	                    <!--<b class="m2-detRigjust-lef" style="color: #f5944f;cursor: pointer;">使用奖励</b>-->
	
	                    <b class="m2-detRigjust-btn"></b>
	                    <!--<b class="m2-detRigjust-lef" id='m2-detRigjust-lef' style="color: #f5944f;cursor: pointer;">使用奖励</b>-->
	
	                    <b class="m2-detRigjust-btn"></b><em id='reward_info'></em>
	                    <span class="m2-detJust-tit reward-select" id='reward_tip'><i></i>未使用任何奖励</span>
	                </div>
	                <p class="m2-detRigjust-ben">本次收益：<span id="interest_money">0元</span><span>+</span><span id="reward_money">0元</span></p>
	            </div>
	
	            <div class="m2-detRigjust-linkBtn">
				 <c:if test="${sessionScope.user.uid != null}">
	                <a id="invest_now" href="javascript:void(0)">立即投资</a>
	                <i id='interestcal' class='m2-detRigjust-linkBtning'></i>
	             </c:if>
	              <c:if test="${sessionScope.user.uid == null}">
	                 <a style="background-color: #ccc;" href="javascript:void(0)">立即投资</a>
	             	 <i onclick="showMsg('您还没有登录，请先登录！');" class='m2-detRigjust-linkBtning'></i>
	              </c:if>  
	              
	                
	
	
	            </div>
	            <p class="m2-detRigjust-coin">投资可得钱帮币：<span id="qb_coin">0个</span>
	                <!--            -->
	                <!--                -->
	                <!--                    <i class="m2-detCode">-->
	                <!--                        邀请码-->
	                <!--                    </i>-->
	                <!---->
	                <!--                -->
	            </p>
	            <div class="m2-detCodehide" style="display:none;">
	                <span class="m2-detCodehead-lef">使用邀请码</span>
	                <span class="m2-detCodehead-rig">关闭</span>
	                <div class="m2-detCodeinput">
	                    <span class="m2-detCodeinput-tit"><i></i>邀请码：</span>
	                    <input type="text" placeholder="仅限首次投资有效" id="invitecode">
	                </div>
	                <p class="m2-detCode-tips" id="invitereward"></p>
	            </div>
	        </div>
	        <div class="m2-detItemtim">
	            <div class="m2-detItemtim-box">
	                <h4>离开始投资</h4>
	                <ul class="m2-detItemtim-list">
	                    <li class="m2-detDay" style="display:none;"><i></i>天</li>
	                    <li class="m2-detHou"><i>1</i>时</li>
	                    <li class="m2-detMin"><i>12</i>分</li>
	                    <li class="m2-detSec"><i>58</i>秒</li>
	                </ul>
	                <p class="m2-detItemtim-sma">开标时间</p>
	                <p class="m2-detItemtim-nor"><span style="margin-right:15px;">09月04日</span><span>15:00:00</span></p>
	            </div>
	        </div>
	    </div>
	   	<div class="m2-detialsAct">
	        <h2><i></i>项目活动</h2>
	        <div class="m2-detActbox">
	            <div style="padding-left:30px;" id="borrowactivity">
	            </div>
	            <!--<div class="m2-detActbottom">-->
	            <!--                <a class="m2-detActlink-lef" href="#">提升攻略&uarr;</a>
	                            <a class="m2-detActlink-rig" href="#">了解更多&raquo;</a>-->
	            <!--</div>-->
	        </div>
	    </div>
	    <script>
	        $('.m2-detActbox td').css('height', '34px');
	        $('.m2-detActbox span').css('font-family', 'Microsoft YaHei, Arial');
	        $('.m2-detActbox span').css('color', '#717171');
	        $('.m2-detActbox font').css('color', '#717171');
	    </script>
	    <div class="m2-detSit m2-detSection">
		        <h3> 产品概要<i></i></h3>
		        <div class="m2-detSitbox m2-det-togBox" style="max-height: 2000px;">
		            <!--            <p style='font-size: 14px;line-height: 26px;'>“爱车贷-汽车质押贷款”是爱钱帮在汽车金融垂直领域的新产品，联手线下专业车贷团队，为投资人提供期限1至3个月的优质短期投资项目。
		                     1.平台上发布的质押车辆，车辆手续齐全，借款人信息实名认证，专业团队实地评估车辆性能与价格、借款人信用情况；
		                     2.采用车贷业内安全级别最高的风控手段——押车押手续，车辆入库保管，车场设有屏蔽器，互联网监控设备，车辆手续存入保险柜。根据不同城市车市值存在差价以及冷热门车，设置的质押率控制在估值的85%以内；大额度车辆要求质押并过户抵押；
		                     3.项目到期由担保公司进行债权回购。</p>-->
		            <p style='font-size: 14px;line-height: 26px;'>${thisfb.fcontent}</p>
		        </div>
		        <div class="m2-detSec-toggle">
		            <!--<span class="m2-detSec-down">展开<i></i></span>
		        --></div>
		    </div>
		
		    <div class="m2-detSit m2-detSection">
		        <h3>
		            项目情况
		            <i></i>
		        </h3>
		        <div class="m2-detSitbox m2-det-togBox">
		            <!--            <p style='font-size: 14px;line-height: 26px;'>产品金额为8.62万元。借款人的信用良好。
		                                     质押车辆基本信息：
		                                     车辆型号：迈锐宝
		                                    车辆购买时间：2014-07-23
		                                    公里数：31986公里
		                                   二手市场评估价格：17.5万
		                                   车辆是否有贷款：是</p>-->
		            <p style='font-size: 14px;line-height: 26px;'>${thisfb.fsituation}</p>
		        </div>
		        <div class="m2-detSec-toggle">
		            <span class="m2-detSec-down">展开<i></i></span>
		        </div>
		    </div>
		
		    <div class="m2-detImgbox m2-detSection">
		        <h3>
		            项目资料            <i></i></h3>
		        <div class="m2-detImglist m2-det-togBox  img-view1">
		            <ul>
		            </ul>
		        </div>
		        <div class="m2-detSec-toggle">
		            <span class="m2-detSec-down">展开<i></i></span>
		        </div>
		    </div>
		
		    <div class="m2-detSit m2-detSection">
		        <h3>                资金用途<i></i></h3>
		        <div class="m2-detSitbox m2-det-togBox">
		            <p style='font-size: 14px;line-height: 26px;'> </p>
		        </div>
		        <div class="m2-detSec-toggle">
		            <span class="m2-detSec-down">展开<i></i></span>
		        </div>
		    </div>
		
		    <div class="m2-detSit m2-detSection">
		        <h3>爱钱帮独立意见<i></i></h3>
		        <div class="m2-detSitbox m2-det-togBox">
		            <p style='font-size: 14px;line-height: 26px;'>${thisfb.fopinion}</p>
		        </div>
		        <div class="m2-detSec-toggle">
		            <span class="m2-detSec-down">展开<i></i></span>
		        </div>
		    </div>
		
		    <div class="m2-detImgbox m2-detSection">
		        <h3>
		            额外照片            <i></i>
		        </h3>
		        <div class="m2-detImglist m2-det-togBox  img-view2">
		            <ul>
		            <c:forEach items="${myimg}" var="myimages">
		                <li>
		                    <img src="${pageContext.request.contextPath}${myimages}" data-fullpic="${pageContext.request.contextPath}${myimages}">
		                </li>   
		             </c:forEach>
		            </ul>
		        </div>
		        <div class="m2-detSec-toggle">
		            <span class="m2-detSec-down">展开<i></i></span>
		        </div>
		    </div>
		
		    <div class="m2-detSit m2-detSection">
		        <h3>担保机构意见<i></i></h3>
		        <div class="m2-detSitbox m2-det-togBox">
		            <p style='font-size: 14px;line-height: 26px;'></p>
		        </div>
		        <div class="m2-detSec-toggle">
		            <span class="m2-detSec-down">展开<i></i></span>
		        </div>
		    </div>
		
		    <div class="m2-detSit m2-detSection">
		        <h3>风控措施<i></i></h3>
		        <div class="m2-detSitbox m2-det-togBox">
		            <p style='font-size: 14px;line-height: 26px;'>${thisfb.fsecuritymea}</p>
		        </div>
		        <div class="m2-detSec-toggle">
		            <span class="m2-detSec-down">展开<i></i></span>
		        </div>
		    </div>
		    <!-- 车辆手续start -->
		    <div class="m2-detCarfile m2-detSection"   >
		        <h3>车辆手续<i></i></h3>
		        <ul class="m2-detCarfile-ul">
		            <li class="m2-detCarfile1">
		                <i class="m2-detCar-tur"></i>
		            </li>
		            <li class="m2-detCarfile2">
		                <i class="m2-detCar-tur"></i>
		            </li>
		            <li class="m2-detCarfile3">
		                <i class="m2-detCar-tur"></i>
		            </li>
		            <li class="m2-detCarfile4">
		                <i class="m2-detCar-fal"></i>                </li>
		            <li class="m2-detCarfile5">
		                <i class="m2-detCar-tur"></i>
		            </li>
		            <li class="m2-detCarfile6">
		                <i class="m2-detCar-fal"></i>                </li>
		            <li class="m2-detCarfile7">
		                <i class="m2-detCar-fal"></i>                </li>
		            <li class="m2-detCarfile8">
		                <i class="m2-detCar-fal"></i>                </li>
		            <li class="m2-detCarfile9">
		                <i class="m2-detCar-fal"></i>                </li>
		        </ul>
		    </div>    <div class="m2-detRecbox m2-detSection" style="margin-bottom: 100px;">
		    <h3>投资理财记录<i></i></h3>
		    <div class="m2-detReclist">
		        <ul id='investlogul'>
		            <li class="m2-detRechead">
		                <span class="m2-detReccon-user">用户名</span>
		                <span class="m2-detReccon-tel">手机号</span>
		                <span class="m2-detReccon-sum">投资金额</span>
		                <span class="m2-detReccon-tim">投资时间</span>
		            </li>
		            <li class="m2-detRecitem" style="height: 200px;">
			            <c:if test="${mybids==null || fn:length(mybids) == 0}">
			                 <span style='width: 90%;'>暂无数据</span> 
			            </c:if>
		            	<c:forEach items="${mybids}" var="bids">
			                <span class="m2-detReccon-user">${bids.uname}</span>
			                <span class="m2-detReccon-tel">${bids.uphone}</span>
			                <span class="m2-detReccon-sum" style="color:#f5944f;">${bids.bmoney}元</span>
			                <span class="m2-detReccon-tim">${bids.btime}</span>
			           	</c:forEach>
		            </li>
		        <div class="m2-newListpage-con" style="padding-top:5px;">
		            <div class="m2-newListpage">
		                <div class="m2-news-pages" style="padding-right:40px;margin:12px auto;text-align: center;">
	
				     <c:if test="${fn:length(mybids) > 0}">
				               <a href="javascript:void(0);" onclick="window.location.href='/Finances/toproject?pid=${thisfb.fid}&pageNow=1'" class="m2-pages-num m2-page-prev">&lt;</a>					
							<c:choose>
								<c:when test="${page.pageNow - 1 > 0}">
									<a href="javascript:void(0);" onclick="window.location.href='/Finances/toproject?pid=${thisfb.fid}&pageNow=${page.pageNow - 1}'"  class="m2-pages-num m2-page-sel"> - </a>
								</c:when>
								<c:when test="${page.pageNow - 1 <= 0}">
									<a href="javascript:void(0);" onclick="window.location.href='/Finances/toproject?pid=${thisfb.fid}&pageNow=1'"  class="m2-pages-num m2-page-sel"> - </a>
								</c:when>
							</c:choose>
							<c:choose>
								<c:when test="${page.totalPageCount==0}">
									<a href="javascript:void(0);" onclick="window.location.href='/Finances/toproject?pid=${thisfb.fid}&pageNow=${page.pageNow}'"   class="m2-pages-num m2-page-sel"> + </a>
								</c:when>
								<c:when test="${page.pageNow + 1 < page.totalPageCount}">
									<a href="javascript:void(0);" onclick="window.location.href='/Finances/toproject?pid=${thisfb.fid}&pageNow=${page.pageNow+1}'"  class="m2-pages-num m2-page-sel"> + </a>
								</c:when>
								
								<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
									<a href="javascript:void(0);" onclick="window.location.href='/Finances/toproject?pid=${thisfb.fid}&pageNow=${page.totalPageCount}'"  class="m2-pages-num m2-page-sel"> + </a>
								</c:when>
							</c:choose>
							<c:choose>
								<c:when test="${page.totalPageCount==0}">
									<a href="javascript:void(0);" onclick="window.location.href='/Finances/toproject?pid=${thisfb.fid}&pageNow=${page.pageNow}'" title="尾页" class="m2-pages-num m2-page-next">&gt;</a>
								</c:when>
								<c:otherwise>
									<a href="javascript:void(0);" onclick="window.location.href='/Finances/toproject?pid=${thisfb.fid}&pageNow=${page.totalPageCount}'" title="尾页" class="m2-pages-num m2-page-next">&gt;</a>
								</c:otherwise>
							</c:choose>
						</c:if>		
		          </div>
		          </div>
		          </div>  
		        </ul>
		  
		        
		        
		    </div>
		    <div class="m2-newListpage-con">
		        <div class="m2-newListpage">
		            <div class="m2-news-pages" style="padding-right:40px;margin:12px auto;"></div>
		        </div>
		    </div>
			<!-- 投资的表单 -->
		    <form method="post" action="${pageContext.request.contextPath}/investproject" style="display: none;" id="invest_form">
		      	<input name="userid" id="userid">
		        <input name="ordermoney" id="ordermoney">
		        <input name="investmoney" id="investmoney" >
		        <input name="projectid" id="projectid" >
		        <input name="strart" id="strart" >
		        <input name="end" id="end" >
		    </form>
		
		</div>
		</div>
		<script type="text/javascript">
		    $(function () {
		        $('.m2-detAsklist ul li:even').css('margin-right', 24);
		        //各种介绍展开按钮
		        $('.m2-detSec-toggle span').click(function () {
		            if ($(this).hasClass('m2-detSec-down')) {
		                $(this).addClass('m2-detSec-up').removeClass('m2-detSec-down');
		                $(this).parent().siblings('.m2-det-togBox').css('max-height', 2000);
		                $(this).html('收起<i></i>');
		            } else {
		                $(this).addClass('m2-detSec-down').removeClass('m2-detSec-up');
		                $(this).parent().siblings('.m2-det-togBox').css('max-height', 158);
		                $(this).html('展开<i></i>');
		            }
		        });
		    });
		    $('.m2-det-togBox').each(function () {
		        if ($(this).height() < 158) {
		            $(this).siblings('.m2-detSec-toggle').find('span').hide();
		        }
		    });
		    $('.m2-detImglist').each(function () {
		        if ($(this).find('li').size() < 6) {
		            $(this).siblings('.m2-detSec-toggle').find('span').hide();
		        }
		    });
		</script>
		
		<!-- 图片列表弹出和上下页 -->
		<script src="/Finances/statics/front/js/productimage.js"></script>
		
		<!-- 红包弹窗相关 -->
		<script src="/Finances/statics/front/js/productenvelope.js"></script>
		
		<!-- 剩余时间相关 -->
		<script src="/Finances/statics/front/js/producttimes.js"></script>
		
		<!------------------------------------------------------------------------------------------------------------------>
		
		<script>
			$("#qrtz").click(function(){
				
				$("#msgbtn2").hide();
				//$("#cstc").show();
				var invest = $('#invest_money').val();
				$('#inputmoney').html('');
				$('#inputmoney').html(invest);
				showOpenDialog();
				$('#invest_money').val(invest);
			});
			/* 
			$("#cstc").click(function(){
				
			}); */
			$(function(){
				var issave = 0;
				$("#payPwd").payPwd({
					max:6,
					type:"password",
					callback:function(arr) {
						//console.log(arr);
						//alert('密码是'+arr);
						//现在判断是否与用户密码相同
						$.ajax({
		           	          url:"${pageContext.request.contextPath}/user/getDealPwd",
		           	          type:"post",
		           	          data: {uidealpwd:arr,uid:uid},
		           	          success:function(data){
		           	        	//后台返回int类型的数据
		           					if(data>0){
		           						mizhu.toast('验证成功');
		           						//给from表单赋值
		           						 $('#userid').val(uid);
		           						 $('#ordermoney').val(reward_type+','+reward_id);
		           						 $('#projectid').val(borrow_id);
		           						 $('#strart').val('${thisfb.fhuanstat}');
		           						 $('#end').val('${thisfb.fhuanend}');
		           						 var invest = $('#invest_money').val();
		           						 $('#investmoney').val(invest);
										//提交form表单	
		           						//$('#invest_form').submit();
		           						issave = 1;
		           						subinvest();
		           					}else{
		           						mizhu.toast('密码错误');
		           					}
		           	          },
		           	          error:function(e){
		           	        	mizhu.toast('错误');
		           	          }
		                 });	
					}
				})
				
				//投资实现
			function subinvest(){
				if(issave==1){
					 var form = new FormData(document.getElementById("invest_form"));
					   	$.ajax({
			       	          url:"${pageContext.request.contextPath}/investproject",
			       	          type:"post",
			       	          data:form,
			       	          processData:false,
			       	          contentType:false,
			       	          success:function(data){
			       	        	//后台返回int类型的数据
			       					if(data>0){
			       						//新增成功，下面是后台框架的提示
			       						mizhu.toast('投资成功');
			       						window.location.reload();
			       					}else{
			       						//新增失败
			       						mizhu.toast('投资失败');
			       						//window.location.reload();
			       						$('#moneytru').hide();
			       					}
			       	          },
			       	          error:function(e){
			       	        	mizhu.toast('错误');
			       	        	$('#moneytru').hide();
			       	          }
			             });
				}
			}
		})
		</script>
		
		<!-- <script type="text/javascript">
	    	function openzf(){
	    		 $('#myModal').modal('hide');
	    		 var invest = $('#invest_money').val();
	    		 $('#inputmoney').html(invest);
	    	}
	    </script> -->
		
		<!-- 奖励金，邀请码 ，红包相关-->
		<script type="text/javascript">
		 //奖励金使用限制
	    var reward_money_limit = 10000;
	    //投资标id
	    var borrow_id ='${thisfb.fid}';
	    //最小投资额
	    var invest_limit = Number('${thisfb.fminmoney}');
	    invest_limit = invest_limit > 0 ? invest_limit : 100;
	    //最小投资份数
	    var invest_limit_num = Number("1");
	    //投资金额
	    var invest_money = '${thisfb.fendmoney}';
	    //还需金额
	    var money_need = '${thisfb.fmoney-thisfb.fendmoney}';
	    //使用奖励id
	    var reward_id = 0;
	    //使用奖励类型，1红包，2加息券
	    var reward_type = 0;
	    //使用奖励金
	    var reward_money = 0;
	    //项目利率
	    var interest_rate = Number("${thisfb.froe*100+thisfb.fincrease*100}");
	    //加息券利率
	    var reward_interest_rate = 0;
	    //使用红包金额
	    var reward_redpacket_money = 0;
	    //红包加息券使用条件
	    var reward_condition = 0;
	    //徽商账户余额
	    var account_money = "${sessionScope.user.ubalance}";
	    //alert(${sessionScope.user.ubalance});
	    //账户奖励金余额
	    var account_reward = Number("0");
	    //已投资金额
	    var have_invest = Number("");
	    //剩余投资天数
	    var days = Number("${thisfb.rematime}");
	    //剩余可投资金额
	    var left_money = Number($('#left_money').text().replace(/元/g, '').replace(/,/g, ''));
	    //邀请码
	    var invite_code = 0;
	    //标分类
	    var borrow_catalog = Number("5");
	    //输入的投资金额
	    var input_invest_money = 0;
	    //电子账号
	    var cardnbr = "";
	    //真实姓名
	    var real_name = '${sessionScope.userinfo.uiname}';
	    //身份证号
	    var id_no = "";
	    //电话号码
	    var phone = '${sessionScope.user.uphone}';
	    // 绑定卡
	    var cardbind = "";
	    //用户注册时间、用于区分新老用户（分割点2016年1月1号）
	    var regtime = Number("1473038992");
	    //用户id
	    var uid = '${sessionScope.user.uid}';
	    //新手标标志
	    var borrow_flag=1;
	    //最大购买份数
	    var borrow_max=0;
	
	    var setword_status="0";//是否设置投资密码 1 是 0 否
	    //================================
	    //主界面的投资输入框
	    $('#invest_money').keyup(function () {
	        var invest = $('#invest_money').val();
	        investValidation(invest);
	    });
	    //收益计算器中的投资输入框
	    $('#invest_money1').keyup(function () {
	        var invest = $('#invest_money1').val();
	        investValidation(invest);
	    });
	    //投资金额处理
	    function investValidation(invest, flag) {
	    	//var invest = $('#invest_money').val();
	    	if(account_money < invest_limit){
	    		//alert("不能小于最小投资钱数");
	    		mizhu.toast('投资钱数低于最小投资钱数');
	    		return;
	    	}
	        if (!isNaN(invest)) {
	            var im = Number(invest);
	            if (left_money > 0 && im > left_money) {
	                im = left_money;
	            }
	            input_invest_money = im;
	            if (flag) {
	                im = im < invest_limit * invest_limit_num ? invest_limit * invest_limit_num : Math.floor(im / invest_limit) * invest_limit;
	            }
	            if(borrow_flag==1&&borrow_max>0&&im>borrow_max*invest_limit){
	                im=borrow_max*invest_limit;
	            }
	            invest_money = im;
	            if (reward_id > 0 && reward_condition > invest_money) {
	                cancelReward();
	            } else if (reward_money > 0 && invest_money + have_invest < reward_money_limit) {
	                cancelReward();
	            } else if (reward_money > 0 && reward_money > invest_money) {
	                rewardMoney(invest_money);
	            }
	            calMoneyNeed();
	        }
	        investSync();
	    }
	    //投资数据界面显示同步
	    function investSync() {
	        $('#invest_money').val(invest_money);
	        $('#invest_money1').val(invest_money);
	        $('#invest_money2').html(invest_money + '元');
	        $('#invest_money3').html(invest_money + '元');
	        //alert('天数'+days);
	        //alert('项目利率'+interest_rate);
	        //alert('投资钱数'+invest_money);
	        //计算收益
	        var otitm = Math.round(days * interest_rate * invest_money / 365) / 100;
	        $('#interest_money').text(otitm + '元');
	        interestSync();
	        $('#qb_coin').text(Math.round(invest_money * days / 30000) + '个');
	        var hongbao = 0;
	        var jiaxiquan = 0;
	        var next=0;
	        var nextmoney=0;
	        var hbcount=0;
	        $('.reward-item').each(function () {
	            if (invest_money >= Number($(this).data('condition'))) {
	                $(this).show();
	                if ($(this).data('rewardtype') == 1) {
	                    hongbao = Number($(this).data('rewardval')) > Number(hongbao) ? $(this).data('rewardval') : hongbao;
	                } else {
	                    jiaxiquan = Number($(this).data('rewardval')) > Number(jiaxiquan) ? $(this).data('rewardval') : jiaxiquan;
	                }
	            } else {
	                nextnew=Number($(this).data('condition'))-invest_money;
	                if(next==0){
	                    next=nextnew;
	                    nextmoney=Number($(this).data('rewardval'));
	                }
	                if(nextnew<next){
	                    next=nextnew;
	                    nextmoney=Number($(this).data('rewardval'));
	                }
	                $(this).hide();
	
	            }
	        });
	        //取奖励最大的
	        if (account_reward || hongbao > 0 || jiaxiquan > 0) {
	            var t = '&nbsp;您有';
	            if (account_reward > 0) {
	                t += account_reward + '元奖励金 ';
	            }
	            if (hongbao > 0) {
	                hbcount=hbcount+1;
	                t += hongbao + '元红包 ';
	            }
	            if (jiaxiquan > 0) {
	                t += jiaxiquan + '元的加息券';
	            }
	            t += '可供选择';
	            if (next > 0&&hbcount==0) {
	                //您差XX元可用XX元红包
	                t +=  '，您差'+ next + '元可用'+ nextmoney + '奖励';
	                //  t += next + '元';
	            }
	
	            $('#reward_tip').html(t);
	        }
	        if (reward_id > 0 && reward_type == 2) {
	        	//计算收益额外的钱(剩余天数,加息券利率,投资钱数)
	            var extram = Math.round(days * reward_interest_rate * invest_money / 365) / 100;
	            $('#reward_money').text(extram + '元');
	        }
	    }
	    //同步利息明细
	    function interestSync() {
	        //var titm = Math.round(Number($('#interesttotal').data('totalinterest')) * invest_money) / 100;
	        var titm = Math.floor(days * (interest_rate + reward_interest_rate) * invest_money / 365) / 100;
	        $('#interesttotal').text(titm + '元');
	        $('.m2-tranHide-num').each(function () {
	            //var itm = Math.round(Number($(this).data('interest')) * invest_money) / 100;
	            var itm = Math.floor(Number($(this).data('days')) * (interest_rate + reward_interest_rate) * invest_money / 365) / 100;
	            $(this).find('span').html(itm + '元');
	        });
	    }
	    //全部投资
	    $('.invest_all').click(function () {
	    	//投资金额处理
	    	//alert(account_money);
	        investValidation(account_money, false);
	    });
	    //收益计算器-确认返回
	    $('.m2-tranHidenum-btn').click(function () {
	        $('.m2-tranBg').hide();
	        $('.m2-tranHide').hide();
	        var invest = $('#invest_money1').val();
	        investValidation(invest, true);
	    });
	    //奖励金
	    function rewardMoney(money) {
	        if (!isNaN(money)) {
	            if (money.toString().lastIndexOf('.') == money.toString().length - 1) {
	                return;
	            }
	            money = Number(money);
	            if (money > account_reward) {
	                money = account_reward;
	            }
	            if (money > invest_money) {
	                money = invest_money;
	            }
	            if (money + invest_money + have_invest < reward_money_limit) {
	                money = 0;
	                $('#rewardmoneyerror').text('投资满' + reward_money_limit + '元才可以使用奖励金');
	            } else {
	                $('#rewardmoneyerror').text('');
	            }
	            reward_money = money;
	            reward_id = 0;
	            reward_type = 0;
	            reward_interest_rate = 0;
	            reward_redpacket_money = 0;
	            reward_condition = 0;
	            calMoneyNeed();
	            interestSync();
	            $('.reward-item').removeClass('m2-detHidered-sel');
	            $('.reward-item').addClass('m2-detHidered-unsel');
	            $('.reward-select').remove();
	            $('#reward_money').text(reward_money + '元');
	            var rwd = '<span class="m2-detJust-tit reward-select" style="padding-left: 23px;"><i class="m2-detRigjust-icon m2-detRigicon-pri"></i>使用奖励金额：<span class="m2-detjustRed-num">' + money + '元</span></span>';
	            $('#reward_info').after(rwd);
	        }
	        $('#rewardmoney').val(reward_money);
	    }
	    //计算所需金额
	    function calMoneyNeed() {
	        if (invest_money - reward_money > account_money && reward_money > 0) {
	            money_need = calMinus(invest_money, calPlus(reward_money, account_money));
	        } else if (invest_money - reward_redpacket_money > account_money && reward_redpacket_money > 0) {
	            money_need = calMinus(invest_money, calPlus(reward_redpacket_money, account_money));
	        } else {
	            money_need = invest_money > account_money ? calMinus(invest_money, account_money) : 0;
	        }
	    }
	    //红包，加息券
	    function rewardID(id, type, val, condition) {
	        if (!isNaN(id) && id > 0) {
	            reward_money = 0;
	            reward_id = id;
	            reward_condition = condition;
	            $('.reward-select').remove();
	            $('#rewardmoney').val(0);
	            var rwd = '<span class="m2-detJust-tit reward-select" style="padding-left: 23px;">';
	            if (type == 1) {
	                reward_type = 1;
	                reward_interest_rate = 0;
	                reward_redpacket_money = Number(val);
	                calMoneyNeed();
	                $('#reward_red').text(val + '元');
	                $('#reward_coupon').text('0元');
	                $('#reward_money').text(val + '元');
	                interestSync();
	                rwd += '<i class="m2-detRigjust-icon m2-detRigicon-red"></i>选中红包金额：<span class="m2-detjustAdd-num">' + val + '元</span></span>';
	            } else if (type == 2) {
	                reward_type = 2;
	                $('#reward_red').text('0元');
	                reward_interest_rate = Number(val);
	                reward_redpacket_money = 0;
	                calMoneyNeed();
	                var extram = Math.round(days * reward_interest_rate * invest_money / 365) / 100;
	                $('#reward_coupon').text(extram + '元');
	                $('#reward_money').text(extram + '元');
	                interestSync();
	                rwd += '<i class="m2-detRigjust-icon m2-detRigicon-add"></i>选中加息券：<span class="m2-detjustAdd-num">' + val + '元加息券</span></span>';
	            } else {
	                rwd = '<span class="m2-detJust-tit reward-select"><i></i>未使用任何奖励</span>';
	            }
	            $('#reward_info').after(rwd);
	        }
	    }
	    //取消奖励
	    function cancelReward() {
	        reward_money = 0;
	        reward_id = 0;
	        reward_type = 0;
	        reward_interest_rate = 0;
	        reward_redpacket_money = 0;
	        reward_condition = 0;
	        interestSync();
	        $('#rewardmoney').val('');
	        $('#reward_red').text('0元');
	        $('#reward_coupon').text('0元');
	        $('#reward_money').text('0元');
	        $('.reward-select').remove();
	        $('.reward-item').removeClass('m2-detHidered-sel');
	        $('.reward-item').addClass('m2-detHidered-unsel');
	        rwd = '<span class="m2-detJust-tit reward-select"><i></i>未使用任何奖励</span>';
	        $('#reward_info').after(rwd);
	    }
	    //取消奖励选择
	    $('.m2-detHidered-cancle').click(function () {
	        cancelReward();
	    });
	    //弹出层奖励金 点击‘全用’
	    $('.m2-detHidepri-ipt span').click(function () {
	        rewardMoney(account_reward);
	    });
	    //奖励金输入
	    $('#rewardmoney').keyup(function () {
	        var rm = $('#rewardmoney').val();
	        rewardMoney(rm);
	    });
	    //选择奖励
	    $('.reward-item').click(function () {
	        $('.reward-item').removeClass('m2-detHidered-sel');
	        $('.reward-item').addClass('m2-detHidered-unsel');
	        $(this).addClass('m2-detHidered-sel');
	        var id = $(this).data('rewardid');
	        var type = $(this).data('rewardtype');
	        var val = $(this).data('rewardval');
	        var condition = $(this).data('condition');
	        rewardID(id, type, val, condition);
	    });
	    //立即投资
	    $('#invest_now').click(function () {
	        //判断uid是否为空
	    	if(!uid){
	            window.location.href = '${pageContext.request.contextPath }/toindex';
	            return;
	        }
	    	var invest = $('#invest_money').val();
            if(invest < invest_limit){
            	mizhu.toast('投资钱数低于最小投资钱数');
            	return;
            }
            if(money_need<0){
            	mizhu.toast('投资钱数已满');
            	return;
            }
            //取得总共得投的钱数
            var allmoeny = ${thisfb.fmoney};
            //把可投数转成整数
            invest = Number(invest);
            //把用户投的钱数和已投钱数相加
	        var aaaa = Number((invest + ${thisfb.fendmoney}).toFixed(2));
	        //取得红包的钱数
            reward_redpacket_money = Number(reward_redpacket_money);
	        //取得用户共投的钱数
	        aaaa = Number((reward_redpacket_money+aaaa).toFixed(2));
            if(aaaa > allmoeny){
            	mizhu.toast('投资钱数过大');
            	return;
            }
            //判断用户是不是投自己的标
            var isthisuser = ${thisfb.uid};
            if(uid==isthisuser){
            	mizhu.toast('不能投自己的标');
            	return;
            }
	        //判断用户是否已投资
	      	 	$.ajax({
	           	          url:"${pageContext.request.contextPath}/checkUserByBid",
	           	          type:"post",
	           	          data: {fid:borrow_id,uid:uid},
	           	          success:function(data){
	           	        	//后台返回int类型的数据
	           					if(data>0){
	           						mizhu.toast('您已投资过此标');
	           					}else{
	           						confirmDialog('invest');
	           					}
	           	          },
	           	          error:function(e){
	           	        	alert('错误');
	           	          }
	                 });	
	        
	          /*   if (!cardbind) {
	                confirmDialog('bindcard');
	                return;
	            } */
	            //设置交易密码
	         	/*  if(setword_status!="1"){
	                confirmDialog('steword');
	                return;
	            }  */
	          
	            
	            //投资金额处理
	            investValidation(invest_money, false);
	            if (invest_money - reward_money > account_money && reward_money > 0) {
	                confirmDialog('charge');
	            } else if (invest_money - reward_redpacket_money > account_money && reward_redpacket_money > 0) {
	                confirmDialog('charge');
	            } else if (invest_money > account_money && reward_money == 0 && reward_redpacket_money == 0) {
	                confirmDialog('charge');
	            }
	    });
	    // 确认弹窗
	    function confirmDialog(action) {
	        var content = '<p class="m2-detConfirm-nor">尊敬的用户：</p>';
	        if (action == 'charge') {
	            $('#msgtitle').text('充值确认');
	            if (input_invest_money % invest_limit > 0) {
	                content += '<p class="m2-detConfirm-nor">投资金额应为' + invest_limit + '的整倍数</p>';
	            }
	            if (input_invest_money < invest_limit * invest_limit_num) {
	                content += '<p class="m2-detConfirm-nor">最小投资金额为' + invest_limit * invest_limit_num + '元</p>';
	            }
	            content += rewardUseDialog();
	            content += '<p class="m2-detConfirm-nor">您投资金额为<span style="color:#f48a3f;">' + invest_money + '</span>元</p>';
	            content += '<p class="m2-detConfirm-nor">您的账户余额为' + account_money + '元，还需支付<span style="color:#f48a3f;">' + money_need + '</span>元</p>';
	            $('#msgcontent').html(content);
	            $('#msgbtn1').hide();
	            $('#msgbtn2').hide();
	            $('#msgbtn3').show();
	        } else if (action == 'invest') {
	            $('#msgtitle').text('投资确认');
	            var invest = $('#invest_money').val();
	            if (input_invest_money % invest_limit > 0) {
	                content += '<p class="m2-detConfirm-nor">投资金额应为' + invest_limit + '以上</p>';
	            }
	            if (input_invest_money < invest_limit * invest_limit_num) {
	                content += '<p class="m2-detConfirm-nor">最小投资金额为' + invest_limit * invest_limit_num + '元</p>';
	            }
	            content += rewardUseDialog();
	            if(borrow_flag==1){
	                content += '<p class="m2-detConfirm-nor">您确认投资 <span style="color:#f48a3f;">' + invest + '</span>元吗?<span style="color:#fa533d;">（每位新用户仅限投资一次新手标。)</span></p>';
	            }else{
	                content += '<p class="m2-detConfirm-nor">您确认投资 <span style="color:#f48a3f;">' + invest + '</span>元吗?</p>';
	            }
	
	            $('#msgcontent').html(content);
	            $('#msgbtn1').hide();
	            $('#msgbtn2').show();
	            $('#msgbtn3').hide();
	        } else if (action == 'bindcard') {
	//            msgDialog('为了保障您正常投资，请先进行绑卡操作！');
	            showOpenDialog();
	            return;
	        }else if(action=="steword"){
	            $('#msgtitle').text('投资确认');
	            content += '<p class="m2-detConfirm-nor">投资需要验证交易密码，您当前尚未设置，确认设置么？</p>';
	            $('#msgcontent').html(content);
	            $('#msgbtn1').hide();
	            $('#msgbtn2').hide();
	            $('#msgbtn3').hide();
	            $('#msgbtn4').show();
	
	        }
	        $('.m2-detConfirm,.m2-tranBg').show();
	    }
	    //使用奖励确认
	    function rewardUseDialog() {
	        var dom = '';
	        if (reward_money > 0) {
	            dom += '<p class="m2-detConfirm-nor">您投资使用奖励金<span style="color:#f48a3f;">' + reward_money + '</span>元</p>';
	        } else if (reward_type == 1) {
	            dom += '<p class="m2-detConfirm-nor">您投资使用<span style="color:#f48a3f;">' + reward_redpacket_money + '</span>元红包</p>';
	        } else if (reward_type == 2) {
	            dom += '<p class="m2-detConfirm-nor">您投资使用<span style="color:#f48a3f;">' + reward_interest_rate + '元</span>加息券</p>';
	        }
	        if (invite_code != 0) {
	            dom += '<p class="m2-detConfirm-nor">您投资使用邀请码：<span style="color:#f48a3f;">' + invite_code + '</span></p>';
	        }
	        return dom;
	    }
	    //消息弹窗
	    function msgDialog(msg) {
	        $('#msgtitle').text('消息确认');
	        var content = '<p class="m2-detConfirm-nor">' + msg + '</p>';
	        $('#msgcontent').html(content);
	        $('#msgbtn1').show();
	        $('#msgbtn2').hide();
	        $('#msgbtn3').hide();
	        $('.m2-detConfirm,.m2-tranBg').show();
	    }
	    //关闭弹窗
	    $('.m2-detConfirm-close,.m2-detConfirm-btn a').click(function () {
	        $('.m2-detConfirm,.m2-tranBg').hide();
	    });
	    // 邀请码弹窗
	    $('.m2-detCode').click(function () {
	        $('.m2-detCodehide').show();
	    });
	    $('.m2-detCodehead-rig').click(function () {
	        $('.m2-detCodehide').hide();
	    });
	    //邀请码变化
	    $('#invitecode').blur(function () {
	        inviteCodeBlur();
	    });
	    //主界面的投资输入框
	    $('#invest_money').blur(function () {
	        //inviteCodeBlur();
	    });
	    //收益计算器中的投资输入框
	    $('#invest_money1').blur(function () {
	        //inviteCodeBlur();
	    });
	    //邀请码变化
	    function inviteCodeBlur() {
	        var invite_code_t = $('#invitecode').val();
	        $.ajax({
	            url: "/invest-saverecommphone.shtml",
	            type: 'POST',
	            data: {
	                id: borrow_id,
	                reward: reward_money,
	                invest_capital: invest_money,
	                recommphone: invite_code_t
	            },
	            success: function (data) {
	                var obj = eval('(' + data + ')');
	                if (obj['status'] === 0) {
	                    invite_code = invite_code_t;
	                } else {
	                    invite_code = 0;
	                }
	                if (obj['status'] != 7) {
	                    $('#invitereward').html(obj['message']);
	                } else {
	                    $('#invitereward').html('');
	                }
	            }
	        });
	    }
	    //隐藏无内容区域
	    $(function () {
	        $('.m2-detSit').each(function () {
	            if ($.trim($(this).find('p').text()) == '') {
	                $(this).hide();
	            }
	        });
	        $('.m2-detImgbox').each(function () {
	            if ($.trim($(this).find('ul').html()) == '') {
	                $(this).hide();
	            }
	        });
	        if ($.trim($('#borrowactivity').text()) == '') {
	            $('.m2-detialsAct').hide();
	        }
	    });
	    
		</script>
		
		
		<!-- 托管，卡，开户相关 -->
		<script src="/Finances/statics/front/js/producthosted.js"></script>
	
		 <!-- 实现右侧登入注册功能 -->
		<script src="/Finances/statics/front/js/sidebarlogreg.js"></script>
	
	
		<!-- 足部start -->
			<jsp:include page="include/floot.jsp"></jsp:include>
		<!-- 足部end -->	
		
			<script type="text/javascript">
		    $("#msgbtn2_alert").hover(function(){
		        $("#msgbtn2_alert_content").show();
		    },function(){
		        $("#msgbtn2_alert_content").hide();
		    });
		    //收益计算器弹出层事件
		    $(function () {
		        //隐藏更多按钮
		        if ($('.m2-tranHide-det').size() < 19) {
		            $('.m2-tranHidetoggle').hide();
		        }
		        //点击按钮弹出
		        $('#interestcal').click(function () {
		            $('.m2-tranBg').show();
		            $('.m2-tranHide').show();
		            $('.m2-tranHide').css('top', $(document).scrollTop() + 110);
		        });
		
		        //点击关闭按钮
		        $('.m2-tranHide-close').click(function () {
		            $('.m2-tranBg').hide();
		            $('.m2-tranHide').hide();
		        });
		
		        //展开收起
		        $('.m2-tranHidetoggle').click(function () {
		            if ($(this).hasClass('m2-tranMore')) {
		                $(this).removeClass('m2-tranMore');
		                $(this).children('span').html('收&nbsp;&nbsp;&nbsp;起&raquo;');
		                $('.m2-tranHidelist').css('max-height', 9999);
		            } else {
		                $(this).addClass('m2-tranMore');
		                $(this).children('span').html('显示更多&raquo;');
		                $('.m2-tranHidelist').css('max-height', 240);
		            }
		        });
		    })
	</script>
		
		
	</body>
</html>