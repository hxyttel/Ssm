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
		    <title>邀请好友 | 亿信金融 </title>
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
		</head>
	<body style="background:url('/Finances/statics/front/images/two.jpg');background-size:100% 100%;">
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
		<jsp:include page="include/head.jsp"></jsp:include>
		<!-- 头部end-->
		
		<!-- 内容 -->
		
		<!-- 树start -->
	    <jsp:include page="include/tree.jsp"></jsp:include>
	    <!-- 树end -->
		
		    <body>
		    <div class="m2-userCentermanage-con">
		        <div class="m2-userInvit-head">
		            <h3><img src="/Finances/statics/front/statics/usercenter/images/invite_friends1.png">邀请好友</h3>
		        </div>
		        <a href="#">
		            <img src="/Finances/statics/front/statics/usercenter/images/invitBanner.jpg" alt="" class="m2-userInvbanner">
		        </a>
		        <div class="m2-userInvcop">
		            <div class="m2-userInv-wx">
		                <h4><div class="solid"></div>&ensp;微信邀请&ensp;<div class="solid"></div></h4>
		                <img src="/Finances/${sessionScope.user.qrcode}" alt="" width="120px" height="120px">
		                <p>用户扫描手机二维码分享给好友</p>
		            </div>
		            <div class="m2-userInv-url">
		            	<input type="hidden" name="addIp" id="addIp" value="${sessionScope.addressIp}"/>
		            	<input type="hidden" name="uinvite" id="uinvite" value="${sessionScope.user.uinvite}"/>
		                <h4><div class="solid"></div>&ensp;发送邀请链接&ensp;<div class="solid"></div></h4>
		                <input class="shareCode" type="text" value="http://${sessionScope.addressIp}:8080/Finances/user/toLoginHaveYaoqing?phone=${sessionScope.user.uphone}" readonly>
		                <button class="weiboShare"><img src="/Finances/statics/front/statics/usercenter/images/invite_friends2.png" style="vertical-align:-1px;margin-right:6px;">微博分享</button>
		                <button class="copyLink">复制邀请链接</button>
		            </div>
		        </div>
		        <div class="inviteFriendTable">
		            <div class="topclick">
		                <ul>
		                    <li index="0" class="selected" data="showcontent1">邀请记录</li>
		                    <li index="1" data="showcontent2">奖励规则</li>
		                    <li index="2" data="showcontent3">活动说明</li>
		                </ul>
		                <div class="clickanimate">
		                    <div class="sanjiao"></div>
		                </div>
		            </div>
		            <div class="showcontent1 showcontent">
		                <table>
		                    <tr style="background-color:#0996cc;color:white;height:40px;font-size:14px;">
		                        <th>好友手机号</th>
		                        <th>好友注册时间</th>
		                        <th>奖励原因</th>
		                        <th>奖励详情</th>
		                    </tr>
		                    <c:forEach items="${listUser}" var="user">
		                    	<tr>
		                    		<td>${user.uphone}</td>
		                    		<td>${user.uregTime }</td>
		                    		<td>注册亿信金融平台</td>
		                    		<td>奖励了${user.uregTime }注册平台50红包和30代金券</td>
		                    	</tr>
		                    </c:forEach>
		                </table>
		            </div>
		            <div class="showcontent2 showcontent">
		                <h5 style="margin-top:0;">奖励规则：</h5>
		                <p>1.被邀请人通过邀请人的专属链接或二维码注册爱钱帮理财平台，即为推荐人和被邀请人关系；</p>
		                <p>2.每邀请一人注册并完成首笔投资，即获得100个成长值；</p>
		                <p>3.每邀请一人注册送10元红包（投资本金满100元可用），被邀请人投资满1000元，红包即可激活使用；</p>
		                <p>4.被邀请人注册后30天内累计投资额（红包将会在第31天24点前发放到账户）。</p>
		                <h5>奖励详情：</h5>
		                <p>被邀请人投资1万-5万元（不含），邀请人获得50元红包</p>
		                <p>被邀请人投资5万-10万元（不含），邀请人获得200元红包</p>
		                <p>被邀请人投资10万-50万元（不含），邀请人获得300元红包</p>
		                <p>被邀请人投资50万元及以上，邀请人获得500元红包</p>
		            </div>
		            <div class="showcontent3 showcontent">
		                <h5 style="margin-top:0;">红包说明：</h5>
		                <p>1.红包在满足条件后24小时内发放至账户，可进行投资（红包拆分为10元-200元不等金额，使用比例1:300）;</p>
		                <p>2.发起债权转让，不计入投资总额若被邀请人对已投项目发起债权转让，该项目投资金额将不计入累计投资总额。</p>
		                <h5>活动时间：</h5>
		                <p>2017年12月18日-2018年12月18日</p>
		            </div>
		        </div>
		    </div>
		</div>
		<script type="text/javascript">
	    //复制邀请链接
	    $('.copyLink').click(function(){
	        $('.shareCode').select();
	        document.execCommand("Copy");
	    });
	    //微博分享
	    $('.weiboShare').click(function(){
	    	var addIp = $('#addIp').val();
	    	var uinvite = $('#uinvite').val();
	        var top = window.screen.height / 2 - 250;
	        var left = window.screen.width / 2 - 300;
	        title = "【30立即使用的代金券】和【50元红包】免费获得地址http://"+addIp+":8080/Finances/user/toLoginWeiBoJoin?uinvite="+uinvite+" 亿信平台上线两月获得盛大资本投资，并且首家实现银行存管和余额理财的平台。";
	        rLink = "http://"+addIp+":8080/Finances/user/toLoginWeiBoJoin?uinvite="+uinvite;
	        window.open("http://service.weibo.com/share/share.php?title=" +
	                encodeURIComponent(title.replace(/&nbsp;/g, " ").replace(/<br \/>/g, " "))+ "&url=" + encodeURIComponent(rLink),
	                "分享至新浪微博");
	    });
	    // 点击内容切换的方法
	    $(".inviteFriendTable .topclick li").click(function(){
	        var index=parseInt($(this).attr("index"))*140+"px";
	        var data=".inviteFriendTable ."+$(this).attr("data");
	        $(".inviteFriendTable .topclick li").removeClass("selected");
	        $(this).addClass("selected");
	        $(".inviteFriendTable .clickanimate").animate({left:index},400);
	        $(".inviteFriendTable .showcontent").hide();
	        $(data).show();
	    });
	    //展示红包拆分详细
	    $(".showcontent1").on("mouseover",".inviteExplain",function(){
	        $(this).css("z-index","2");
	        $(this).css("color","#5e98ff").find(".explainContent").show();
	    });
	    $(".showcontent1").on("mouseout",".inviteExplain",function(){
	        $(this).css("z-index","0")
	        $(this).css("color","#646464").find(".explainContent").hide();
	    });
	
	    var start = 2;
	    //加载更多按钮
	    $(".loadMore").click(function(){
	        getInviteRecord();
	    });
	    //获取邀请记录流水
	    function getInviteRecord(){
	        console.log(start);
	        $.ajax({
	            url:"/usercenter-Invitefriends-getInviteLogAjax",
	            type:"POST",
	            data:{
	                start:start
	            },
	            success:function(data){
	                processData(data);
	            }
	        });
	    }
	
	    function processData(data){
	        obj = eval('('+data+')');
	        start++;
	        var pages = obj['pages'];
	        checkBtn(pages);
	        showData(obj['data']);
	    }
	
	    function showData(obj){
	        var tr='';
	        if(obj){
	            for(var i in obj){
	                tr += '<tr>';
	                tr += '<td>'+obj[i]['user_phone']+'</td>';
	                tr += '<td>'+obj[i]['reg_time']+'</td>';
	                tr += '<td>';
	                tr += '<span>好友注册</span>';
	                if(obj[i]['flag']=='1'){
	                    tr += '<span>&nbsp;好友投资</span>';
	                }
	                tr += '</td>';
	//					tr += '<td>好友注册&nbsp;短信邀请&nbsp;好友投资</td>';
	                tr += '<td class="right">';
	                tr += '<span>10元红包&nbsp;'+obj[i]['getReward3']+'&nbsp;</span>';
	//				    tr += '<span>10元红包&nbsp;'+obj[i]['getReward2']+'&nbsp;'+obj[i]['getReward3']+'&nbsp;</span>';
	                if(obj[i]['getReward4']!=''){
	                    tr +=  '<div class="inviteExplain">';
	                    tr +=  '<span>'+obj[i]['getReward4']+'</span>';
	                    tr +=  '<div class="explainContent">';
	//			    		   tr +=  '<img src="'+obj[i]['image']+'/images/invite_friends4.png">';
	                    tr +=  '<img src="/Finances/statics/front/statics/usercenter/images/invite_friends4.png">';
	                    if(obj[i]['getReward4']=='500元红包'){
	                        tr +=   '<span>10元红包X3&nbsp;20元红包&nbsp;50元红包&nbsp;100元红包X2&nbsp;200元红包</span>';
	                    }else if(obj[i]['getReward4']=='300元红包'){
	                        tr +=   '<span>10元红包X3&nbsp;20元红包&nbsp;50元红包&nbsp;100元红包X2</span>';
	                    }else if(obj[i]['getReward4']=='200元红包'){
	                        tr +=   '<span>10元红包X3&nbsp;20元红包&nbsp;50元红包</span>';
	                    }else{
	                        tr +=   '<span>10元红包X3&nbsp;20元红包</span>';
	                    }
	                    tr +=  '</div>';
	                    tr +=  '</div>';
	                    tr +=   '<div class="inviteCircle">?</div>';
	                }
	                tr += '</td>';
	                tr += '</tr>';
	            }
	            $(".showcontent1 table").append(tr);
	        }
	    }
	    function checkBtn(pages){
	        if(start > pages){
	            $('.loadMore').hide();
	        }
	    }
	</script>
	</body>
</html>