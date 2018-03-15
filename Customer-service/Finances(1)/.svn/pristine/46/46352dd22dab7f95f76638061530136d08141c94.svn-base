<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<title>我的钱帮币 | 亿信金融</title>
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
	    
	    <div class="m2-userCentermain">
	        <div class="m2-userCentercoin-con">
	            <div id="my_money_con">
	                <div class="con_title">
	                    <img src="/Finances/statics/front/statics/usercenter/images/my_coin1.png" class="coin_pic">
	                    <h4>我的钱帮币</h4>
	                    <p>越投资，越幸运</p>
	                    <div class="right">
	                        <p style="color:#fea812;">余额：20<img src="/Finances/statics/front/statics/usercenter/images/my_coin2.png" style="vertical-align:-4px;"></p>
	                        <p>2016年10月1日，即将到期钱帮币0个</p>
	                    </div>
	                </div>
	                <div class="coin_middle">
	                    <h5>如何赚取钱帮币</h5>
	                    <p class="content">1. 每投资1000元，投资30天，获得1个钱帮币。</p>
	                    <p class="content">
	                        2. 每笔投资获得钱帮币计算公式 = 投资金额 / 1000 * (投资天数 / 30) * 1，取计算结果整数部分计入帮主账号。</p>
	                </div>
	                <div class="coin_middle">
	                    <h5>钱帮币有效期规则</h5>
	                    <p class="content">1. 钱帮币是爱钱帮平台回馈给会员的虚拟货币，不可兑换现金，账户之间不可转让赠与。</p>
	                    <p class="content">2. 钱帮币有效期6个月，每月到期的钱帮币统一在次月1日24时扣减失效。</p>
	                    <p class="content">举例说明：</p>
	                    <p class="content">您在2016年3月12日获得的钱帮币，将在2016年10月1日24时到期扣减。</p>
	                    <p class="content">您在2016年3月30日获得的钱帮币，将在2016年10月1日24时到期扣减。</p>
	                    <p class="content">您在2016年4月1日获得的钱帮币，将在2016年11月1日24时到期扣减。</p>
	                    <p class="content">3. 钱帮币有效期规则从2016年6月1日开始生效；2015年11月30日（含）之前累计的钱帮币在2016年6月1日24时到期。</p>
	                    <p class="content">4. 为感谢帮主对爱钱帮平台的支持，截至2016年6月1日，您在2015年11月30日（含）之前累计并未
	                        使用的钱帮币，我们已经按照2016年6月1日的钱帮币兑换奖励金比例（1钱帮币 = 0.01元奖励金），给您折算成等值的奖励金；您可在我的账户 — 奖励管理 — 奖励金流水中查询。
	                    </p>
	                    <p class="content">5. 钱帮币有效期规则最终解释权归北京爱钱帮财富科技有限公司所有。</p>
	                </div>
	                <div class="coin_bottom">钱帮币记录</div>
	                <table class="coin_bottom_table">
	                    <tr>
	                        <td class="left">时间</td>
	                        <td class="center">钱帮币</td>
	                        <td class="center">余额</td>
	                        <td class="right">描述</td>
	                    </tr>
	                    <tr>
	                        <td class="left">2016-09-05 17:17</td>
	                        <td class="center">20</td>
	                        <td class="center">20</td>
	                        <td class="right">完成风险评测获得20个钱帮币</td>
	                    </tr>            
	                   </table>
	                   <%--
	                   <div style="text-align:center;margin-top:24px;">
	                    <span class="click_more">点击加载更多>></span>
	               	 </div>
	                    --%>
	                
	            </div>
	        </div>
	    </div>
	    <script>
	        var count = 1;
	        var start = 5;
	
	        $("#my_money_con .click_more").click(function(){
	            loadMore();
	        })
	
	        $(function(){
	            checkBtn();
	            if(count == 0){
	                var tr = '<tr>';
	                tr += '<td colspan="4">暂无数据</td></tr>';
	                $('.coin_bottom_table tbody').append(tr);
	            }
	        });
	        function checkBtn(){
	            if(start >= count){
	                $('.click_more').hide();
	            }
	        }
	     /*    function loadMore(){
	            $.ajax({
	                url:"usercenter-Rewardcontrol-getMyCreditsLogAjax",
	                type:"POST",
	                data:{
	                    start:start
	                },
	                success:function(data){
	                    obj = eval('('+data+')');
	                    start += 5;
	                    checkBtn();
	                    insertTr(obj);
	                }
	            });
	        } */
	        function insertTr(obj){
	            if(obj){
	                for(var i in obj){
	                    var tr = '<tr>';
	                    tr += '<td class="left">'+obj[i]['date']+'</td>';
	                    tr += '<td class="center">'+obj[i]['affect_credits']+'</td>';
	                    tr += '<td class="center">'+obj[i]['account_credits']+'</td>';
	                    tr += '<td class="right">'+obj[i]['info']+'</td>';
	                    tr += '</tr>';
	                    $('.coin_bottom_table tbody').append(tr);
	                }
	            }
	        }
	    </script>
	</body>
</html>