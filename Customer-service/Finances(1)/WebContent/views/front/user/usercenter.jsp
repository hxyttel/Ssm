<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="java.util.Date"%> 
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.p2p.pojo.Fabiao"%>

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
		<title>我的账户 | 亿信金融</title>
		<link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/6.png">
		<link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
	    <link rel="Shortcut  Icon" href="/Finances/statics/front/statics/newcommon/images/minilogo.png">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/userCenter.css">
	    <script src="${pageContext.request.contextPath}/statics/front/js/echarts.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/jquery.min.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/esl.js"></script>
	    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/jquery.datetimepicker.css" />
	    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/jquery.datetimepicker.js"></script>
 		<script src="${pageContext.request.contextPath}/statics/back/static/js/jquery-3.2.1.min.js"></script> 
		
		<!-- 日历导入 -->
		<script type="text/javascript" src="/Finances/statics/front/Simple/js/simple-calendar.js"></script>
		<link href="/Finances/statics/front/Simple/css/simple-calendar.css"  rel="stylesheet" type="text/css" >
		<link rel="stylesheet" href="/Finances/statics/front/statics/company_finance/css/center_div.css">
		
	</head>
<body style="background:url('/Finances/statics/front/images/two.jpg');background-size:100% 100%;">
	<div class="m2-userCentercommon-bg" style="display:none;"></div>
	<!-- 右侧边栏start -->
	<jsp:include page="../include/userside.jsp"></jsp:include>
	<!-- 右侧边栏end -->

	<!-- 头部start -->
		<jsp:include page="../include/head.jsp"></jsp:include>
	<!-- 头部end -->
	
	<!--  内容-->
	<!--公用提示框start-->
	<div class="m2-userCentercommon-confirm" style="display:none;" id="dialog-info-div1">
	    <span class="m2-userCentercommon-confirmClose"></span>
	    <!--<p class="m2-userCommon-confirmWar"></p>-->
	    <p class="m2-userCommon-confirmSuc" style='padding-right: 20px;'></p>
	    <p class="m2-userCommon-confirmBtn"><a class="m2-user-confirmBtn" target="_blank" href="#">确&nbsp;定</a></p>
	</div> 
	<div class="m2-userCentercommon-confirm" style="top:30%;padding-top:10px;display:none"  id='dialog-info-div'>
	    <span class="m2-userCentercommon-confirmClose"></span>
	    <div style="text-align: center;padding: 20px 0 20px 0;">
	        <h3 id='dialog-info-text'></h3>
	    </div>
	    <p class="m2-userCommon-confirmBtn">
	        <a class="m2-user-confirmBtn" target="_blank" href="#">确定</a>
	    </p>
	</div>
	<script type="text/javascript">
	    $('.m2-userCentercommon-confirmClose,.m2-user-confirmBtn').click(function () {
	        $('.m2-userCommon-confirmSuc').hide();
	        $('.m2-userCommon-confirmWar').hide();
	        $('.m2-userCentercommon-confirm').hide();
	        $('.m2-userCentercommon-bg').hide();
	        window.location.reload();
	    });
	</script>
    <div class="m2-userCentercommon-confirm" style='display: none;' id='msgdialog2'>
        <span class="m2-userCentercommon-confirmClose"></span>
        <p class="m2-userCommon-confirmSuc"><i></i></p>
        <p class="m2-userCommon-confirmBtn"><a class="m2-user-confirmBtn" href="javascript:void(0)">确&nbsp;定</a></p>		
    </div>
    <script type="text/javascript">
        $('.m2-userCentercommon-confirmClose,.m2-user-confirmBtn').click(function () {
            $('.m2-userCentercommon-confirm').hide();
            $('.m2-userCentercommon-bg').hide();
        });
    </script>
<!--公用提示框end-->

		<!-- 树start -->
	    <jsp:include page="../include/tree.jsp"></jsp:include>
	    <!-- 树end -->
    
    <style>
        #growth_scale {position:relative;width: 200px;display: inline-block;height: 16px;background-color: #f0f4f7;border-radius: 10px;line-height: 16px;font-size: 14px;}
        #growth_scale .bg {width:0;height: 16px;background-color: #5bd916;border-radius: 10px;overflow: hidden;}
        .m2-userMsg-iconLv span {padding-left:28px;font-size:16px;color:#f87450;}
        .m2-userMsg-iconLv a {width:98px;padding:38px 8px;height:0;}
        .m2-wel-lef .left {width:186px;text-align:center;height:240px;color:#f5944f;line-height:24px;font-size:12px;
        }
        .m2-wel-lef .left button {width:100px;height:40px;color:white;border:0;background-color:#fe6555;font-size:18px;border-radius:10px;margin-bottom:12px;}
        .m2-wel-lef .right {position:absolute;right:-20px;top:4px;width:240px;}
        .m2-wel-profitLink .m2-profit-cha{float:left;padding:0 20px;height:34px;line-height:34px;}
        .m2-userMsg-iconLv a i {top:30px;left:0;height:40px;}
    </style>
    
    <div style="width:100%; height:100%; position:fixed; z-index:100; display:none; top:0; left:0;" id="allP" >
        <div style="width:100%; height:100%; position:absolute; top:0; left:0; background:#000; opacity:0.5;"></div>
        <div style="width:404px; height:154px; background:#fff; position:absolute; top:50%; left:50%; margin-left:-252px; margin-top:-100px; border:2px solid #666;">
            <p style="color: #666666;font-size: 16px;absolute;line-height:170px;text-align: center; font-family: Microsoft YaHei;;">该项目已还清，为保护企业隐私，不再公示项目信息</p>
            <div style="width: 30px;height: 30px;position: absolute;top: 11px;right: 0px;color: #666;font-size: 20px;cursor: pointer;" id="close">X</div>
        </div>
    </div>
    
    <div class="m2-userCentermain-con">
        <div class="m2-msgBox">
            <b>通知<em></em></b>
            <span id='notice-text'></span>
            <a id='notice-url' href="usercenter-messagecontrol-sitemsg.html">&nbsp;&nbsp;[详情]</a>
            <i class="m2-msgBox-close" id='notice-close'></i>
        </div>
        <div class="m2-wel-con" style="background-color:white;width:798px;">
            <p class="m2-wel-hello" id="greeting" style="background-color:white;margin:0 10px;width: 730px;white-space: nowrap;overflow: hidden;text-overflow: ellipsis;" title='上午好，iqb13737301354，投资，是为了更好的自己！'>
            	<span id="thistime">上午好</span>，${sessionScope.user.uphone}，投资，是为了更好的自己！
            </p>
            <div class="m2-wel-lef">
                <!-- <span style="position:absolute;top:85px;right:10px;font-size:15px;line-height:15px;">邀请码：
				<i style="font-style:normal;">xrejfr</i></span>-->
                <div class="left">
                    <img id="userImg" src="${pageContext.request.contextPath}${sessionScope.user.userinfo.uiheadImg}" alt="忆信金融" style="margin:20px;"><br>
                   	 <button id="yiqd" style="background-color:#b7b6b6;outline:none;" >已签到</button>                
					<p id="msgcount">您已连续签到<span id='day'>${singuser.countday}</span>天，</p>
                    	<p><span id='today'>明天</span>再签到可获得
                    		<span id='growth'>
                    			 <c:if test="${singuser.countday<=10 and singuser.countday!=0}">
                    			 	${singuser.countday+2}
                    			 </c:if>
                    			 <c:if test="${singuser.countday>10}">
                    			 	10
                    			 </c:if>
                    			 <c:if test="${singuser.countday==0}">
                    			 	2
                    			 </c:if>
                    		</span>
                    		个成长值
                    	</p>
                </div>
                <div class="right">
                    <div class="m2-userMsg-iconLv" >
                        <a href="${pageContext.request.contextPath}/togrowth" class="m2-iconLevel-normal"><i></i><span>帮主</span></a>
                    </div>
                    <div>成长值：<span id="mydetail_num" data="4000">${singuser.siggrowth}</span><a href="${pageContext.request.contextPath}/togrowth" style="color:#69b1d7;float:right;">如何加速？</a></div>
                    <div id="desc" style="margin:10px 0;font-size:12px;">距离 <span id='vipname'>
                     <c:if test="${singuser.siglevel==2}">
                     	铁帮主
                     </c:if>
                      <c:if test="${singuser.siglevel==3}">
                     	铜帮主
                     </c:if>
                      <c:if test="${singuser.siglevel==4}">
                     	金帮主
                     </c:if>
                      <c:if test="${singuser.siglevel==5}">
                     	白金帮主
                     </c:if>
                    </span> 还需要 <span id='integral'>${singuser.integral}</span> 成长值</div>	            
                    <div id="growth_scale">
                    	<div class='bg' style="width:${ (singuser.integral+singuser.integral)/siggrowth*100}%"></div>
                    	
                    </div>
                    <ul style="margin:16px 0 10px 0;">
                        <li class="m2-userMsg-icon" style="margin-left:-8px;"><a href="#" id='verify_id' class="m2-iconUser-fal" title='实名认证'></a></li>
                        <li class="m2-userMsg-icon"><a href="#?phone=1" id='verify_phone' class="m2-iconPho-fal" title='手机认证'></a></li>
                        <li class="m2-userMsg-icon"><a href="#?email=1" id='verify_email' class="m2-iconEmail-fal" title='邮箱认证'></a></li>
                    </ul>
                    <div class="m2-wel-level" style="margin-left:0;">
                        <p>安全等级：<span class="m2-level-low" id='safe_level'  style="color:#1adb9e;"></span><a href="#" id='safe_level_url' style="color:#0996cc;">[提升]</a></p>
                        <!--                <div class="m2-level-image" id='safe_level_bar'>-->
                        <!--                    <i class="m2-levelIcon-fal"></i>-->
                        <!--                    <i class="m2-levelIcon-fal"></i>-->
                        <!--                    <i class="m2-levelIcon-fal"></i>-->
                        <!--                </div>-->
                        <!--                <div class="m2-wel-border"></div>-->
                    </div>
                </div>
            </div>
             <div class="m2-wel-rig" style="float:right;width:320px;padding-top:66px;height:174px;border-left:1px solid #f0f0f0;">
                <div class="m2-wel-profitCon" >
                    <div class="m2-wel-profit" style="width:142px;">
                        <p>
                            累计收益（元）
                            <b>
                                <u style="width:100px;z-index: 10;">
                                    <em class="m2-userProfit-arr"></em>
                                    <em class="m2-userProfit-arrBg"></em>
                                    到账收益:${allMoney}<br>
                                </u>
                            </b>
                        </p>
                        <span>${allMoney}</span>
                    </div>
                    <div class="m2-wel-profit" style="width:142px;">
                        <p>
                            今日赚取（元）
                            <b>
                                <u style="width:120px;">
                                    <em class="m2-userProfit-arr"></em>
                                    <em class="m2-userProfit-arrBg"></em>
                                    按在投项目精确计算的当天收益金额
                                </u>
                            </b>
                        </p>
                        <span>${dayMoney}</span>
                    </div>
                </div>
                <input type="hidden" value="${sessionScope.userinfo.uiopenstatus} " id="uiopenstatus" />
                <input type="hidden" value="${sessionScope.userinfo.uiid }" id="uiid"/>
                <div class="m2-wel-profitLink" style="padding-top:26px; margin-left:10px;">
                    <a class="m2-profit-cha" id="recharge">徽商充值</a>
                    <a class="m2-profit-cha" id="withDrawls" style="margin-left:54px;">徽商提现</a><!--                 -->
                </div>
            </div>
        </div>
        <div class="m2-userInd-num">
            <div class="border">
                温馨提示：因数据处理存在延迟，项目还款时数值会存在异常波动，还款后2小时银行完成对账后显示为正常值。
            </div>
            <ul>
                <li class="m2-userIndnum-item">
                    <p class="m2-detail-tit">资产总计:
                    </p>
                    <span class="m2-detailNum-tur" style="color:#f5944f">${allMoneyUser}</span>
                    <i class="m2-userIndnum-equ" ></i>
                </li>
                <li class="m2-userIndnum-item">
                    <p class="m2-detail-tit">待收本金:

                    </p>
                    <span class="m2-detailNum-fal">${bidProfitMy}</span>
                    <i class="m2-userIndnum-add"></i>
                </li>
                <li class="m2-userIndnum-item">
                    <p class="m2-detail-tit">待收收益:
                    </p>
                    <span class="m2-detailNum-fal">${bidProfit}</span>
                    <i class="m2-userIndnum-add"></i>
                </li>
                <li class="m2-userIndnum-item">
                    <p class="m2-detail-tit">账户余额:
                        <b class="m2-detail-titIcon">
                            <u style="width:160px;text-align:left">
                                <em class="m2-detail-titHide-arr"></em>
                                <em class="m2-detail-titHide-arrBg"></em>
                                <!---->
                                徽商账户余额:${myUbalence}  </u>
                        </b>
                    </p>
                    <span class="m2-detailNum-fal">${sessionScope.user.ubalance} </span>
                </li>
            </ul>
        </div>
        <div class="m2-profitChart">
            <img src="/Finances/statics/front/statics/usercenter/images/m2-ajax-loading.gif" alt="" class="m2-chartLoading">
            <div class="m2-chart-head">
                <h3><i></i>收益走势</h3>
                <hr style="display:inline-block;width:110px;border:0;background-color:#0996cc;height:1px;margin-left:6px;"></h3>
                <hr style="display:inline-block;width:682px;border:0;background-color:#dadada;height:1px;margin-left:-4px;"></h3>
            </div>
            <div class="m2-profitChart-tit">
                <span class="m2-chartItemtit-day m2-chart-unsel" id="dayProFit">日收益</span>
                <span class="m2-chartItemtit-mon m2-chart-sel" id="mouthProFit">月收益</span>
            </div>
            <div style="background-color:white;">
            	<div id="main" style="width: 800px;height:400px;"></div>
            </div>
             <script type="text/javascript">
             var myChart = echarts.init(document.getElementById('main'));
             var mouthTime = new Array();
     			mouthTime = ${mouthList};
     		var mouthmoneyprofit = new Array();
     			mouthmoneyprofit = ${mouthProfits};
             var option = {
             	    title: {
             	        text: '月收益',
             	        subtext: '每天收益表'
             	    },
             	    tooltip: {
             	        trigger: 'axis'
             	    },
             	    legend: {
             	        data:['月收益']
             	    },
             	    toolbox: {
             	        show: true,
             	        feature: {
             	            dataZoom: {
             	                yAxisIndex: 'none'
             	            },
             	            dataView: {readOnly: false},
             	            magicType: {type: ['line', 'bar']},
             	            restore: {},
             	            saveAsImage: {}
             	        }
             	    },
             	    xAxis:  {
             	        type: 'category',
             	        boundaryGap: false,
             	        data:mouthTime
             	    },
             	    yAxis: {
             	        type: 'value',
             	        axisLabel: {
             	            formatter: '{value} 元'
             	        }
             	    },
             	    series: [
             	        {
             	            name:'日收益',
             	            type:'line',
             	            data:mouthmoneyprofit,
             	            markPoint: {
             	                data: [
             	                    {type: 'max', name: '日收益'}
             	                ]
             	            },
             	           
             	        },
             	      
             	    ]
             	};
             // 使用刚指定的配置项和数据显示图表。
             myChart.setOption(option);
        $('#dayProFit').click(function(){
            var myChart = echarts.init(document.getElementById('main'));
        	var dayTime = new Array();
        	dayTime = ${dayList};
        	var moneyprofit = new Array();
        	moneyprofit = ${dayProfits};
            var option = {
            	    title: {
            	        text: '日收益',
            	        subtext: '每天收益表'
            	    },
            	    tooltip: {
            	        trigger: 'axis'
            	    },
            	    legend: {
            	        data:['日收益']
            	    },
            	    toolbox: {
            	        show: true,
            	        feature: {
            	            dataZoom: {
            	                yAxisIndex: 'none'
            	            },
            	            dataView: {readOnly: false},
            	            magicType: {type: ['line', 'bar']},
            	            restore: {},
            	            saveAsImage: {}
            	        }
            	    },
            	    xAxis:  {
            	        type: 'category',
            	        boundaryGap: false,
            	        data:dayTime
            	    },
            	    yAxis: {
            	        type: 'value',
            	        axisLabel: {
            	            formatter: '{value} 元'
            	        }
            	    },
            	    series: [
            	        {
            	            name:'日收益',
            	            type:'line',
            	            data:moneyprofit,
            	            markPoint: {
            	                data: [
            	                    {type: 'max', name: '日收益'}
            	                ]
            	            },
            	           
            	        },
            	      
            	    ]
            	};
            myChart.setOption(option);
        });
        $('#mouthProFit').click(function(){
            var myChart = echarts.init(document.getElementById('main'));
            var mouthTime = new Array();
    		mouthTime = ${mouthList};
    		var mouthmoneyprofit = new Array();
    		mouthmoneyprofit = ${mouthProfits};
            var option = {
            	    title: {
            	        text: '月收益',
            	        subtext: '每天收益表'
            	    },
            	    tooltip: {
            	        trigger: 'axis'
            	    },
            	    legend: {
            	        data:['月收益']
            	    },
            	    toolbox: {
            	        show: true,
            	        feature: {
            	            dataZoom: {
            	                yAxisIndex: 'none'
            	            },
            	            dataView: {readOnly: false},
            	            magicType: {type: ['line', 'bar']},
            	            restore: {},
            	            saveAsImage: {}
            	        }
            	    },
            	    xAxis:  {
            	        type: 'category',
            	        boundaryGap: false,
            	        data:mouthTime
            	    },
            	    yAxis: {
            	        type: 'value',
            	        axisLabel: {
            	            formatter: '{value} 元'
            	        }
            	    },
            	    series: [
            	        {
            	            name:'日收益',
            	            type:'line',
            	            data:mouthmoneyprofit,
            	            markPoint: {
            	                data: [
            	                    {type: 'max', name: '日收益'}
            	                ]
            	            },
            	           
            	        },
            	      
            	    ]
            	};
            // 使用刚指定的配置项和数据显示图表。
            myChart.setOption(option);
        });
    </script>
    <input type="hidden" value="${mouthList}" id="mouthTime">
     <input type="hidden" value="${mouthProfits}" id="mouthmoneyprofit">
        </div>
        <div class="m2-backCalendar">
            <div class="m2-backCalendar-head" style="margin-bottom:8px;">
                <h3><i></i>回款日历</h3>
            </div>
            <div class="m2-backCalendar-con" style="height: 500px;">
                <div class="m2-backCalendar-lef">
                    <div class="m2-calendarItemuser">
                        <div id='container' style="width: 400px;height: 330px;"></div>
                    </div>
                    
                      <script>
    					var myCalendar = new SimpleCalendar('#container');
 					 </script>
                    <div class="b0-backDet">
                        <div class="b0-backLef" style="padding: 55px 0;">
                            <div class="b0-orange">
                                <span class="b0-lefTit" style="color:black">本期计划回款：${sessionScope.repayment.rmplan }&nbsp;&nbsp;元</span>
                            </div>
                            <div class="b0-purple">
                                <span class="b0-lefTit">本期实际回款：${sessionScope.repayment.rmface }&nbsp;&nbsp;元</span>
                            </div>
                        </div>
                        <c:set var="re_status" value="${sessionScope.repayment.rmstate }"/>
                        <div class="b0-backRig" style="padding: 55px 0;">
                            <div class="b0-rigTop">
                                <div class="b0-rigDis">
                                	<c:if test="${re_status==2 }"><i style="background-color:#FBBBA3;"></i></c:if>
                                	<c:if test="${re_status!=2 }"><i style="background-color:#D4D4D4;"></i></c:if>
                                	<span>待还款</span>
                                </div>
                                <div class="b0-rigDis" style="margin-left:20px;">
                                	<c:if test="${re_status==3 }"><i style="background-color:#FBBBA3;"></i></c:if>
                                	<c:if test="${re_status!=3 }"><i style="background-color:#D4D4D4;"></i></c:if>
                                	<span>已结清</span>
                                </div>
                            </div>
                            <div class="b0-rigBot">
                                <i class="b0-iconAdv"></i><span class="b0-botDet">提前还款</span><span class="b0-backMore"><span><i></i>借款人在有能力且有意愿提前归还本金的时候，提前清偿了所有剩余本金及实际借款期间所产生的利息，则投资者的本金及实际借款期间所产生的利息会即时返还至投资者的账户；<br><b>收到提前还款：当日有提前清偿的本息到账；<br>提前还款：当日有计划还款的资金已于日前清偿本息；</b></span></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="m2-backCalendar-rig">
                    <div class="m2-backRig-nextDate">
						<%
						 String strTime =""; 
						SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd");
						  Date dNow = new Date();
						  Fabiao fa =(Fabiao)session.getAttribute("fabiao");
						  try{
							  if(fa!=null){
									 dNow = ft.parse(fa.getFhuanstat());
							}
							strTime = ft.format(dNow);
						  }catch(Exception exception){
							  
						  }
						%>
                        <span class="m2-nextDatetit">开始还款日期</span><a id="paymentdetail-a">回款细节</a>
                        <p class="m2-nextDatecon" id="next_pay_day" style="font-size:18px;"><%=strTime %></p>
                    </div>
                    <div class="m2-backRiginfo">
                        <p class="m2-backRiginfo-amo">还款总期限：<span id="next_pay_day_num">${sessionScope.fabiao.ffqqx }</span>个</p>
                        <p class="m2-backRiginfo-tit">已还款期限:<span id="next_pay_day_num">${sessionScope.fabiao.fyhqx }</span>个</p>
                        <p class="m2-backRiginfo-num"><span id="next_pay_day_income"></span></p>
                    </div>
                </div>
            </div>
            <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/jquery.datetimepicker.modified.js"></script>
         </div>
     
    </div>
    <div style="display:none;">
        <span id='ntitle'></span>
        <span id='nmsg'></span>
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
    <script>
    function qiandao(){
        $.ajax({
            type:"POST",
            url: "${pageContext.request.contextPath}/user/usersing",
            success: function (data) {
            	data = eval('(' + data+ ')');  
                if(data.isupdate==1){
                    if(data.sing.siglevel==4 ||data.sing.siglevel==5){
                    	//4级或者5级不添加积分
                        $("#mydetail_num").attr("data",data.sing.siggrowth);
                    }else{
                    	//不是4级或者5级添加积分，时间原因直接+1
                        $("#mydetail_num").attr("data",parseInt(data.sing.siggrowth+1));
                    }
                    //成长值
                    $("#mydetail_num").text(data.sing.siggrowth);
                    $("#sign").css("backgroundColor","#b7b6b6");
                    $("#sign").text('已签到');
                    $('#day').html(parseInt($('#day').html())+1);
                    //获取成长值
                    var growth=parseInt($('#growth').html())+1;
                    if (growth>=10){
                        growth=10;
                    }
                    $('#growth').html(growth);
                    $('#today').html('明天');
                    var scale=$("#mydetail_num").text()/$("#mydetail_num").attr("data")*100+"%";
                    $("#growth_scale .bg").animate({width:scale},900);
                    $('#integral').html(data.sing.integral);
                    $('#vipname').html(data.sing.name);
                    switch(data.sing.siglevel){
                        case 0:
                            $('.right .m2-userMsg-iconLv a').attr('class','m2-iconLevel-normal');
                            $('.right .m2-userMsg-iconLv a span').text('帮主');
                            break;
                        case 1:
                            $('.right .m2-userMsg-iconLv a').attr('class','m2-iconLevel-iron');
                            $('.right .m2-userMsg-iconLv a span').text('铁帮主');
                            break;
                        case 2:
                            $('.right .m2-userMsg-iconLv a').attr('class','m2-iconLevel-copper');
                            $('.right .m2-userMsg-iconLv a span').text('铜帮主');
                            break;
                        case 3:
                            $('.right .m2-userMsg-iconLv a').attr('class','m2-iconLevel-gold');
                            $('.right .m2-userMsg-iconLv a span').text('金帮主');
                            break;
                        case 4:
                            $('.right .m2-userMsg-iconLv a').attr('class','m2-iconLevel-paltinum');
                            $('.right .m2-userMsg-iconLv a span').text('白金帮主');
                            $('#desc').text('您已然是一人之下，万人之上，无比荣耀');
                            break;
                        case 5:
                            $('.right .m2-userMsg-iconLv a').attr('class','m2-iconLevel-svip');
                            $('.right .m2-userMsg-iconLv a span').text('特邀帮主');
                            $('#desc').text('爱钱帮最高等级，王者荣耀');
                            break;
                    }
                }
            }
        });
	}
    
        $(function(){
        	//判断用户是否签到
        	 $.post("${pageContext.request.contextPath}/user/checkusersing",function(result){
        		 if(result==0){
        			 $('#yiqd').remove();
             		var cc = '<button id="sign" onclick="qiandao();"  style="background-color:#2894FF;outline:none;" >签到</button>  ';
             		$('#msgcount').before(cc);
        		 }
        	});
        	
        	//   成长值 /成长值的date*100
           // var scale= $("#mydetail_num").text() / $("#mydetail_num").attr("data")*100+"%";
            var scale ="24%"
        	$("#growth_scale .bg").animate({width:scale},900);

        })
        var oP=document.getElementById('allP');
        var oClose=document.getElementById('close');
        //oP.style.display='none';
        oClose.onclick=function(){
            oP.style.display='none';
        };

        /**
         * 已结束的项目不允许查看合同
         */
        function linkContractContract(that){
            var bid=that.getAttribute('bid');
            var status = that.getAttribute('status');
            if(status==7||status==11){
                oP.style.display='block';
            } else {
                window.open("member-contract-investor.shtml?id="+bid,"_blank");
            }
        }
        /**
         * 已结束的项目不允许查看合同
         */
        function linkContracttransContract(that){
            var bid=that.getAttribute('bid');
            var status = that.getAttribute('status');
            if(status==7||status==11){
                oP.style.display='block';
            } else {
                window.open("member-contracttrans-investor.shtml?id="+bid,"_blank");
            }
        }
        /**
         * 已结束的项目不允许下载合同
         */
        function linkDownload(that){
            var bid=that.getAttribute('bid');
            var status = that.getAttribute('status');
            if(status==7||status==11){
                oP.style.display='block';
            } else {
                window.open("Member-Contract-createAndSendPdfbyid?id="+bid,"_blank");
            }
        }
        
        
    </script>
    
        <script>
		$('#recharge').click(function(){
			var uiopenstatus = $('#uiopenstatus').val();
			var uiid = $('#uiid').val();
			if(uiopenstatus==0){
				$('#dialog-info-divs').show();
	            $('#dialog-info-texts').text("请先实名认证!");
	            
	            $('.m2-user-confirmBtn').click(function () {
	            	window.location="http://127.0.0.1:8080/Finances/userverify?uiid="+uiid+"&nameNumber="+1;
	            })
	            $('.m2-userCentercommon-confirmClose').click(function () {
	                $('.m2-userCentercommon-confirm').hide();
	            });
			}else if(uiopenstatus==1){
				location.href="/Finances/toopen";
			}
			else if(uiopenstatus==2){
				location.href="/Finances/torecharge?uiid="+uiid;
			}
			
		});
		$('#withDrawls').click(function(){
			var uiopenstatus = $('#uiopenstatus').val();
			var uiid = $('#uiid').val();
			if(uiopenstatus==0){
				$('#dialog-info-divs').show();
	            $('#dialog-info-texts').text("请先实名认证!");
	            
	            $('.m2-user-confirmBtn').click(function () {
	            	window.location="http://127.0.0.1:8080/Finances/userverify?uiid="+uiid+"&nameNumber="+1;
	            })
	            $('.m2-userCentercommon-confirmClose').click(function () {
	                $('.m2-userCentercommon-confirm').hide();
	            });
			}else if(uiopenstatus==1){
				location.href="/Finances/toopen";
			}
			else if(uiopenstatus==2){
				location.href="/Finances/towithdraw?uiid="+uiid;
			}
			
		});
        $(document).ready(function () {
            //用户通知
            getMsg();
            //用户问候语图标
            getGreeting();

            //用户认证
            userVerify();
            //收益金颜色
            moneyColor();
            //异步加载月收益图
            fitBottom();
        });

        function getMsg() {

            var title = $('<div>' + $('#ntitle').text() + '</div>').text();
            var msg = $('<div>' + $('#nmsg').text() + '</div>').text();
            if (title == '') {
                $('.m2-msgBox').hide();
            }
            if (title.length > 10) {
                $('#notice-text').text(title);
            } else {
                if (!msg) {
                    $('.m2-msgBox').hide();
                } else {
                    if (msg.length > 55) {
                        msg = msg.substr(0, 55);
                        msg += '...  ';
                    }
                    $('#notice-text').text(msg);
                }
            }
        }
		//根据当前时间分别做样式选择
        function getGreeting() {
            var date = new Date();
            var H = date.getHours();
            var day = '';
            if (H <= 5) {
            	//晚上
                icon = '<i class="m2-hello-nig">';
                day ='晚上好'
            } else if (H <= 12) {
            	//上午
                icon = '<i class="m2-hello-mor">';
                day ='上午好'
            } else if (H <= 18) {
            	//下午
                icon = '<i class="m2-hello-aft">';
                day ='下午好'
            } else if (H <= 20) {
            	//晚上
                icon = '<i class="m2-hello-nig">';
                day ='晚上好'
            } else {
            	//晚上
                icon = '<i class="m2-hello-nig">';
                day ='晚上好'
            }
            $('#thistime').html('');
            $('#thistime').html(day);
            $('#greeting').prepend(icon);
        }

        function userVerify() {

            var i = 0;
            if (1 == '0') {
                $('#verify_id').prop('class', 'm2-iconUser-tur');
                i++;
            }
            if (1 == '1') {
                $('#verify_phone').prop('class', 'm2-iconPho-tur');
                i++;
            }
            if (1 == '0') {
                $('#verify_email').prop('class', 'm2-iconEmail-tur');
                i++;
            }
            if (i == 1) {
                $('#safe_level').text('低');
            } else if (i == 2) {
                $('#safe_level').text('中');
            } else if (i == 3) {
                $('#safe_level').text('高');
                $('#safe_level_url').hide();
            } else {
                $('#safe_level').text('极低');
            }
            var j = 0;
            $('#safe_level_bar i').each(function () {
                if (j < i) {
                    $(this).prop('class', 'm2-levelIcon-tur');
                    j++;
                }
            });
        }

        function moneyColor() {

            var a;
            $('span.m2-detailNum-fal').each(function () {
                a = $(this).text();
// 			if(!isNaN(a)){
                if (a != 0) {
                    $(this).prop('class', 'm2-detailNum-tur');
                } else {
                    $(this).text('0.00');
                }
// 			}
            });
        }
		
        function getList(data, key) {
            var l = Array();
            for (k in data) {
                l.push(data[k][key]);
            }
            return l;
        }
        function getPaymentDetail(date) {
            //日期.分割
            window.location.href = '/usercenter-investcontrol-dayrepayment?date=' + date;
        }
        //日历日期点击事件
        function getPaymentList(y, m, d) {
            window.location.href = '/usercenter-investcontrol-dayrepayment?date=' + y + '.' + m + '.' + d;
        }


        //提示框
        function showMsgs(text) {
            $('#dialog-info-div').show();
            $('#dialog-info-text').text(text);
        }

        //js:
        //$().shijian
        //$(".class")
        //$("#id")


        //close
        $('.m2-userCentercommon-confirmClose,.m2-user-confirmBtn').click(function(){
            $('#dialog-info-div').hide();
            $('#dialog-info-text').text("");
        });
        var card = '';

        function showMsg() {

            //当前银行卡
            if(!card) {
                //没有绑卡
                showMsgs('您还未绑卡，现在确定去绑卡吗？');
                return;
            } else {
                $('.m2-userCommon-confirmSuc').html('使用一键转账功能可将您的汇付账户中资金转移至您的徽商银行账户（无任何手续费），资金预计在1-3个工作日内到账，请耐心等候！');
                $('.m2-userCentercommon-bg').show();
                //  $('.m2-userCentercommon-confirm').show();
                $('#dialog-info-div1').show();
                return;
            }
        }
    </script>
     <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/m2-userCenter.js"></script>
</body>
</html>