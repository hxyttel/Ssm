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
		<title>我的红包 | 亿信金融</title>
	</head>
	<body>
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
	            <h3><i class="m2-tickHead-red1"></i>我的红包</h3>
	        </div>
	        <div class="m2-recharge-tips" style="margin-bottom:10px;">
	            <p class="m2-ticPsg-nor">红包使用</p>
	            <ul style="padding-bottom:18px;">
	                <li><i class="m2-recharge-tips01"></i><b>投资时根据单笔投资金额选择红包</b></li>
	                <li><i class="m2-recharge-tips02"></i><b>一次投资可使用一个红包</b></li>
	                <li><i class="m2-recharge-tips03"></i><b>红包过期后将不能使用</b></li>
	            </ul>
	        </div>
	
	        <div class="m2-ticketHead">
	            <h3><i class="m2-tickHead-red2"></i>红包列表</h3>
	        </div>
	        <div class="m2-ticSearch">
	            <ul>
	                <li class="m2-ticSea-tit">红包状态：</li>
	                <li class="m2-ticSea-sel m2-ticSea-click" data="1"><span>未使用</span></li>
	                <li class="m2-ticSea-unsel m2-ticSea-click" data="2"><span>已使用</span></li>
	                <li class="m2-ticSea-unsel m2-ticSea-click" data="3"><span>已过期</span></li>
	            </ul>
	        </div>
	        
	       	<!-- 未使用的红包 -->
	        <div id="tab1" class="m2-ticSea-sel-content">
	            <div class="m2-ticResult">
	                <div class="m2-ticResult_container">
						<c:if test="${listniu==null || fn:length(listniu)==0 }">
							<center>
								<img src="/Finances/statics/front/images/nodata.png">	
								<h1>你还没有红包哦</h1>
							</center>
						</c:if>
						<c:forEach items="${listniu}" var="wsyrm">
		                    <div class="m2_ticresult_reword m2_ticresult_unuse">						<div class="packet_title">
		                        <span>${wsyrm.rimage}</span>
		                        <span class="packet_where"></span>
		                    </div>
	                        <div class="packet_introduce_left">
	                            <span class="number">${wsyrm.rmoney}</span>
	                            <span class="unit">元</span>
	                        </div>
	                        <div class="packet_introduce_right">
	                            <div class="packet_introduce_right_con">
	
	                                <p>·&nbsp;投资额≥ ${wsyrm.rcondition} 元可使用</p>
	                            </div>
	                            <i></i>
	                        </div>
	                        <div class="packet_bottom">
	                            <span>起效期：${wsyrm.rstardtime}</span>
	                            <span class="packet_endtime">有效期至：${wsyrm.rendtime}</span>
	                        </div>
	                    </div>
	                    </c:forEach>
	                    <!--  -->
	                    
	                    </div>
	                
	            </div>
	        </div>
	        
	        <!-- 已使用的红包 -->
	        <div id="tab2" class="m2-ticSea-sel-content" style="display:none;">
	            <div class="m2-ticResult">
	                <div class="m2-ticResult_container">
	                	<c:if test="${listuse==null || fn:length(listuse)==0 }">
							<center>
								<img src="/Finances/statics/front/images/nodata.png">	
								<h1>你还没有使用过的红包哦</h1>
							</center>
						</c:if>
						<c:forEach items="${listuse}" var="ysyrm">
		                    <div class="m2_ticresult_reword m2_ticresult_unuse">						<div class="packet_title">
		                        <span>${ysyrm.rimage}</span>
		                        <span class="packet_where"></span>
		                    </div>
	                        <div class="packet_introduce_left">
	                            <span class="number">${ysyrm.rmoney}</span>
	                            <span class="unit">元</span>
	                        </div>
	                        <div class="packet_introduce_right">
	                            <div class="packet_introduce_right_con">
	
	                                <p>·&nbsp;投资额≥ ${ysyrm.rcondition} 元可使用</p>
	                            </div>
	                            <i></i>
	                        </div>
	                        <div class="packet_bottom">
	                            <span>起效期：${ysyrm.rstardtime}</span>
	                            <span class="packet_endtime">有效期至：${ysyrm.rendtime}</span>
	                        </div>
	                    </div>
	                    </c:forEach>
	                </div>
	            </div>
	        </div>
	        
	        <!-- 已过期的红包 -->
	        <div id="tab3" class="m2-ticSea-sel-content" style="display:none;">
	            <div class="m2-ticResult">
	                <div class="m2-ticResult_container">
	                	<c:if test="${listover==null || fn:length(listover)==0 }">
							<center>
								<img src="/Finances/statics/front/images/nodata.png">	
								<h1>你还没有过期了的红包哦</h1>
							</center>
						</c:if>
						<c:forEach items="${listover}" var="ygqrm">
		                    <div class="m2_ticresult_reword m2_ticresult_unuse" >						
		                    <div class="packet_title" style="background-color: #ccc;">
		                        <span>${ygqrm.rimage}</span>
		                        <span class="packet_where"></span>
		                    </div>
	                        <div class="packet_introduce_left">
	                            <span class="number" style="font-size: 30px;">${ygqrm.rmoney}</span>
	                            <span class="unit">元</span>
	                        </div>
	                        <div class="packet_introduce_right">
	                            <div class="packet_introduce_right_con">
	
	                                <p>·&nbsp;投资额≥ ${ygqrm.rcondition} 元可使用</p>
	                            </div>
	                            <i></i>
	                        </div>
	                        <div class="packet_bottom" style="background-color: #ccc;">
	                            <span>起效期：${ygqrm.rstardtime}</span>
	                            <span class="packet_endtime">有效期至：${ygqrm.rendtime}</span>
	                        </div>
	                    </div>
	                    </c:forEach>
	                </div>
	               
	            </div>
	        </div>
	        <div class="m2-ticMoreadd">
	            <span>加载更多</span>
	        </div>
	    </div>
	    <script type="text/javascript">
	        var wsyljze="38";
	        var ysyljze="0";
	        var ygqljze="0";
	
	        //筛选栏点击
	        $('.m2-ticSearch ul li').click(function () {
	            if ($(this).hasClass('m2-ticSea-unsel')) {
	                $(".m2-ticSea-click").addClass('m2-ticSea-unsel').removeClass('m2-ticSea-sel');
	                $(this).addClass('m2-ticSea-sel').removeClass('m2-ticSea-unsel');
	                $(".m2-ticSea-sel-content").hide();
	                $("#tab"+$(this).attr("data")).show();
	            }
	        });
	
	        //发送页数的数组
	        var selectpage=[2,2,2];
	
	        $(".m2-ticMoreadd").click(function(){
	            var type=$(".m2-ticSearch .m2-ticSea-sel").attr("data");
	            var page=selectpage[Number(type)-1];
	            var dataStr;
	            $.ajax({
	                url: 'usercenter-rewardcontrol-getRewardNew',
	                type: 'POST',
	                data: {
	                    index: page,
	                    cate: type,
	                    type: 1
	                },
	                success:function(data){
	                    var obj = eval('(' + data + ')');
	                    var str="";
	                    var dataStr="";
	
	                    for (var i in obj['list']) {
	                        var xtwz="";
	                        if(type==1){
	                            if(obj['list'][i]['type']==1){
	                                str="<div class='m2_ticresult_reword m2_ticresult_unuse'>";
	                            }else if (obj['list'][i]['type']==3){
	                                str="<div class='m2_ticresult_reword m2_ticresult_unactive'>";
	                            }
	                        }else if(type==2){
	                            str=" <div class='m2_ticresult_reword m2_ticresult_hasused'>";
	                        }else if(type==3){
	                            str=" <div class='m2_ticresult_reword m2_ticresult_endtime'>";
	                        }
	                        console.log(obj['list'][i]['allow_project_period']);
	                        if(obj['list'][i]['allow_project_period']==0){
	
	                        }else{
	                            xtwz="·&nbsp;限投"+obj['list'][i]['allow_project_period']+"个月及以上项目";
	                        }
	
	                        dataStr +=str+"<div class='packet_title'><span>"+obj['list'][i]['info']+"</span>"
	                        +"<span class='packet_where'>"+obj['list'][i]['allow_client_type']+"</span></div><div class='packet_introduce_left'>"
	                        +"<span class='number'>"+obj['list'][i]['money']+"</span><span class='unit'>元</span></div>"
	                        +"<div class='packet_introduce_right'><div class='packet_introduce_right_con'><p>"+xtwz+"</p><p>"
	                        +"·&nbsp;投资额≥"+obj['list'][i]['use_condition']+"元可使用</p></div><i></i></div><div class='packet_bottom'><span>起效期："+obj['list'][i]['date1']+"</span><span class='packet_endtime'>有效期至："+obj['list'][i]['date2']+"</span></div></div>";
	                    }
	                    if(type==1){
	                        wsyljze= Number( wsyljze) +Number(obj['ljkyze']) ;
	                        $("#wsyljkyze").html("累计可用总额："+wsyljze+"元");
	                    }else if(type==2){
	                        ysyljze=Number(ysyljze) +Number( obj['ljkyze']);
	                        $("#ysyljkyze").html("累计可用总额："+ysyljze+"元");
	                    }else if(type==3){
	                        ygqljze=Number(ygqljze)+Number( obj['ljkyze']);
	                        $("#ygqljkstze").html("累计可用总额："+ygqljze+"元");
	                    }
	
	                    $("#tab"+type).find(".m2-ticResult_container").append(dataStr);
	                    selectpage[Number(type)-1]++;
	                }
	            });
	        });
	    </script>
	</body>
</html>