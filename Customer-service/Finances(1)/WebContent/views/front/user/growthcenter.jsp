<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta name="keywords" content="网贷平台,网络借贷，网络赚钱项目,理财产品">
    	<meta name="description" content="爱钱帮网贷平台为您提供网络赚钱项目；为此相继推出了许多新的理财产品，在为您创造高收益的同时也优化了理财产品模式。网络借贷，就选爱钱帮。">
		<!--[if lt IE 9]>
	    	<script src="<%=path%>/statics/front/statics/newcommon/js/html5shiv.js"></script>
	    <![endif]-->
		<title>成长值中心 | 亿信金融</title>
		
		<link rel="Shortcut  Icon" href="/Finances/statics/other/lco/6.png">
    	<link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
    	<link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
    	<link rel="Shortcut  Icon" href="/Finances/statics/other/lco/smalllog.png">
    	<link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/userCenter.css">
    	<script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/jquery.min.js"></script>
    	<script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
    	<script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/esl.js"></script>
    	<link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/jquery.datetimepicker.css" />
    	<script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/jquery.datetimepicker.js"></script>
	</head>
<body style="background:url('/Finances/statics/front/images/two.jpg');background-size:100% 100%;">
	
	<div class="m2-userCentercommon-bg" style="display:none;"></div>
	
		<!-- 右侧边栏start -->
		<jsp:include page="../include/userside.jsp"></jsp:include>
		<!-- 右侧边栏end -->
	
		<!-- 头部start -->
		<jsp:include page="../include/head.jsp"></jsp:include>
		<!-- 头部end-->
	
		<!-- 树start -->
	    <jsp:include page="../include/tree.jsp"></jsp:include>
	    <!-- 树end -->
	
	    <!-- 主题内容部分	 -->
	    <div class="m2-ticketCon">
	
	        <div style="width:800px;height:auto;background: #fff;margin-top:-20px;">
	            <div class="mygrow" style='margin-top:20px;padding-top:14px;'>
	                <div class="grow">
	                    <span class="title">我的成长值</span>
	                </div>
	                <div class="ringleader">
	                    <div class="ringleader-son">
	                        <div class="ringleader-sonl">
	                            <img src="/Finances/statics/front/statics/usercenter/images/growth/1.png" alt="" width="34px"/>
	                            <img src="/Finances/statics/front/statics/usercenter/images/growth/s.png" alt="" class="arrow"/>
	                        </div>
	                        <span class="ringleader-sonr">帮主</span>
	                    </div>
	                    <div class="ringleader-son">
	                        <div class="ringleader-sonl">
	                            <img src="/Finances/statics/front/statics/usercenter/images/growth/2.png" alt="" width="34px"/>
	                            <img src="/Finances/statics/front/statics/usercenter/images/growth/s.png" alt="" class="arrow"/>
	                        </div>
	                        <span class="ringleader-sonr">铁帮主</span>
	                    </div>
	                    <div class="ringleader-son">
	                        <div class="ringleader-sonl">
	                            <img src="/Finances/statics/front/statics/usercenter/images/growth/3.png" alt="" width="34px"/>
	                            <img src="/Finances/statics/front/statics/usercenter/images/growth/s.png" alt="" class="arrow"/>
	                        </div>
	                        <span class="ringleader-sonr">铜帮主</span>
	                    </div>
	                    <div class="ringleader-son">
	                        <div class="ringleader-sonl">
	                            <img src="/Finances/statics/front/statics/usercenter/images/growth/4.png" alt="" width="34px"/>
	                            <img src="/Finances/statics/front/statics/usercenter/images/growth/s.png" alt="" class="arrow"/>
	                        </div>
	                        <span class="ringleader-sonr">金帮主</span>
	                    </div>
	                    <div class="ringleader-son">
	                        <div class="ringleader-sonl">
	                            <img src="/Finances/statics/front/statics/usercenter/images/growth/5.png" alt="" width="34px"/>
	                            <img src="/Finances/statics/front/statics/usercenter/images/growth/s.png" alt="" class="arrow"/>
	                        </div>
	                        <span class="ringleader-sonr">白金帮主</span>
	                    </div>
	                    <div class="ringleader-son" style="width:100px">
	                        <div class="ringleader-sonl">
	                            <img src="/Finances/statics/front/statics/usercenter/images/growth/6.png" alt="" width="34px"/>
	                            <img src="/Finances/statics/front/statics/usercenter/images/growth/s.png" alt="" class="arrow"/>
	                        </div>
	                        <span class="ringleader-sonr">特邀帮主</span>
	                    </div>
	                </div>
	                <div class="range-parents">
	                    <div class="range"><div style="width: 8%;" class="range-son"></div></div>
	                    <span class="progress" style="left:18px;margin-top:10px;">0</span>
	                    <div class="myprogress" style="left:33px;"><span class="myprogress-son">${singuser.siggrowth}</span></div>
	                    <span class="progress" style="left:130px;margin-top:10px;">4000</span>
	                    <span class="progress" style="left:255px;margin-top:10px;">20000</span>
	                    <span class="progress" style="left:380px;margin-top:10px;">60000</span>
	                    <span class="progress" style="left:500px;margin-top:10px;">240000</span>
	                </div>
	                <p class="p-fi">成长值越高，帮主等级越高。当成长值满足升级条件时，系统自动给予升级。</p>
	                <p class="p-se">“特邀帮主”目前采取邀请制，接到平台邀请开通的用户可享有。</p>
	                <a href="#" class="query">成长值查询>></a>
	            </div>
	            <div class="mygrow" style="height:450px;">
	                <div class="grow"><span class="title">帮主权益</span><span class="text">会员商城等更多精彩权益正在路上...</span></div>
	                <table class="grow-table">
	                    <tr style="height:45px;line-height: 45px;">
	                        <td>帮主权益</td>
	                        <td>帮主</td>
	                        <td>铁帮主</td>
	                        <td>铜帮主</td>
	                        <td>金帮主</td>
	                        <td>白金帮主</td>
	                        <td>特邀帮主</td>
	                    </tr>
	                    <tr>
	                        <td>推荐好友奖励</td>
	                        <td class="yes"></td>
	                        <td class="yes"></td>
	                        <td class="yes"></td>
	                        <td class="yes"></td>
	                        <td class="yes"></td>
	                        <td class="yes"></td>
	                    </tr>
	                    <tr>
	                        <td>生日特权</td>
	                        <td class="yes"></td>
	                        <td class="yes"></td>
	                        <td class="yes"></td>
	                        <td class="yes"></td>
	                        <td class="yes"></td>
	                        <td class="yes"></td>
	                    </tr>
	                    <tr>
	                        <td>理财沙龙</td>
	                        <td class="no">无</td>
	                        <td class="yes"></td>
	                        <td class="yes"></td>
	                        <td class="yes"></td>
	                        <td class="yes"></td>
	                        <td class="yes"></td>
	                    </tr>
	                    <tr>
	                        <td>专属客服</td>
	                        <td class="no">无</td>
	                        <td class="no">无</td>
	                        <td class="no">无</td>
	                        <td class="no">无</td>
	                        <td class="yes"></td>
	                        <td class="yes"></td>
	                    </tr>
	                    <tr>
	                        <td>会员商城</td>
	                        <td class="no">无</td>
	                        <td>9.8折</td>
	                        <td>9.5折</td>
	                        <td>9折</td>
	                        <td>8.5折</td>
	                        <td>8折</td>
	                    </tr>
	                </table>
	                <div class="detail" style="margin-left: 0">
	                    <div class="detail-l"><img src="/Finances/statics/front/statics/usercenter/images/growth/award.png" alt="div"/></div>
	                    <div class="detail-r">
	                        <span class="detail-r-title">推荐好友奖励</span>
	                        <span class="detail-r-content">邀请好友注册爱钱帮并投资将获得相应奖励，奖励形式不定期更新</span>
	                    </div>
	                </div>
	                <div class="detail">
	                    <div class="detail-l"><img src="/Finances/statics/front/statics/usercenter/images/growth/birth.png" alt="div"/></div>
	                    <div class="detail-r">
	                        <span class="detail-r-title">生日特权</span>
	                        <span class="detail-r-content">帮主在生日当天产生的投资将获得双倍钱帮币奖励</span>
	                    </div>
	                </div>
	                <div class="detail" style="margin-left: 0">
	                    <div class="detail-l"><img src="/Finances/statics/front/statics/usercenter/images/growth/finance.png" alt="div"/></div>
	                    <div class="detail-r">
	                        <span class="detail-r-title">理财沙龙</span>
	                        <span class="detail-r-content">有机会参加由爱钱帮组织发起的线下理财沙龙、讲座、见面会等精彩活动</span>
	                    </div>
	                </div>
	                <div class="detail">
	                    <div class="detail-l"><img src="/Finances/statics/front/statics/usercenter/images/growth/person.png" alt="div"/></div>
	                    <div class="detail-r">
	                        <span class="detail-r-title">专属客服</span>
	                        <span class="detail-r-content">获得一对一的专属客服服务</span>
	                    </div>
	                </div>
	            </div>
	            <div class="mygrow" style="margin-top:70px;">
	                <div class="grow"><span class="title">成长值获取规则</span></div>
	                <div class="grow-details">
	                    <div class="grow-detailsl">
	                        <p class="first">1、登录签到可获得成长值</p>
	                        <p class="second">第1天签到可获得1个成长值，连续第2天签到可获得2个</p>
	                        <p class="third">成长值， 依次类推连续第10天及以上可获得10个成长值，</p>
	                        <p class="third">中间断签重新开始累计。</p>
	                        <p class="first" style="margin-top: 20px;">2、投资标的可获得成长值</p>
	                        <p class="second">帮主每投资100元，投资30天，累计1个成长值；</p>
	                        <p class="third">成长值计算公式=投资标的金额/100*（投资天数/30）*1</p>
	                        <p class="third">成长值四舍五入取整数；</p>
	                        <p class="third">帮主投资成功后，成长值立即到账。</p>
	
	                        <p class="second">* 承接债权转让项目无成长值奖励；</p>
	                        <p class="four">* 成长值从2016年4月27日开始累计。</p>
	                    </div>
	                    <div class="grow-detailsr">
	                        <div class="grow-detailsr-son">
	                            <input type="number" id="result" placeholder="0000"/>
	                            <input type="number" id="money" placeholder="请输入投资金额（元）"/>
	                            <input type="number" id="time" placeholder="请输入投资天数（天）"/>
	                            <div class="cal">确定</div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	
	            <div class="mygrow" style="padding-bottom: 55px;margin-top:22px">
	                <div class="grow"><span class="title">帮主等级降级规则</span></div>
	                <p class="demote">每月1日，系统自动调整帮主等级。当日未达到对应条件会产生10%的成长值衰减，系统根据成长值确定等级。</p>
	                <p class="demotes">各等级维持条件如下：</p>
	
	                <table class="grow-table">
	                    <tr style="height:45px;line-height: 45px;">
	                        <td>等级</td>
	                        <td>帮主</td>
	                        <td>铁帮主</td>
	                        <td>铜帮主</td>
	                        <td>金帮主</td>
	                        <td>白金帮主</td>
	                        <td>特邀帮主</td>
	                    </tr>
	                    <tr>
	                        <td>维持等级条件</td>
	                        <td>无</td>
	                        <td>待收本金大于等于1万元</td>
	                        <td>待收本金大于等于10万元</td>
	                        <td>待收本金大于等于50万元</td>
	                        <td>待收本金大于等于100万元</td>
	                        <td>无</td>
	                    </tr>
	                </table>
	            </div>
	        </div>
	    </div>
	</div>
			<script type="text/javascript">
		    $(".cal").click(function(){
		        var money=$("#money").val();
		        var time=$("#time").val();
		        $("#result").val(Math.round(money/100*(time/30)*1));
		    })
		    var myprogross=Number($('.myprogress-son').html());
		    var s= Number(127);//进度条的1/4
		    var level="0";
		    if(level == 5){
		        $('.range-son').animate({width:'507px'})
		        $('.myprogress').animate({left:'620px'})
		    }else{
		        if(myprogross<=4000){
		            var val= Number(myprogross/4000);
		            $('.range-son').animate({width:val*s+'px'})
		            $('.myprogress').animate({left:val*s-10+'px'})
		        }else if(4000<myprogross && myprogross<=20000){
		            var val=Number((myprogross-4000)/16000);
		            $('.range-son').animate({width:s+val*s+'px'})
		            $('.myprogress').animate({left:s+val*s-10+'px'})
		            /*$('.range-son').css('width',s+val*s+'px');
		             $('.myprogress').css('left',s+val*s-5+'px');*/
		        }else if(20000<myprogross && myprogross<=60000){
		            var val=Number((myprogross-20000)/40000);
		            $('.range-son').animate({width:s*2+val*s+'px'})
		            $('.myprogress').animate({left:s*2+val*s-10+'px'})
		            /*$('.range-son').css('width',s*2+val*s+'px');
		             $('.myprogress').css('left',s*2+val*s-5+'px');*/
		        }else if(60000<myprogross && myprogross<240000){
		            var val=Number((myprogross-60000)/180000);
		            $('.range-son').animate({width:s*3+val*s+'px'})
		            $('.myprogress').animate({left:s*3+val*s-10+'px'})
		            /*$('.range-son').css('width',s*3+val*s+'px');
		             $('.myprogress').css('left',s*3+val*s-5+'px');*/
		        }else if(myprogross>=240000){
		            $('.range-son').animate({width:'507px'})
		            $('.myprogress').animate({left:'493px'})
		            /*$('.range-son').css('width',507+'px');
		             $('.myprogress').css('left',502+'px');*/
		        }
		    }
		</script>
</body>
</html>