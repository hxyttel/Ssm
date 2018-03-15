<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	    <meta name="keywords" content="高收益理财产品,理财投资,网络投资理财平台,网贷理财,互联网金融,投资理财平台,投资理财,赚钱,小额投资理财,如何投资理财,投资理财知识,投资理财,北京p2p理财">
	    <meta name="description" content="爱钱帮可以为您赚钱的网络投资理财平台，为投资理财用户和贷款用户两端提供公平、透明、安全、高效的网贷理财服务，爱钱帮互联网金融中网贷投资理财平台的最好的选择。">
	    <title>会员商城 |亿信金融</title>
	    
		<!--[if lt IE 9]>
	    	<script src="<%=path%>/statics/front/statics/newcommon/js/html5shiv.js"></script>
	    <![endif]-->
    	
    	<link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/6.png">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-main.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
	    <link rel="stylesheet" type="text/css" href="/Finances/statics/front/statics/home2/css/member_mall.css">
	    
	    <script type="text/javascript" src="/Finances/statics/front/statics/home/js/jquery.min.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
    	<script type="text/javascript" src="/Finances/statics/front/statics/home2/js/HMZCity.json"></script>
		
		<style>
        #member_mall_top,.container :hover{
            cursor:pointer;
        }
        .member_top_layout:hover{
            cursor:default;
        }
    </style>
		
	</head>

	<body>
	<!-- 右侧边栏 start -->
	<jsp:include page="include/sidebar.jsp"></jsp:include>
	<!-- 右侧边栏 end -->
    
    <!-- headerStart -->
    <jsp:include page="include/head.jsp"></jsp:include>
    <!-- headerEnd -->
    
   <!--会员商城内容开始 -->
    <div id="member_mall_top" >
	    <div class="member_top_layout">
	        <div class="member_top_layout_content">
	            <p class="name" >我的钱帮币</p>
	            <input type="hidden" id="signStatus" name="signStatus" value="1">
	            <input type="hidden" id="lottery_times" name="lottery_times" value="1">
	            <div class="money">
	                <span id="myCoin">22</span>
	                <img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall2.png">
	            </div>
	            <button class="qiandao" id="qiandao">签到抽大奖</button>
	            <p>每日一抽&emsp;惊喜不断</p>
	            <a href="MemberMall-exchangelog"><p class="bottom">兑换记录>></p></a>
	        </div>
	    </div>
	</div>
	
	<div id="member_mall_content">
	    <!-- 精品推荐样式 -->
	    <div class="solid firstsolid"></div><div class="circle"></div>
	    <span class="mytitle">赚取钱帮币</span>
	    <div class="circle"></div><div class="solid firstsolid"></div>
	    <div class="solid secondsolid" style="margin-left:35px;"></div>
	    <div class="circle"></div>
	    <span class="mytitle">精品推荐</span><div class="circle"></div><div class="solid secondsolid"></div>
	    <div class="recommend">小爱推荐</div>
	    <div style="margin-left:-30px;width:1030px;">
	        <div class="container" style="vertical-align: top;margin-right:-4px;">
	            <h6>
	                <a href="chanpin.html#-zNVKfzsUZ!aw8Tc7+A.html" target="_blank" title="【新手标】爱车贷-现代ix35-XAA136">【新手标】爱车贷-现代i…</a>    		</h6>
	            <p></p>
	            <div class="animate"><div class="content_animate" style="width:36.54%"></div></div>
	            <p class="number_animate">
	                <a href="###" title="项目总额：7.36万">7.36万</a>/
	                <a href="###" title="项目余额：46,700.00元">46,700.00</a>元
	            </p>
	            <div class="scale_year">
	                <p class="number_scale">
	                    8%+1%
	                <p style="margin-left:-2px;" class="jiaxishow">
	                    活动加息1%												</p>    			</p>
	                <p>预期年化收益率</p>
	            </div>
	            <div class="scale_year" style="float:right;">
	                <p class="number_scale">
	                    32天					    			</p>
	                <p>项目期限</p>
	            </div>
	
	            <button class="money_btn" onclick='window.location.href="/Finances/toinvestzt"'>立即赚取</button>    	</div>
	
		        <div class="container goods_detailed_news" data="58">
		            <div class="pic_contain">
		                <!--     			<img src="statics/home2/images/member_mall/member_mall3.png"> -->
		                <img src="/Finances/statics/front/uploadData/membermall/20160824141652673.png">
		            </div>
		            <p class="pic_name">3元红包</p>
		            <div class="pic_introduce">
		                <span>原价：</span>
		                <div class="before_price">
		                    <span>200</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall6.png"/>
		                    <div class="heng_solid"></div>
		                </div>
		            </div>
		            <div class="pic_introduce">
		                <span class='vip_name'>帮主尊享价：</span>
		                <span class="after_price">200</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall2.png">
		            </div>
		            <div class="pic_introduce">
		                <span>库存：</span>
		                <span>125（件）</span>
		            </div>
		        </div><div class="container goods_detailed_news" data="69">
	        <div class="pic_contain">
	            <!--     			<img src="statics/home2/images/member_mall/member_mall3.png"> -->
	            <img src="/Finances/statics/front/uploadData/membermall/20160805102220960.png">
	        </div>
	        <p class="pic_name">飞科智能剃须刀</p>
	        <div class="pic_introduce">
	            <span>原价：</span>
	            <div class="before_price">
	                <span>10000</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall6.png">
	                <div class="heng_solid"></div>
	            </div>
	        </div>
	        <div class="pic_introduce">
	            <span class='vip_name'>帮主尊享价：</span>
	            <span class="after_price">10000</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall2.png">
	        </div>
	        <div class="pic_introduce">
	            <span>库存：</span>
	            <span>10（件）</span>
	        </div>
	    </div><div class="container goods_detailed_news" data="68">
	        <div class="pic_contain">
	            <!--     			<img src="statics/home2/images/member_mall/member_mall3.png"> -->
	            <img src="/Finances/statics/front/uploadData/membermall/20160805033052639.png">
	        </div>
	        <p class="pic_name">暴风魔镜</p>
	        <div class="pic_introduce">
	            <span>原价：</span>
	            <div class="before_price">
	                <span>13300</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall6.png">
	                <div class="heng_solid"></div>
	            </div>
	        </div>
	        <div class="pic_introduce">
	            <span class='vip_name'>帮主尊享价：</span>
	            <span class="after_price">13300</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall2.png">
	        </div>
	        <div class="pic_introduce">
	            <span>库存：</span>
	            <span>15（件）</span>
	        </div>
	    </div>    	</div>
	    <!-- 理财神器样式 -->
	    <div style="clear:both;"></div>
	    <div class="solid thirdsolid"></div><div class="circle"></div>
	    <span class="mytitle">理财神器</span>
	    <div class="circle"></div><div class="solid thirdsolid"></div>
	    <div style="height:20px;"></div>
	    <div style="margin-left:-30px;width:1030px;">
	        <div class="container goods_detailed_news" data="60">
	            <div class="pic_contain">
	                <img src="/Finances/statics/front/uploadData/membermall/20160824141721351.png">
	            </div>
	            <p class="pic_name">50元红包</p>
	            <div class="pic_introduce">
	                <span>原价：</span>
	                <div class="before_price">
	                    <span>3300</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall6.png">
	                    <div class="heng_solid"></div>
	                </div>
	            </div>
	            <div class="pic_introduce">
	                <span class='vip_name'>帮主尊享价：</span>
	                <span class="after_price">3300</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall2.png">
	            </div>
	            <div class="pic_introduce">
	                <span>库存：</span>
	                <span>91（件）</span>
	            </div>
	        </div><div class="container goods_detailed_news" data="59">
	        <div class="pic_contain">
	            <img src="/Finances/statics/front/uploadData/membermall/20160824141534940.png">
	        </div>
	        <p class="pic_name">15元红包</p>
	        <div class="pic_introduce">
	            <span>原价：</span>
	            <div class="before_price">
	                <span>1000</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall6.png">
	                <div class="heng_solid"></div>
	            </div>
	        </div>
	        <div class="pic_introduce">
	            <span class='vip_name'>帮主尊享价：</span>
	            <span class="after_price">1000</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall2.png">
	        </div>
	        <div class="pic_introduce">
	            <span>库存：</span>
	            <span>70（件）</span>
	        </div>
	    </div><div class="container goods_detailed_news" data="58">
	        <div class="pic_contain">
	            <img src="/Finances/statics/front/uploadData/membermall/20160824141652673.png">
	        </div>
	        <p class="pic_name">3元红包</p>
	        <div class="pic_introduce">
	            <span>原价：</span>
	            <div class="before_price">
	                <span>200</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall6.png">
	                <div class="heng_solid"></div>
	            </div>
	        </div>
	        <div class="pic_introduce">
	            <span class='vip_name'>帮主尊享价：</span>
	            <span class="after_price">200</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall2.png">
	        </div>
	        <div class="pic_introduce">
	            <span>库存：</span>
	            <span>125（件）</span>
	        </div>
	    </div><div class="container goods_detailed_news" data="61">
	        <div class="pic_contain">
	            <img src="/Finances/statics/front/uploadData/membermall/20160824141745286.png">
	        </div>
	        <p class="pic_name">75元红包</p>
	        <div class="pic_introduce">
	            <span>原价：</span>
	            <div class="before_price">
	                <span>5000</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall6.png">
	                <div class="heng_solid"></div>
	            </div>
	        </div>
	        <div class="pic_introduce">
	            <span class='vip_name'>帮主尊享价：</span>
	            <span class="after_price">5000</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall2.png">
	        </div>
	        <div class="pic_introduce">
	            <span>库存：</span>
	            <span>90（件）</span>
	        </div>
	    </div>    	</div>
	
	    <!-- 潮流尖货样式 -->
	    <div style="clear:both;"></div>
	    <div class="solid thirdsolid fourthsolid"></div><div class="circle" style="background-color:#62b7f7;"></div>
	    <span class="mytitle" style="color:#62b7f7;">潮流尖货</span>
	    <div class="circle" style="background-color:#62b7f7;"></div><div class="solid thirdsolid fourthsolid"></div>
	    <div style="height:20px;"></div>
	    <div style="margin-left:-30px;width:1030px;">
	        <div class="container goods_detailed_news" data="69">
	            <div class="pic_contain">
	                <img src="/Finances/statics/front/uploadData/membermall/20160805102220960.png">
	            </div>
	            <p class="pic_name">飞科智能剃须刀</p>
	            <div class="pic_introduce">
	                <span>原价：</span>
	                <div class="before_price">
	                    <span>10000</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall6.png">
	                    <div class="heng_solid"></div>
	                </div>
	            </div>
	            <div class="pic_introduce">
	                <span class='vip_name'>帮主尊享价：</span>
	                <span class="after_price">10000</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall2.png">
	            </div>
	            <div class="pic_introduce">
	                <span>库存：</span>
	                <span>10（件）</span>
	            </div>
	        </div><div class="container goods_detailed_news" data="67">
	        <div class="pic_contain">
	            <img src="/Finances/statics/front/uploadData/membermall/20160805032957562.png">
	        </div>
	        <p class="pic_name">PICOOC智能体脂秤</p>
	        <div class="pic_introduce">
	            <span>原价：</span>
	            <div class="before_price">
	                <span>6600</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall6.png">
	                <div class="heng_solid"></div>
	            </div>
	        </div>
	        <div class="pic_introduce">
	            <span class='vip_name'>帮主尊享价：</span>
	            <span class="after_price">6600</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall2.png">
	        </div>
	        <div class="pic_introduce">
	            <span>库存：</span>
	            <span>8（件）</span>
	        </div>
	    </div><div class="container goods_detailed_news" data="68">
	        <div class="pic_contain">
	            <img src="/Finances/statics/front/uploadData/membermall/20160805033052639.png">
	        </div>
	        <p class="pic_name">暴风魔镜</p>
	        <div class="pic_introduce">
	            <span>原价：</span>
	            <div class="before_price">
	                <span>13300</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall6.png">
	                <div class="heng_solid"></div>
	            </div>
	        </div>
	        <div class="pic_introduce">
	            <span class='vip_name'>帮主尊享价：</span>
	            <span class="after_price">13300</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall2.png">
	        </div>
	        <div class="pic_introduce">
	            <span>库存：</span>
	            <span>15（件）</span>
	        </div>
	    </div><div class="container goods_detailed_news" data="72">
	        <div class="pic_contain">
	            <img src="/Finances/statics/front/uploadData/membermall/20160817143650682.png">
	        </div>
	        <p class="pic_name">50元京东购物卡</p>
	        <div class="pic_introduce">
	            <span>原价：</span>
	            <div class="before_price">
	                <span>3300</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall6.png">
	                <div class="heng_solid"></div>
	            </div>
	        </div>
	        <div class="pic_introduce">
	            <span class='vip_name'>帮主尊享价：</span>
	            <span class="after_price">3300</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall2.png">
	        </div>
	        <div class="pic_introduce">
	            <span>库存：</span>
	            <span>7（件）</span>
	        </div>
	    </div><div class="container goods_detailed_news" data="71">
	        <div class="pic_contain">
	            <img src="/Finances/statics/front/uploadData/membermall/20160817143607359.png">
	        </div>
	        <p class="pic_name">极米智能投影仪</p>
	        <div class="pic_introduce">
	            <span>原价：</span>
	            <div class="before_price">
	                <span>179900</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall6.png">
	                <div class="heng_solid"></div>
	            </div>
	        </div>
	        <div class="pic_introduce">
	            <span class='vip_name'>帮主尊享价：</span>
	            <span class="after_price">179900</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall2.png">
	        </div>
	        <div class="pic_introduce">
	            <span>库存：</span>
	            <span>5（件）</span>
	        </div>
	    </div><div class="container goods_detailed_news" data="73">
	        <div class="pic_contain">
	            <img src="/Finances/statics/front/uploadData/membermall/20160817143909176.png">
	        </div>
	        <p class="pic_name">九号单轮平衡自行车</p>
	        <div class="pic_introduce">
	            <span>原价：</span>
	            <div class="before_price">
	                <span>153300</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall6.png">
	                <div class="heng_solid"></div>
	            </div>
	        </div>
	        <div class="pic_introduce">
	            <span class='vip_name'>帮主尊享价：</span>
	            <span class="after_price">153300</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall2.png">
	        </div>
	        <div class="pic_introduce">
	            <span>库存：</span>
	            <span>10（件）</span>
	        </div>
	    </div><div class="container goods_detailed_news" data="70">
	        <div class="pic_contain">
	            <img src="/Finances/statics/front/uploadData/membermall/20160805103107515.png">
	        </div>
	        <p class="pic_name">华为荣耀网络机顶盒</p>
	        <div class="pic_introduce">
	            <span>原价：</span>
	            <div class="before_price">
	                <span>20000</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall6.png">
	                <div class="heng_solid"></div>
	            </div>
	        </div>
	        <div class="pic_introduce">
	            <span class='vip_name'>帮主尊享价：</span>
	            <span class="after_price">20000</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall2.png">
	        </div>
	        <div class="pic_introduce">
	            <span>库存：</span>
	            <span>10（件）</span>
	        </div>
	    </div><div class="container goods_detailed_news" data="74">
	        <div class="pic_contain">
	            <img src="/Finances/statics/front/uploadData/membermall/20160817144058684.png">
	        </div>
	        <p class="pic_name">小米手环2</p>
	        <div class="pic_introduce">
	            <span>原价：</span>
	            <div class="before_price">
	                <span>11300</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall6.png">
	                <div class="heng_solid"></div>
	            </div>
	        </div>
	        <div class="pic_introduce">
	            <span class='vip_name'>帮主尊享价：</span>
	            <span class="after_price">11300</span><img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall2.png">
	        </div>
	        <div class="pic_introduce">
	            <span>库存：</span>
	            <span>10（件）</span>
	        </div>
	    </div>    	</div>
	    <div style="height:20px;clear:both;"></div>
	</div>
    
    <!-- 整体的遮罩 -->
	<div id="member_mall_mask"></div>
	
	<!-- 签到成功计数结构 -->
	<div class="member_mall_mask_content">
	    <div class="member_mall_content_top member_mall_qiandao">
	        <img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall8.png" class="member_mask_chacha">
	        <p class="mem_mal_con_tit" id="sign_status">签到成功</p>
	        <p id="sign_growth"></p>
	        <p id="sign_days"></p>
	        <div class="mem_pic_introduce">
	            <p>每日一抽</p>
	            <p>惊喜不断</p>
	        </div>
	    </div>
	    <button class="member_mall_btn immediately_draw" id="first_lottery">立即抽奖</button>
	</div>
    
    <!-- 温馨提醒已经抽过一次了 -->
	<div class="member_mall_mask_content" id="free_done">
	    <div class="member_mall_content_top member_mall_remind">
	        <img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall8.png" class="member_mask_chacha">
	        <p class="mem_mal_con_tit">温馨提醒</p>
	        <p>今天您已经免费抽奖了一次</p>
	        <div class="mem_pic_introduce">
	            <p>是否消耗5个钱帮币</p>
	            <p>再次抽奖</p>
	        </div>
	    </div>
	    <button class="member_mall_btn" id="lottery_goon">立即抽奖</button>
	</div>
	
	<!-- 温馨提醒已经抽过很多次了 -->
	<div class="member_mall_mask_content" id="lottery_none">
	    <div class="member_mall_content_top member_mall_remind member_mall_spremind">
	        <img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall8.png" class="member_mask_chacha">
	        <p class="mem_mal_con_tit">温馨提醒</p>
	        <p>您今天的抽奖次数已超过10次</p>
	        <div class="mem_pic_introduce">
	            <p>建议您明天再来抽奖</p>
	        </div>
	    </div>
	    <button class="member_mall_btn" onclick="window.location.reload()">我知道了</button>
	</div>
	
	<!-- 抽奖失败的样式 -->
	<div class="member_mall_mask_content" id="lottery_coin_none">
	    <div class="member_mall_content_top member_mall_lottery">
	        <img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall8.png" class="member_mask_chacha">
	        <p class="mem_mal_con_tit">抽奖失败</p>
	        <div class="mem_pic_introduce">
	            <p>您的钱帮币不足</p>
	        </div>
	        <p>建议您先投资,获取钱帮币,再来抽奖</p>
	    </div>
	    <button class="member_mall_btn" onclick="goInvest()">立即投资</button>
	</div>
	
	
	<!-- 商品红包的详细信息的弹窗 -->
	<div class="goods_news_alert goods_news_alert_click">
	    <img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall12.png" class="goods_content_chacha">
	    <p class="goods_name" id='info_goods_name'>150元红包</p>
	    <p class="goods_introduce" id="info_goods_info">投资XXXXXXXX万元，可使用该红包</p>
	    <div class="pic_introduce">
	        <span>原价：</span>
	        <div class="before_price">
	            <span id="info_goods_price">1000</span><img src="statics/home2/images/member_mall/member_mall6.png">
	            <div class="heng_solid"></div>
	        </div>
	    </div>
	    <div class="pic_introduce">
	        <span id='info_vip_name'>铁帮主尊享价：</span>
	        <span class="after_price" id='info_vip_price'>900</span><img src="statics/home2/images/member_mall/member_mall2.png">
	    </div>
	    <div class="pic_introduce">
	        <span>有效期：</span>
	        <span class="info_goods_stock" id='validity_days'>7 天</span>
	    </div>
	    <div class="pic_introduce">
	        <span>数量：</span>
	        <div class="goods_number">
	            <div class="left">-</div>
	            <div class="middle" id='info_exchange_num'>1</div>
	            <div class="right">+</div>
	        </div>
	    </div>
	    <div class="pic_introduce">已兑换<span id='info_has_exchange'>XXX</span>件，剩余<span id='info_goods_stock'>XXX</span>件</div>
	    <button class="immediately_exchange_btn" data="" id='exchangenow'>立即兑换</button>
	</div>
	
	
	<!-- 兑换信息的弹框,兑换成功红包 -->
	<div class="goods_news_alert exchange_message" id="exchange_success">
	    <img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall12.png" class="goods_content_chacha">
	    <div class="message_result">
	        <div class="solid"></div><span>兑换成功</span><div class="solid"></div>
	    </div>
	    <p>恭喜您已成功兑换<span id="exchange_goods_name"></span></p>
	    <p>使用理财神器，<span style="color:#f5733a;">让财富增值</span></p>
	    <button class="immediately_exchange_btn" onclick="goInvest()">立即投资</button>
	</div>
	
	
	<!-- 兑换信息的弹框,兑换失败之库存不足 -->
	<div class="goods_news_alert exchange_message" id="exchange_lacking_stock">
	    <img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall12.png" class="goods_content_chacha">
	    <div class="message_result">
	        <div class="solid"></div><span>兑换失败</span><div class="solid"></div>
	    </div>
	    <p style="color:#f5733a;">库存不足</p>
	    <p>该物品已被抢空，建议您选择其他商品</p>
	    <button class="immediately_exchange_btn">好的，谢谢小爱</button>
	</div>
	
	
	<!-- 兑换信息的弹框,兑换失败之钱帮币不足 -->
	<div class="goods_news_alert exchange_message" id="exchange_lacking_coin">
	    <img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall12.png" class="goods_content_chacha">
	    <div class="message_result">
	        <div class="solid"></div><span>兑换失败</span><div class="solid"></div>
	    </div>
	    <p style="color:#f5733a;">您的钱帮币不足</p>
	    <p>建议您先投资，获取钱帮币，再来兑换</p>
	    <button class="immediately_exchange_btn" onclick="goInvest()">立即投资</button>
	</div>
	
	
	<!-- 兑换信息的弹框,兑换成功小米 -->
	<div class="goods_news_alert exchange_message">
	    <img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall12.png" class="goods_content_chacha">
	    <div class="message_result">
	        <div class="solid"></div><span>兑换成功</span><div class="solid"></div>
	    </div>
	    <p>恭喜您已成功兑换小米手环一个</p>
	    <p>可在<a style="color:#f5733a;">兑换记录</a>中，查看物流动向</p>
	    <button class="immediately_exchange_btn">我知道了</button>
	</div>
	
	<!-- 兑换信息的弹框,兑换地址完善 -->
	<div class="goods_news_alert exchange_message" id="exchange_address_none">
	    <img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall12.png" class="goods_content_chacha">
	    <div class="message_result">
	        <div class="solid"></div><span>温馨提醒</span><div class="solid"></div>
	    </div>
	    <p>您的收货地址尚未完善</p>
	    <button class="immediately_exchange_btn" id="completeAddress">立即完善</button>
	</div>
	
	<!-- 完善收货地址的弹框 -->
		<div id="member_mall_address">
		    <div class="reject_title">
		        我的收货地址<img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall12.png" style="float:right;">
		    </div>
		    <div id="member_reject_address">
		        <div>
		            <span>&emsp;*收货人</span>
		            <input type="text" placeholder="长度不超过25个字符" style="width:250px;" name="consignee" id="consignee" />
		        </div>
		        <div class="input_contain">
		            <span>&emsp;*省市区</span>
		            <select id="lmkselect1" style="width:100px;" name="province" id="province">
		                <option data="all" class="all">请选择</option>
		            </select>
		            <select id="lmkselect2" disabled="true" style="width:100px;" name="city" id="city">
		                <option data="all" class="all">请选择</option>
		            </select>
		            <select id="lmkselect3" disabled="true" style="width:100px;" name='area' id="area">
		                <option data="all" class="all">请选择</option>
		            </select>
		        </div>
		        <div>
		            <span>*详细地址</span>
		            <input type="text" id='address' placeholder="请填写详细的收货地址" style="width:325px;" />
		        </div>
		        <div>
		            <span>*手机号码</span>
		            <input type="text" id="phone" placeholder="请填写收货人的手机号码" style="width:252px;" />
		        </div>
		        <div class="warm_alarm_address">
		            <div class="left">温馨提醒</div>
		            <div class="right">每月20日统一采购本月兑换的奖品，工作人员在采购完后统一邮寄，请各位帮主耐心等待</div>
		        </div>
		        <p id="errormessage" style="font-size:12px;font-weight:bold;margin-top:4px;"></p>
		        <button class="keep_reject_btn" id="saveAddree">保存收货信息</button>
		    </div>
		</div>
		
		<!-- 抽奖抽到的弹窗 -->
		<div class="prize_draw member_rate_coupon">
		    <div class="prize_draw_close"></div>
		    <div class="prize_draw_content"></div>
		    <div class="prize_draw_btn">
		    <img src="/Finances/statics/front/statics/home2/images/member_mall/member_mall16.png" style="margin-top:14px;"></div>
		</div>
		
		
		
		<script type="text/javascript">
		    //声明全局变量---------------------------
		    var lock=true;	//状态锁
		    var signStatus=$("#signStatus").val();	//签到状态
		    var lotteryNums=$("#lottery_times").val();	//抽奖次数
		
		    //banner 地址
		    $("#member_mall_top").click(function(event){
		        window.location.href="MemberMall-strategy";
		    })
		    $(".member_top_layout_content").click(function(event){
		        event.stopPropagation();
		    })
		
		    // 点击按钮签到或抽奖
		    $("#qiandao,#first_lottery").click(function(){
		        if(_before_click() == false){
		            return false;
		        }
		        if(signStatus == 0){
		            //若没有签到则去签到
		            go_sign();
		        } else if(signStatus == 'null') {
		            window.location.href="/login";
		        } else if(signStatus == 1) {
		            if(lotteryNums == 1){
		                $("#member_mall_mask").show();
		                $("#free_done").show();
		            } else if(lotteryNums == 11){
		                //没有抽奖机会了
		                $("#member_mall_mask").show();
		                $("#lottery_none").show();
		            } else{
		                goLottery();
		            }
		        } else {
		            window.location.href="/login";
		        }
		    });
		    $("#lottery_goon").click(function(){
		        goLottery();
		    })
		    // 点击商品时候的弹框
		    $(".goods_detailed_news").click(function(){
		        $("#exchangenow").html('立即兑换');
		        if(_before_click() == false){
		            return false;
		        };
		        if(lock) {
		            lock=false;
		            var goodsId=$(this).attr('data');
		            var vipPrice=$(this).find('.after_price').text();
		            var vipName=$(this).find('.vip_name').text();
		            var url="MemberMall-ajax_findGoods";
		            $.post(url,{id:goodsId},function(data){
		                var goodsInfo=JSON.parse(data);
		                var status = '';
		                if(goodsInfo.status == 1){
		                    $("#info_goods_name").html(goodsInfo.info.goods_name);
		                    $("#info_goods_info").html(goodsInfo.info.goods_info);
		                    $("#info_goods_price").html(goodsInfo.info.goods_credits);
		                    $("#info_vip_name").html(vipName);
		                    $("#info_vip_price").html(vipPrice);
		                    $("#validity_days").html(goodsInfo.info.validity_period);
		                    $("#info_goods_stock").html(goodsInfo.info.stock);
		                    $("#info_exchange_num").html(1);
		                    $("#info_has_exchange").html(goodsInfo.info.has_exchange);
		                    $("#exchangenow").attr('data',goodsInfo.info.id);
		                    //判断库存，若小于1则不可点击
		                    if(goodsInfo.info.stock < 1){
		                        $("#exchangenow").unbind('click').css('background-color','#ccc');
		                    }else{
		                        $("#exchangenow").css('background-color','').click(function(){
		                            $(this).unbind('click').html('兑换中...');
		                            exchange($(this).attr('data'));
		                        });
		                    }
		                    $("#member_mall_mask,.goods_news_alert_click").show();
		                } else {
		                    alert('数据找不到路了~请刷新下再试。');
		                }
		                lock=true;
		            })
		        }
		    });
		    $(".goods_content_chacha").click(function(){
		        $("#member_mall_mask,.goods_news_alert").hide();
		    });
		    // 选择商品个数的事件
		    $(".goods_news_alert .goods_number .left").click(function(){
		        if($(".goods_news_alert .goods_number .middle").text()!=1){
		            var number=parseInt($(".goods_news_alert .goods_number .middle").text())-1;
		            $(".goods_news_alert .goods_number .middle").text(number);
		        }
		    });
		    $(".goods_news_alert .goods_number .right").click(function(){
		        var stock	=	$("#info_goods_stock").text();
		        var value	=	parseInt($(".goods_news_alert .goods_number .middle").text());
		        var number	=	1;
		        if(value < stock){
		            number	=	value+1;
		        } else {
		            number	=	value;
		        }
		        $(".goods_news_alert .goods_number .middle").text(number);
		    });
		
		    //完善地址----
		    $("#completeAddress").click(function(){
		        $("#exchange_address_none").hide();
		        $("#member_mall_address").show();
		    });
		    $("#member_mall_address .reject_title img").click(function(){
		        $("#member_mall_address,#member_mall_mask").hide();
		    });
		    //保存地址----
		    $("#saveAddree").click(function(){
		        var consignee=$("#consignee").val();
		        var province=$("#lmkselect1 option:selected").text();
		        var city=$("#lmkselect2 option:selected").text();
		        var area=$("#lmkselect3 option:selected").text();
		        var address=$("#address").val();
		        var phone=$("#phone").val();
		        var re = /^1\d{10}$/;
		        if(!isNaN(consignee)){
		            $("#errormessage").html("收货人格式不正确！").css('color',"#f5733a");
		            return false;
		        } else if(province == '请选择' || city == '请选择' || area == '请选择'){
		            $("#errormessage").html("请完善省市区！").css('color',"#f5733a");
		            return false;
		        } else if(!isNaN(address)){
		            $("#errormessage").html("请输入正确的地址！").css('color',"#f5733a");
		            return false;
		        } else if(!re.test(phone)){
		            $("#errormessage").html("请输入正确的手机号！").css('color',"#f5733a");
		            return false;
		        }
		        $.post("MemberMall-ajax_saveAddr",{consignee:consignee,province:province,city:city,area:area,address:address,phone:phone},function(data){
		            var jdata=JSON.parse(data);
		            if(jdata.status == '1'){
		                $("#member_mall_address").hide();
		                window.location.reload();
		            }else{
		                $("#errormessage").html(jdata.info).css('color',"red");
		            }
		        })
		
		    });
		    
		    //弹窗控制
		    $(".member_mask_chacha").click(function(){
		        $("#member_mall_mask,.member_mall_mask_content").hide();
		    });
		    $(".prize_draw_close,.prize_draw_btn img").click(function(){
		        $("#member_mall_mask,.prize_draw").hide();
		    });
		    $(".prize_draw_btn img").hover(function(){
		        $(".prize_draw_btn").addClass("prize_draw_btn_hover");
		    },function(){
		        $(".prize_draw_btn").removeClass("prize_draw_btn_hover");
		    });
		
		</script>
		
		
		<script type="text/javascript">
		    //去签到
		    function go_sign(){
		        $("#member_mall_mask").show();
		        $.post("MemberMall-ajax_sign",{},function(data){
		            var jsonData=JSON.parse(data);
		            var dataInfo=jsonData.data;
		            if(jsonData.status == 1){
		                $("#sign_status").html(jsonData.info);
		                $("#sign_growth").html("成长值+"+dataInfo.affect_value);
		                $("#sign_days").html("您已连续签到"+dataInfo.running_days+"天");
		// 					$("#first_lottery").attr('data',dataInfo.lottery_status);
		                $("#signStatus").val(1);
		                signStatus=1;
		                $(".member_mall_qiandao").parent().show();
		            } else if(jsonData.status == 0){
		                window.location.href="/login";
		            }
		        })
		    }
		    //兑换
		    function exchange(data){
		        if(_before_click()){
		            var myCoin=$('#myCoin').val();
		            if(myCoin < $("#after_price").val()){
		                //钱帮币不足
		                $(".goods_news_alert").hide();
		                $("#exchange_lacking_coin").show();
		                return false;
		            }
		            var stock=$('#info_goods_stock').text();
		            if(stock < 1){
		                //库存不足，关闭详情弹窗，弹出库存不足提示窗
		                $(".goods_news_alert").hide();
		                $('#exchange_lacking_stock').show();
		                return false;
		            }
		            var exNum=$("#info_exchange_num").text();
		            //兑换操作
		            sendExchangeRequest(data,exNum);
		        }
		    }
		
		    //抽奖
		    function goLottery(){
		        if(_before_click() == false){
		            return false;
		        };
		        $(".member_mall_mask_content").hide();
		        $.post("MemberMall-ajax_lottery",{},function(data){
		            var jsonData=JSON.parse(data);
		            if(jsonData.status == 4){
		                //钱帮币不足
		                $("#member_mall_mask").show();
		                $("#lottery_coin_none").show();
		            } else if(jsonData.status == 2){
		                //抽奖失败，没有机会了
		                $("#member_mall_mask").show();
		                $("#lottery_none").show();
		            } else if(jsonData.status == 1){
		                var dataInfo=jsonData.data;
		                $("#member_mall_mask").show();
		                $(".prize_draw").show();
		                $("#myCoin").text(dataInfo.credits);
		                $("#lottery_times").text(dataInfo.total_times);
		                lotteryNums=dataInfo.total_times;
		                var mask=dataInfo.prize_type;      //奖品类型，还要拼数值
		                if(mask=="2"){
		                    var str="<span style='font-size:30px;'>"+dataInfo.prize_raise+"%</span>加息券";
		                    $(".prize_draw").addClass("member_rate_coupon");
		                }else if (mask=="3") {
		                    var str="<span style='font-size:30px;'>"+dataInfo.prize_nums+"</span>个<p>钱帮币</p>";
		                    $(".prize_draw").addClass("member_help_money");
		                }else if (mask=="1") {
		                    var str="<span style='font-size:30px;'>"+dataInfo.prize_money+"</span>元<p>红包</p>";
		                    $(".prize_draw").addClass("member_red_paper");
		                };
		                $(".prize_draw_content").html(str);
		            }
		        })
		    }
		    
		    //条件满足，兑换商品
		    function sendExchangeRequest(Id,Num){
		        $.post("MemberMall-ajax_exchange",{id:Id,num:Num},function(data){
		            var exResult=JSON.parse(data);
		            var resInfo=exResult.data;
		            $(".goods_news_alert").hide();
		            switch (exResult.status){
		                case 1://兑换成功
		                    $("#exchange_goods_name").text(resInfo.name);
		                    $("#myCoin").text(resInfo.mycoin);
		                    $('#exchange_success').show();
		                    break;
		                case 2://钱帮币不足
		                    $("#exchange_lacking_coin").show();
		                    break;
		                case 4://没有登陆
		
		                    break;
		                case 5://库存不足
		                    $("#exchange_lacking_stock").show();
		                    break;
		                case 6://地址不完善
		                    $("#exchange_address_none").show();
		                    break;
		                default://兑换失败
		
		                    break;
		            }
		        })
		    }
		    
		    //点击按钮前判断是否已登陆
		    function _before_click(){
		        var loginStatus="1";
		        if(loginStatus > 0){
		            return true;
		        }else{
		            window.location.href="/login";
		            return false;
		        }
		    }
		    //去投资
		    function goInvest(){
		        window.location.href="touzi_licai_chanpin.html";
		    }
		
		</script>
		
		
		<script type="text/javascript">
		    $(function(){
		        //初始化省级下拉框
		        var str="";
		        for(var i=0;i<china.length;i++){
		            str+="<option data=" + i +">" + china[i].name + "</option>";
		        }
		        $("#lmkselect1").append(str);
		        //省级下拉框的change事件
		        $("#lmkselect1").change(function(){
		            $("#lmkselect2").attr("disabled",false);
		            $("#lmkselect3").attr("disabled",true);
		            var data=$("#lmkselect1").find("option:selected").attr("data");
		            $("#lmkselect2 option:not(.all),#lmkselect3 option:not(.all)").remove();
		            if(data=="all"){
		                $("#lmkselect2,#lmkselect3").attr("disabled",true);
		            }else{
		                data=parseInt(data);
		                str="";
		                for(var i=0;i<china[data].city.length;i++){
		                    str+="<option data=" + i + " provice=" + data + ">" + china[data].city[i].name + "</option>";
		                }
		                $("#lmkselect2").append(str);
		            }
		
		        })
		        //市级下拉框的事件
		        $("#lmkselect2").change(function(){
		            $("#lmkselect3").attr("disabled",false);
		            var data=$("#lmkselect2").find("option:selected").attr("data");
		            var provice=parseInt($("#lmkselect2").find("option:selected").attr("provice"));
		            $("#lmkselect3 option:not(.all)").remove();
		            if(data=="all"){
		                $("#lmkselect3").attr("disabled",true);
		            }else{
		                data=parseInt(data);
		                str="";
		                for(var i=0;i<china[provice].city[data].area.length;i++){
		                    str+="<option>" + china[provice].city[data].area[i] + "</option>";
		                }
		                $("#lmkselect3").append(str);
		            }
		        })
		    })
		</script>
    	
	</body>
</html>