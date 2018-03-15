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
		<meta name="keywords" content="网贷平台,网络借贷，网络赚钱项目,理财产品">
    <meta name="description" content="爱钱帮网贷平台为您提供网络赚钱项目；为此相继推出了许多新的理财产品，在为您创造高收益的同时也优化了理财产品模式。网络借贷，就选爱钱帮。">
    <meta charset="UTF-8">
    <!--[if lt IE 9]>
    	<script src="<%=path%>/statics/front/statics/newcommon/js/html5shiv.js"></script>
    <![endif]-->
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
		<title>我的加息券 | 亿信金融</title>
	</head>
	<body>
			<div class="m2-userCentercommon-bg" style="display: none"></div>
			<div class="m2-addConfirm" style="display: none">
		    <h3 class="m2-addConfirm-head"><i></i>激活加息券</h3>
		    <div class="m2-addConfirmain">
		        <div class="m2-addConfirm-ipt">
		            <span>加息码：</span>
		            <input type="text" placeholder="请输入兑换码" id="reward_code">
		        </div>
		        <p class="m2-addConfir-psg"></p>
		        <div class="m2-addConfirbtn">
		            <span class="m2-addConbtn-act">激活</span>
		            <span class="m2-addConbtn-can">取消</span>
		        </div>
		    </div>
		</div>
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
	    
	   	<div class="m2-ticketCon">
	        <div class="m2-ticketHead">
	            <h3><i class="m2-tickHead-red1"></i>我的加息券</h3>
	        </div>
	        <div class="m2-recharge-tips" style="margin-bottom:10px;">
	            <span class="m2-ticketConfirmbtn">加息券兑换</span>
	            <p class="m2-ticPsg-nor">加息券使用</p>
	            <ul style="padding-bottom:18px;">
	                <li><i class="m2-recharge-tips01"></i><b>投资时根据单笔投资金额选择加息券</b></li>
	                <li><i class="m2-recharge-tips02"></i><b>一次投资可使用一个加息券</b></li>
	                <li><i class="m2-recharge-tips03"></i><b>加息券过期后将不能使用</b></li>
	            </ul>
	        </div>
	
	        <div class="m2-ticketHead">
	            <h3><i class="m2-tickHead-red2"></i>加息券列表</h3>
	        </div>
	        <div class="m2-ticSearch">
	            <ul>
	                <li class="m2-ticSea-tit">加息券状态：</li>
	                <li class="m2-ticSea-sel" onclick="showTab(1)"><span>未使用</span></li>
	                <li class="m2-ticSea-unsel" onclick="showTab(2)"><span>已使用</span></li>
	                <li class="m2-ticSea-unsel" onclick="showTab(3)"><span>已过期</span></li>
	            </ul>
	        </div>
	        
	        
	          <!-- 未使用的代金息券 -->
	        <div id="tab1">
	            <div class="m2-ticResult">
	                <div id="list1"  class="m2-ticResult_container">
			                <div class="m2-ticResult_container">
								<c:if test="${listniu==null || fn:length(listniu)==0 }">
									<center>
										<img src="/Finances/statics/front/images/nodata.png">	
										<h1>你还没有代金券哦</h1>
									</center>
								</c:if>
								<c:forEach items="${listniu}" var="wsyrm">
				                    <div class="m2_ticresult_reword m2_ticresult_unuse">						
				                    <div class="packet_title">
				                        <span>${wsyrm.uvimage}</span>
				                        <span class="packet_where"></span>
				                    </div>
			                        <div class="packet_introduce_left">
			                            <span class="number">${wsyrm.uvmoney}</span>
			                            <span class="unit">元</span>
			                        </div>
			                        <div class="packet_introduce_right">
			                            <div class="packet_introduce_right_con">
			
			                                <p>·&nbsp;投资额≥ ${wsyrm.ucondition} 元可使用</p>
			                            </div>
			                            <i></i>
			                        </div>
			                        <div class="packet_bottom">
			                            <span>起效期：${wsyrm.uvstartDate}</span>
			                            <span class="packet_endtime">有效期至：${wsyrm.uvendDate}</span>
			                        </div>
			                    </div>
			                    </c:forEach>
			                    <!--  -->
			                    </div>
	                	</div>
	            </div>
	            <div class="m2-ticMoreadd" id="loadmore1">
	                <span onclick="getMore(1)">加载更多</span>
	            </div>
	        </div>
	        
	        <!-- 已使用的代金券 -->
	        <div id="tab2" style="display:none;">
	            <div class="m2-ticResult">
	                <div id="list2"  class="m2-ticResult_container">
						<div class="m2-ticResult_container">
								<c:if test="${listuse==null || fn:length(listuse)==0 }">
									<center>
										<img src="/Finances/statics/front/images/nodata.png">	
										<h1>你还没有已使用的代金券哦</h1>
									</center>
								</c:if>
								<c:forEach items="${listuse}" var="ysyrm">
				                    <div class="m2_ticresult_reword m2_ticresult_unuse">						
				                    <div class="packet_title">
				                        <span>${ysyrm.uvimage}</span>
				                        <span class="packet_where"></span>
				                    </div>
			                        <div class="packet_introduce_left">
			                            <span class="number">${ysyrm.uvmoney}</span>
			                            <span class="unit">元</span>
			                        </div>
			                        <div class="packet_introduce_right">
			                            <div class="packet_introduce_right_con">
			
			                                <p>·&nbsp;投资额≥ ${ysyrm.ucondition} 元可使用</p>
			                            </div>
			                            <i></i>
			                        </div>
			                        <div class="packet_bottom">
			                            <span>起效期：${ysyrm.uvstartDate}</span>
			                            <span class="packet_endtime">有效期至：${ysyrm.uvendDate}</span>
			                        </div>
			                    </div>
			                    </c:forEach>
			                    <!--  -->
			                    </div>
	                </div>
	            </div>
	            <div class="m2-ticMoreadd" id="loadmore2">
	                <span onclick="getMore(2)">加载更多</span>
	            </div>
	        </div>
	        
	        <!-- 已使用的代金券 -->
	        <div id="tab3" style="display:none;">
	            <div class="m2-ticResult">
	                <div id="list3"  class="m2-ticResult_container">
						<div class="m2-ticResult_container">
								<c:if test="${listover==null || fn:length(listover)==0 }">
									<center>
										<img src="/Finances/statics/front/images/nodata.png">	
										<h1>你还没有过期的代金券哦</h1>
									</center>
								</c:if>
								<c:forEach items="${listover}" var="ygqrm">
				                    <div class="m2_ticresult_reword m2_ticresult_unuse">						
				                    <div class="packet_title">
				                        <span>${ygqrm.uvimage}</span>
				                        <span class="packet_where"></span>
				                    </div>
			                        <div class="packet_introduce_left">
			                            <span class="number">${ygqrm.uvmoney}</span>
			                            <span class="unit">元</span>
			                        </div>
			                        <div class="packet_introduce_right">
			                            <div class="packet_introduce_right_con">
			                                <p>·&nbsp;投资额≥ ${ygqrm.ucondition} 元可使用</p>
			                            </div>
			                            <i></i>
			                        </div>
			                        <div class="packet_bottom">
			                            <span>起效期：${ygqrm.uvstartDate}</span>
			                            <span class="packet_endtime">有效期至：${ygqrm.uvendDate}</span>
			                        </div>
			                    </div>
			                    </c:forEach>
			                    <!--  -->
			                  </div>
	                </div>
	                
	            </div>
	            <div class="m2-ticMoreadd" id="loadmore3">
	                <span onclick="getMore(3)">加载更多</span>
	            </div>
	        </div>
	    </div>
	    <script type="text/javascript">
	        //筛选栏点击allow_client_type
	        $('.m2-ticSearch ul li').click(function () {
	            if ($(this).hasClass('m2-ticSea-unsel')) {
	                $(this).addClass('m2-ticSea-sel').removeClass('m2-ticSea-unsel');
	                $(this).siblings('.m2-ticSea-sel').addClass('m2-ticSea-unsel').removeClass('m2-ticSea-sel');
	            }
	        });
	
	        var index = [0, 1, 1, 1];
	        var total = [0, 0, 0, 0];
	        var async = false;
	        getMore(1);
	        getMore(2);
	        getMore(3);
	        function showTab(index) {
	            $('#tab1').hide();
	            $('#tab2').hide();
	            $('#tab3').hide();
	            $('#tab' + index).show();
	        }
	        function getMore(cate) {
	            $.ajax({
	                url: 'usercenter-rewardcontrol-getReward',
	                type: 'POST',
	                async: async,
	                data: {
	                    index: index[cate],
	                    cate: cate,
	                    type: 2
	                },
	                complete: function () {
	                    async = true;
	                },
	                success: function (data) {
	                    var obj = eval('(' + data + ')');
	                    var str="";
	                    var dataStr="";
	                    var qx="";
	                    for (var i in obj['list']) {
	                        total[cate]++;
	                        if (cate == 1) {
	                            str="<div class='m2_ticresult_reword m2_ticresult_unuse'>";
	                            $('#total' + cate).html('<i></i>累计可用加息卷：' + total[cate] + '个');
	                        } else if (cate == 2) {
	                            str=" <div class='m2_ticresult_reword m2_ticresult_hasused'>";
	                            $('#total' + cate).html('<i></i>累计已使用加息卷：' + total[cate] + '个');
	                        } else if (cate == 3) {
	                            str=" <div class='m2_ticresult_reword m2_ticresult_endtime'>";
	                            $('#total' + cate).html('<i></i>累计已过期加息卷：' + total[cate] + '个');
	                        }
	
	                        if(obj['list'][i]['allow_project_period']==1){
	                            qx="·&nbsp;限投"+obj['list'][i]['allow_project_period']+"个月项目";
	                        }else if(obj['list'][i]['allow_project_period']==0){
	
	                        }else{
	                            qx="·&nbsp;限投"+obj['list'][i]['allow_project_period']+"个月及以下项目";
	                        }
	
	                        dataStr +=str+"<div class='packet_title'><span>"+obj['list'][i]['info']+"</span>"
	                        +"<span class='packet_where'>"+obj['list'][i]['allow_client_type']+"</span></div><div class='packet_introduce_left'>"
	                        +"<span class='number'>"+obj['list'][i]['percentage']+"</span><span class='unit'>%</span></div>"
	                        +"<div class='packet_introduce_right'><div class='packet_introduce_right_con'><p>"+qx+"</p><p>"
	                        +"·&nbsp;投资额≥"+obj['list'][i]['use_condition']+"元可使用</p></div><i></i></div><div class='packet_bottom'><span>起效期："+obj['list'][i]['date1']+"</span><span class='packet_endtime'>有效期至："+obj['list'][i]['date2']+"</span></div></div>";
	
	                    }
	                    $('#list' + cate).append(dataStr);
	                    if (obj['totalpage'] <= index[cate]) {
	                        $('#loadmore' + cate).hide();
	                    }
	                    index[cate]++;
	                }
	            });
	        }
	
	        //加息券兑换部分
	        $('.m2-addConfirm-head i,.m2-addConbtn-can').click(function () {
	            $('.m2-userCentercommon-bg,.m2-addConfirm').hide();
	        });
	        $('.m2-ticketConfirmbtn').click(function () {
	            $('#reward_code').val('');
	            $('.m2-addConfir-psg').html('');
	            $('.m2-addConbtn-can').text('取消');
	            $('.m2-userCentercommon-bg,.m2-addConfirm').show();
	        });
	        $('.m2-addConbtn-act').click(function () {
	            $.ajax({
	                url: '/usercenter-rewardcontrol-rewardExchange',
	                data: {
	                    rewardcode: $('#reward_code').val()
	                },
	                success: function (data) {
	                    var obj = eval('(' + data + ')');
	                    var msg = '';
	                    if (obj['status'] == 1) {
	                        msg = '<i class="m2-addConfir-tur"></i>帮主加息券已激活成功!';
	                        $('.m2-addConbtn-can').text('关闭');
	                        index[1] = 1;
	                        total[1] = 0;
	                        $('#list1').html('');
	                        $('#loadmore1').show();
	                        getMore(1);
	                    } else {
	                        msg = '<i class="m2-addConfir-fal"></i>' + obj['msg'];
	                    }
	                    $('.m2-addConfir-psg').html(msg);
	                }
	            });
	        });
	    </script>
	</body>
</html>