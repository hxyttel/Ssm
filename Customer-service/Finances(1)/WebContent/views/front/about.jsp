<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%
	String path = request.getContextPath();
%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="keywords" content="互联网金融,投资理财,互联网投资理财">
	    <meta name="description" content="爱钱帮从事的互联网金融，以资金托管 + 担保 + 独立风控的阳光P2B互联网投资理财新模式，为投资人提供12%—15%的优质投资项目，安全合规并且全面保护用户的资金安全。">
		<title>关于我们 | 亿信金融</title>
		<link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/6.png">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-main.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/front.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/home/css/newPage.css" />
	    
	    <script type="text/javascript" src="/Finances/statics/front/statics/home/js/jquery.min.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
    	<script type="text/javascript" src="/Finances/statics/front/statics/home2/js/m2-front.js"></script>
    	<script type="text/javascript" src="/Finances/statics/front/statics/home2/js/jquery.roundabout.js"></script>
        <script type="text/javascript" src="/Finances/statics/front/statics/home2/js/jquery.easing.js"></script>
        <script type="text/javascript" src="/Finances/statics/back/statics/js/jquery.uploadify.min.js"></script>
	</head>
	
<body>
	<!-- 右侧边栏 start -->
	<jsp:include page="include/sidebar.jsp"></jsp:include>
	<!-- 右侧边栏 end -->
    
    <!-- 头部start -->
    <jsp:include page="include/head.jsp"></jsp:include>
    <!-- 头部end -->
    
    <!-- 内容 -->
<body style="background-color:#F0F0F0;">
    	<div class="m2-parBg"></div>
    	<div class="m2-parHidebox">
        <b class="m2-parHideclose"></b>
        <h2>我要转让</h2>
        <div class="m2-parHideimg">
            <img src="/Finances/statics/front/statics/home2/images/guarantee/m2-partnersImg1.png" alt="">
        </div>
        <div class="m2-parHidefoot">
            <span class="m2-parPagecurrent"></span>&frasl;<span class="m2-parPagetotal"></span>
            <i class="m2-parPageprev"></i><i class="m2-parPagenext"></i>
        </div>
    </div>
		
		<!-- 导航Start -->
 		<jsp:include page="include/navigation.jsp"></jsp:include>
 		<!-- 导航end -->
 		
 	<div class="m2-aboutBanner-con"></div>
    <div class="m2-about-con">
        <h1>爱钱帮是谁</h1>
        <div class="m2-abuoutDet-box">
            <h3><i></i>公司简介</h3>
            <p>${about.abintroduce}</p>
            <h3><i></i>公司优势</h3>
            <p>${about.abremark}</p>
            <!-- <h3><i></i>公司特色</h3>
            <p>随着公司的快速发展，爱钱帮不断带给P2P行业新的惊喜，海鲜帮、娱乐帮、汽车帮等特色产业“帮派”项目也接连而出，在创造高收益的同时也优化了单一的理财产品模式，不断的进行创新，开始走出自己的特色。</p> -->
        </div>
        <h1 style="margin-top:10px;">公司资质</h1>
        <ul class="m2-aboutImglist">
            <li src="/Finances/statics/front/statics/home2/images/guarantee/m2-yyzz.jpg">
                <i class="m2-aboutImglist-1"></i>
                <p>营业执照</p>
            </li>
            <li src="/Finances/statics/front/statics/home2/images/guarantee/m2-khxkz.jpg">
                <i class="m2-aboutImglist-2"></i>
                <p>开户许可证</p>
            </li>
            <!--		<li src="statics/home2/images/guarantee/m2-partnersImg1.png">-->
            <!--			<i class="m2-aboutImglist-3"></i>-->
            <!--			<p>税务登记证</p>-->
            <!--		</li>-->
            <!--		<li src="statics/home2/images/guarantee/m2-partnersImg1.png">-->
            <!--			<i class="m2-aboutImglist-4"></i>-->
            <!--			<p>组织机构代码</p>-->
            <!--		</li>-->
            <li src="/Finances/statics/front/statics/home2/images/guarantee/m2-xydmz.jpg">
                <i class="m2-aboutImglist-5"></i>
                <p>信用代码证</p>
            </li>
            <li src="/Finances/statics/front/statics/home2/images/guarantee/m2-jyxkz.jpg">
                <i class="m2-aboutImglist-6"></i>
                <p>经营许可证</p>
            </li>
        </ul>
    </div>
 	
 	<div id="m2-aboutSec-list" style="width:1030px;margin-bottom:50px;">
        <h3>企业荣誉</h3>
        <ul>
       	<c:forEach items="${aboutimg}" var="aimg">
            <li><img src="${pageContext.request.contextPath}${aimg}"></li>
        </c:forEach> 
        </ul>
    </div>
    
   	<script type="text/javascript">
        $(document).ready(function() {
            $('#m2-aboutSec-list ul').roundabout({
                easing: 'easeOutInCirc',
                duration: 600
            });
            $('.m2-frontHead').css('z-index',120);
            $('.m2-topNav-ulSec').css('z-index',130);
            $('.m2-parBg').css('z-index',140);
            $('.m2-parHidebox').css('z-index',150);
        });
    </script>
	 <script type="text/javascript">
        $(function(){
            var docTop =$(document).scrollTop()+142; //弹出层top
            var tolPage=4; //总页数
            var curPage=1; //当前页
            $('.m2-parPagetotal').html(tolPage);
            /*点击弹出蒙板*/
            $('.m2-aboutImglist li').click(function(){
                curPage=$(this).index()+1; //当前页
                docTop =$(document).scrollTop()+142; //滚动条高度
                var imgSrc=$(this).attr('src'); //图片src
                var imgTit=$(this).children('p').html();
                $('.m2-parHidebox').css('top',docTop); //改变图片box的top
                $('.m2-parHideimg img').attr('src',imgSrc); //替换图片
                $('.m2-parPagecurrent').html(curPage); //改变当前页值
                $('.m2-parHidebox h2').html(imgTit); //改变图片标题
                $('.m2-parBg,.m2-parHidebox').show() //显示蒙板和图片box
                btnShow();
            });

            /*上一页点击*/
            $('.m2-parPageprev').click(function(){
                if(curPage != 1){
                    curPage-=1;
                }
                showpage(curPage);
                btnShow();
            });

            /*下一页点击*/
            $('.m2-parPagenext').click(function(){
                curPage+=1;
                showpage(curPage);
                btnShow();
            });

            /*点击关闭弹窗*/
            $('.m2-parHideclose').click(function(){
                $('.m2-parBg').hide();
                $('.m2-parHidebox').hide();
            });

            /*判断翻页是否显示*/
            function btnShow(){console.log(curPage);
                if (curPage<=1) {
                    $('.m2-parPageprev').fadeOut(200);
                    $('.m2-parPagenext').show();
                    curPage=1;
                }
                else if (curPage>=tolPage) {
                    $('.m2-parPagenext').fadeOut(200);
                    $('.m2-parPageprev').show();
                    curPage=tolPage;
                }
                else{
                    $('.m2-parPageprev').show();
                    $('.m2-parPagenext').show();
                }
            }
            //点击换页数图片等函数
            function showpage(pagenumber){
                var pagenumber=pagenumber-1;
                var imgSrc=$($('.m2-aboutImglist').find("li")[pagenumber]).attr("src");
                var imgTit=$($('.m2-aboutImglist').find("li")[pagenumber]).children('p').html();
                $('.m2-parHidebox h2').html(imgTit);
                $('.m2-parHideimg img').attr('src',imgSrc); //替换图片
                $('.m2-parPagecurrent').html(curPage); //改变当前页值
            }
        });
    </script>
    
   	<!-- 足部start -->
    <jsp:include page="include/floot.jsp"></jsp:include>
    <!-- 足部end -->     
  	
</body>
</html>