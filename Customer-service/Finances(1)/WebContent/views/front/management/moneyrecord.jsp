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
	    <link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/smalllog.png">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
	    <link rel="Shortcut  Icon" href="/Finances/statics/other/lco/smalllog.png">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/userCenter.css">
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/jquery.min.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/esl.js"></script>
	    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/jquery.datetimepicker.css" />
	    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/jquery.datetimepicker.js"></script>
		<title>奖励金流水 | 亿信金融</title>
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
			<jsp:include page="../include/head.jsp"></jsp:include>
		<!-- 头部end -->
		
		<!-- 内容start -->
		
		<!-- 树start -->
	    <jsp:include page="../include/tree.jsp"></jsp:include>
	    <!-- 树end -->
		
		    <style>
		        .m2-manageResult-item td{
		            white-space: nowrap;
		            overflow: hidden;
		            text-overflow: ellipsis;
		            max-width: 180px;
		        }
		        .m2-manageResult-head th{
		            white-space: nowrap;
		        }
		    </style>
		    <div class="m2-userPrizerecord-con">
		        <div class="m2-userPrizerecord-head">
		            <h3><i></i>我的奖励金记录</h3>
		            <a href="#" style="display: none;"></a>
		        </div>
		
		        <div class="m2-userCentermanage-accNum">
		            <div class="m2-userCentermanage-accNumlef">
		                <p class="m2-userCentermanage-accNumtit">
		                    <span>激活奖励金（元）</span>
		                    <b class="m2-userCentermanagedraw-moreDetail">
		                        <u style="top:-10px;line-height:26px;">
		                            <em style="top:8px" class="m2-draw-arr"></em>
		                            <em style="top:8px" class="m2-draw-arrBg"></em>
		                            奖励金激活部分，投资即可使用
		                        </u>
		                    </b>
		                </p>
		                <p class="m2-userCentermanage-accNum-leave">0.00</p>
		            </div>
		            <div class="m2-userCentermanage-accNumrig">
		                <p class="m2-userCentermanage-accNumtit">
		                    <span>待激活奖励金（元）</span>
		                    <b class="m2-userCentermanagedraw-moreDetail">
		                        <u>
		                            <em class="m2-draw-arr"></em>
		                            <em class="m2-draw-arrBg"></em>
		                            奖励金待激活部分，元老会成员专享，项目结清时即可激活
		                        </u>
		                    </b>
		                </p>
		                <p class="m2-userCentermanage-accNum-return">0.00</p>
		            </div>
		        </div>
		
		        <div class="m2-manage-search">
		            <div class="m2-manage-search-head">
		                <h3><i></i>奖励金流水记录</h3>
		            </div>
		
					<input type="hidden" value="${sessionScope.user.uid}" id="uid" name="uid"/>
		            <div class="m2-manage-search-selector">
		                <ul class="m2-manageSearchsel-time">
		                    <li>时间范围：</li>
		                    <li class="m2-manageSearchsel-link"><span class="m2-manSealink-unsel" data-days='0' '>全部</span></li>
		                    <li class="m2-manageSearchsel-link"><span class="m2-manSealink-sel" data-days='7'  >最近7天</span></li>
		                    <li class="m2-manageSearchsel-link"><span class="m2-manSealink-unsel" data-days='30' >一个月</span></li>
		                    <li class="m2-manageSearchsel-link"><span class="m2-manSealink-unsel" data-days='90' '>三个月</span></li>
		                  	<li>从<input id="m2-manSeadate-start" type="text"></li>
                   			<li>到<input id="m2-manSeadate-end" type="text"></li>
		                </ul>
		                <ul class="m2-manageSearchsel-type">
		                    <li>资金类型：</li>
		                    <li class="m2-manageSearchsel-link"><span class="m2-manSealink-sel" data-status="3">全部</span></li>
		                    <li class="m2-manageSearchsel-link"><span class="m2-manSealink-unsel" data-status="1">未激活</span></li>
		                    <li class="m2-manageSearchsel-link"><span class="m2-manSealink-unsel" data-status="2">已激活</span></li>
		                </ul>
		
		                <table class="m2-manageResult" cellpadding="0" cellspacing="0">
		                    <tr class="m2-manageResult-head">
		                        <th style="width:120px;">用户名字</th>
		                        <th style="width:155px;">资金明细</th>
		                        <th style="width:135px;">消费金额</th>
		                        <th style="width:120px;">消费的时间</th>
		                     
		                    </tr>
							<c:forEach items="${listMoney}" var="moneyrecord">
		                    	<tr class="mycount">
		                    		<td>${moneyrecord.uiname}</td>
		                    		<td>${moneyrecord.mrdetail }</td>
		                    		<td>${moneyrecord.mrwastemoney}</td>
		                    		<td>${moneyrecord.mrwasttime}</td>
		                    	</tr>
		                    </c:forEach>
		
		                    <tr class="m2-manageResult-sum">
		                        <td colspan="3"></td>
		                        <td>总计:<span class="m2-manageResult-total" id='sum_reward'>${sessionScope.allMoneyCode}</span></td>
		                        <td></td>
		                        <td><span class="m2-manageResult-more">加载更多</span></td>
		                    </tr>
		                </table>
		            </div>
		        </div>
		    </div>
		</div>
		<script type="text/javascript">
		    var start = 1;
		    var status = 3;
		    var time1 = '';
		    var time2 = '';
		    var pages = 3;
		    var days = 0;
		
		    $(document).ready(function(){
		        //加载初始数据
		        //getRewordRecord();
		        //加载日历
		        ucDatepicker('#m2-manSeadate-start','usercenter-rewardcontrol-getRewardLogAjax',getSearchData,processData);
		        ucDatepicker('#m2-manSeadate-end','usercenter-rewardcontrol-getRewardLogAjax',getSearchData,processData);
		        //时间过滤按钮
		        $('.m2-manageSearchsel-time span').click(function(){
		            $('#m2-manSeadate-start').val('');
		            $('#m2-manSeadate-end').val('');
		            time1 = '';
		            time2 = '';
		            days = $(this).data('days');
		            clear();
		            getRewordRecord();
		            $('.m2-manageSearchsel-time span.m2-manSealink-sel').addClass('m2-manSealink-unsel');
		            $('.m2-manageSearchsel-time span.m2-manSealink-sel').removeClass('m2-manSealink-sel');
		            $(this).removeClass('m2-manSealink-unsel');
		            $(this).addClass('m2-manSealink-sel');
		        });
		        //状态过滤按钮
		        $('.m2-manageSearchsel-type span').click(function(){
		            status = $(this).data('status');
		            clear();
		            getRewordRecord();
		            $('.m2-manageSearchsel-type span.m2-manSealink-sel').addClass('m2-manSealink-unsel');
		            $('.m2-manageSearchsel-type span.m2-manSealink-sel').removeClass('m2-manSealink-sel');
		            $(this).removeClass('m2-manSealink-unsel');
		            $(this).addClass('m2-manSealink-sel');
		        });
		        //加载更多按钮
		        $('.m2-manageResult-more').click(function(){
		            getRewordRecord();
		        });
		    });
		
		    function getRewordRecord(){
				var uid =$('#uid').val();
				var  mrwasttime =$('#m2-manSeadate-start').val();
				var  mrendtime =$('#m2-manSeadate-end').val();;
		        $.ajax({
		            url:"/Finances/money/toSeleByMoneyRecord",
		            type:"POST",
		            mrwasttime:mrwasttime,
	                mrendtime:mrendtime,
		            data:{
		                mrstatus:days,
		                uid:uid
		            },
		            success:function(data){
		                processData(data);
		            }
		        });
		    }
		
		    function processData(data){
		        var obj = eval('('+data+')');
		        start++;
		        //pages = obj['pages'];
		        checkBtn();
		        $('.mycount').html('');
		        showData(obj.data);
		    }
		
		    function showData(obj){
		        if(obj){
		        	var sum = Number($('#sum_reward').text());
		        	$.each(obj,function(i,item){  
		                var tr = '<tr class="m2-manageResult-item">';
		                tr += '<td>'+item.uiname+'</td>';
		                tr += '<td>'+item.mrdetail+'</td>';
		                tr += '<td>'+item.mrwastemoney+'</td>';
		                tr += '<td>'+item.mrwasttime+'</td>';
		                tr += '</tr>';
		                $('.m2-manageResult-sum').before(tr);
		                //sum = calPlus(sum,obj[i]['mrwastemoney']);
		        	})
		            /* $('#sum_reward').text(sum);
		            if(sum < 0){
		                $('#sum_reward').css('color','#E64648');
		            }else{
		                $('#sum_reward').css('color','#717171');
		            } */
		        }
		        if($('.m2-manageResult-item').size() == 0){
		            $('.m2-manageResult-sum').before('<tr class="m2-manageResult-item"><td colspan="6">暂无数据</td></tr>');
		            $('.m2-manageResult-sum').hide();
		        }
		    }
		
		    function getSearchData(){
		        clear();
		        days = 0;
		        time1 = $('#m2-manSeadate-start').val();
		        time2 = $('#m2-manSeadate-end').val();
		        $('.m2-manageSearchsel-time span.m2-manSealink-sel').addClass('m2-manSealink-unsel');
		        $('.m2-manageSearchsel-time span.m2-manSealink-sel').removeClass('m2-manSealink-sel');
		        if(!time1 && !time2){
		            $('.m2-manageSearchsel-time span').eq(0).addClass('m2-manSealink-sel');
		        }
		        var data = {
		            time1:time1,
		            time2:time2,
		            days:days,
		            status:status,
		            start:start
		        };
		        return data;
		    }
		
		    function checkBtn(){
		        if(start > pages){
		            $('.m2-manageResult-more').hide();
		        }
		    }
		    
		     function change(a){
		    	 var uid = $('#uid').val();
		    	if(a==0){
		    		/*  全部 */
		    		 window.location="http://127.0.0.1:8080/Finances/money/toSeleByMoneyRecord?mrstatus="+a+"&uid="+uid;	
		    	}
		    	else  if(a==1){
		    		/*  最近7天 */
		    		 window.location="http://127.0.0.1:8080/Finances/money/toSeleByMoneyRecord?mrstatus="+a+"&uid="+uid;	
				    			 
		    	 }
		    	 else if(a==2){
		    		 /* 一个月 */
		    		 window.location="http://127.0.0.1:8080/Finances/money/toSeleByMoneyRecord?mrstatus="+a+"&uid="+uid;	
				    	
		    	 }
		    	 else if(a==3){
		    		 /*  三个月 */
		    		 window.location="http://127.0.0.1:8080/Finances/money/toSeleByMoneyRecord?mrstatus="+a+"&uid="+uid;	
				    		
		    	 }
		    	
		    } 
		
		    function clear(){
		        start = 1;
		        $('.m2-manageResult-item').remove();
		        $('#sum_reward').text('0.00');
		        $('#sum_reward').css('color','#717171');
		        $('.m2-manageResult-more').show();
		    }
		
		    function calPlus(num1,num2){
		        var sq1,sq2,m;
		        try{sq1=num1.toString().split(".")[1].length;} catch(e){sq1=0;}
		        try{sq2=num2.toString().split(".")[1].length;} catch(e){sq2=0;}
		        m=Math.pow(10,Math.max(sq1,sq2));
		        return Math.round(( num1 * m + num2 * m ) / m * 100)/100;
		    }
		
		    function ucDatepicker(locator,url,datafunc,callback){
		        $(locator).datetimepicker({
		            lang:'ch',
		            timepicker:false,
		            format:'Y-m-d',
		            allowBlank:true,
		            onChangeDateTime:function(){
		                if(time1 != $('#m2-manSeadate-start').val() || time2 != $('#m2-manSeadate-end').val()){
		                    $.ajax({
		                        type: "POST",
		                        url: url,
		                        dataType: 'json',
		                        data:datafunc(),
		                        success: function(data) {
		                            callback(data);
		                        }
		                    });
		                }
		            }
		        });
		    };
		</script>
	</body>
</html>