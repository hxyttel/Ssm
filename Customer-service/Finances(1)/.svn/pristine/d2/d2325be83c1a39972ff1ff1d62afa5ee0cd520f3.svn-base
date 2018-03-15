<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="keywords" content="网贷理财,高收益投资理财项目,如何网上赚钱,理财知识,短期理财,银行理财,北京理财,普惠金融投资理财网">
    <meta name="description" content="爱钱帮是目前网贷理财知名的高收益理财项目平台，有海鲜帮、娱乐帮、汽车帮等高收益理财产品，还有“帮派”项目也接连而出，教您理财知识，如何网上赚钱。">
	<title>我要投资丨亿信金融 </title>
	<!--[if lt IE 9]>
	   	<script src="<%=path%>/statics/front/statics/newcommon/js/html5shiv.js"></script>
	<![endif]-->
	<link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/6.png">
    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-main.css">
    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
    <link rel="stylesheet" href="/Finances/statics/front/statics/home/css/newPage.css" />
    <link rel="stylesheet" type="text/css" href="/Finances/statics/front/statics/home/css/projectList.css">
  
    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/jquery.min.js"></script>
    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
    <script type="text/javascript" src="/Finances/statics/front/statics/home/js/projectList.js"></script>
    <script type="text/javascript" src="/Finances/statics/front/statics/common/js/common.js"></script>
    <script type="text/javascript" src="/Finances/statics/front/statics/home2/js/m2-front.js"></script>
	
		<!-- 图形验证码 -->
	<script src="/Finances/statics/front/js/gVerify.js"></script>
</head>
<body>
	<!-- 右侧边栏 start -->
	<jsp:include page="include/sidebar.jsp"></jsp:include>
	<!-- 右侧边栏 end -->
    
    <!-- 头部start -->
    <jsp:include page="include/head.jsp"></jsp:include>
    <!-- 头部end -->
    
    <!-- 内容 -->
    <div class="m2-investBanner"></div>
    <div class="m2-investBread">
        <div class="m2-investBreadbox">
            <i class="m2-investBreadicon"></i>
            <span class="m2-invBre-fat"><a href="/Finances/toindex">首页&nbsp;&gt;</a></span>
            <span class="m2-invBre-fat"><a href="/Finances/toinvestzt">我要投资&nbsp;&gt;</a></span>
            <span class="m2-invBre-fat">爱车贷</span>
        </div>
    </div>
    
    <div class="m2-invTable-con">
         <ul class="m2-invTablelist"><!-- 只能显示7个，其余隐藏 -->
            <li class="m2-invTab-unsel" onclick="window.location.href='/Finances/toinvestzt'"><span>项目直投</span><i></i></li>
           	<li class="m2-invTab-unsel" onclick="window.location.href='/Finances/toinvestzq'"><span>债权转让</span><i></i></li>
            <li class="m2-invTab-sel" onclick="window.location.href='/Finances/toinvestche'"><span>爱车贷</span><i></i></li>
            <li class="m2-invTab-unsel" onclick="window.location.href='/Finances/toinvestfang'"><span>爱房贷</span><i></i></li>
            <li class="m2-invTab-unsel" onclick="window.location.href='/Finances/toinvestjj'"><span>消费金融</span><i></i></li>
            <li class="m2-invTab-unsel" onclick="window.location.href='/Finances/toinvestgy'"><span>爱公益</span><i></i></li>
        </ul>
    </div>
    

    
    <div class="m2-invSearch">
        <div class="m2-invSearch-con">
            <i class="m2-invSea-arrUp"></i>
        </div>
        <div class="m2-invSearchbox" style="display: none;">
            <ul class="m2-invSea-ben" id="search_borrow_interest_rate">
                <li class="m2-invSea-tit"><span>收&nbsp;&nbsp;益&nbsp;&nbsp;率</span></li>
                <li data="0" class="m2-invSea-sel m2-invSea-all"><span onclick="searchBorrow('borrow_interest_rate',0)">全部</span></li>
                <li data="0|8" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_interest_rate','0|8')">8%及以下</span></li>
                <li data="9|9" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_interest_rate','9|9')">9%</span></li>
                <li data="10|10" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_interest_rate','10|10')">10%</span></li>
                <li data="10.1|100" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_interest_rate','10.1|100')">其他</span></li>
            </ul>
            <ul class="m2-invSea-tim" id="search_leftday">
                <li class="m2-invSea-tit"><span>时&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;限</span></li>
                <li data="0" class="m2-invSea-sel m2-invSea-all"><span onclick="searchBorrow('leftday',0)">全部</span></li>
                <li data="0|60" class="m2-invSea-unsel"><span onclick="searchBorrow('leftday','0|60')">60天及以下</span></li>
                <li data="61|180" class="m2-invSea-unsel"><span onclick="searchBorrow('leftday','61|180')">61天-180天</span></li>
                <li data="181|360" class="m2-invSea-unsel"><span onclick="searchBorrow('leftday','181|360')">181天-360天</span></li>
                <li data="361|3600" class="m2-invSea-unsel"><span onclick="searchBorrow('leftday','361|3600')">其他</span></li>
            </ul>
		<ul class="m2-invSea-sum" id="search_borrow_money">
			<li class="m2-invSea-tit"><span>金&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;额</span></li>
			<li data="0" class="m2-invSea-sel m2-invSea-all"><span onclick="searchBorrow('borrow_money',0)">全部</span></li>
			<li data="0|500000" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_money','0|500000')">50万以下</span></li>
			<li data="500001|1000000" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_money','500001|1000000')">50万-100万</span></li>
			<li data="1000001|2000000" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_money','1000001|2000000')">100万-200万</span></li>
			
		</ul>
		<ul class="m2-invSea-pro" id="search_progress">
            <li class="m2-invSea-tit"><span>进&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;度</span></li>
            <li data="0" class="m2-invSea-sel m2-invSea-all"><span onclick="searchBorrow('progress',0)">全部</span></li>
            <li data="0|30" class="m2-invSea-unsel"><span onclick="searchBorrow('progress','0|30')">30%以下</span></li>
            <li data="31|60" class="m2-invSea-unsel"><span onclick="searchBorrow('progress','31|60')">30%-60%</span></li>
            <li data="61|100" class="m2-invSea-unsel"><span onclick="searchBorrow('progress','61|100')">60%-100%</span></li>

        </ul>
            <ul class="m2-invSea-sta" id="search_borrow_status">
                <li class="m2-invSea-tit"><span>项目状态</span></li>
                <li data="0" class="m2-invSea-sel m2-invSea-all"><span onclick="searchBorrow('borrow_status','0')">全部</span></li>
                <li data="2" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_status','2')">正在募集</span></li>
                <li data="6" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_status','6')">还款中</span></li>
                <li data="7" class="m2-invSea-unsel"><span onclick="searchBorrow('borrow_status','7')">已结清</span></li>
            </ul>
            <div class="m2-invSeadisply">
                <span style="margin-left:10px;">筛选条件</span>
                <b class="m2-invDis-ben" onclick="searchBorrow('borrow_interest_rate',0)">全部<i></i></b>
                <b class="m2-invDis-tim" onclick="searchBorrow('leftday',0)">全部<i></i></b>
                <b class="m2-invDis-sum" onclick="searchBorrow('borrow_money',0)">全部<i></i></b>
                <b class="m2-invDis-pro" onclick="searchBorrow('progress',0)">全部<i></i></b>
                <b class="m2-invDis-sta" onclick="searchBorrow('borrow_status',0)">全部<i></i></b>
                <u onclick="searchBorrow('borrow_interest_rate',0)&searchBorrow('leftday',0)&searchBorrow('borrow_money',0)&searchBorrow('progress',0)&searchBorrow('borrow_status',0)"><i></i>重置</u>
            </div>
        </div>
    </div>
    <div class="m2-invResult-con">
        <div class="m2-invResult-head">
            <h3><i></i>项目筛选列表</h3>
        </div>
        <div style="width:100%; height:100%; position:fixed; z-index:100;top:0; left:0;display:none;" id="allP" >
            <div style="width:100%; height:100%; position:absolute; top:0; left:0; background:#000; opacity:0.5;"></div>
            <div style="width:404px; height:154px; background:#fff; position:absolute; top:50%; left:50%; margin-left:-252px; margin-top:-100px; border:2px solid #666;">
                <p style="color: #666666;font-size: 16px;absolute;line-height:170px;text-align: center; font-family: Microsoft YaHei;;">该项目已还清，为保护企业隐私，不再公示项目信息</p>
                <div style="width: 30px;height: 30px;position: absolute;top: 11px;right: 0px;color: #666;font-size: 20px;cursor: pointer;" id="close">X</div>
            </div>
        </div>
        
        
        <!-- 爱车贷 -->
        <div class="m2-invResuleitem-box" id="resuleite2">
          	<c:if test="${fabiaolistsafd==null && fn:length(fabiaolistsafd) == 0}">
					<center>
						<img src="/Finances/statics/front/images/nodata.png">	
						<h1>没有数据</h1>
					</center>
			</c:if>
            <ul>
            	<c:forEach items="${fabiaolistsafd}" var="fabiaos">
                <li class="m2-invResuleitem">
                    <div class="m2-invItem-lef">
                        <div class="m2-invItemleft-lef">
                        <!-- 
                        	m2-invItem-new :为图片上的新手标
                        	m2-invItem-hot :为图片上的热门标
                        	没加i标签的则为普通标
                         -->
                         	<c:if test="${fabiaos.ftype=='新手标'}">
                         		<i class="m2-invItem-new"></i>
                         	</c:if>
                            <c:if test="${fabiaos.ftype=='热门标'}">
                         		<i class="m2-invItem-hot"></i>
                         	</c:if>
                            <img src="${pageContext.request.contextPath}/${fabiaos.fimage}" alt="${fabiaos.ftitle}" />
                        </div>
                        <div class="m2-invItemleft-rig">
                            <h4>
                              <%--
                             		判断是否是投标还是满标
                              --%>
                             <c:if test="${fabiaos.fstatus==1}">
                                <i class="m2-invItemIcon-inv"></i>
                             </c:if> 
                             <c:if test="${fabiaos.fstatus==2}">
                               <i class="m2-invItemIcon-back"></i>
                             </c:if> 
                                <a href="/Finances/toproject?pid=${fabiaos.fid}" target="_blank" title="${fabiaos.ftitle}">${fabiaos.ftitle}</a>
                            </h4>
                            <ul class="m2-invItemleft-list">
                                <li>
								<span  class="m2-invItemdet-big huodongjiaxi">
											${fabiaos.froe*100}%+${fabiaos.fincrease*100}% 										
										<p style="margin-left:-2px;" class="jiaxishow">活动加息${fabiaos.fincrease*100}%	</p>
								</span>
                                    <span class="m2-invItemdet-nor">预期年化收益率</span>
                                    <i class="m2-invItemdet-line"></i>
                                </li>
                                <li>
								<span class="m2-invItemdet-big">
												${fabiaos.rematime}天</span>
                                    <span class="m2-invItemdet-nor">期限</span>
                                    <i class="m2-invItemdet-line"></i>
                                </li>
                                <li>
                                    <span class="m2-invItemdet-big">${fabiaos.fmoney}</span>
                                    <span class="m2-invItemdet-nor">融资金额</span>
                                </li>
                            </ul>
                            <div class="m2-invItemprogress">
							<span class="m2-invItemprogress-tit">
								<c:if test="${fabiaos.fstatus==1}">
											正在募集
	                             </c:if> 
	                             <c:if test="${fabiaos.fstatus==2}">
											还款中
	                             </c:if>
	                             <c:if test="${fabiaos.fstatus==7}">
											已满标
	                             </c:if>  
							</span>
                               <b>
                                    <i style="width:${fabiaos.compnrate} "></i>
                                	<c:if test="${fabiaos.fstatus==1}">
                                    	<u style="left:${fabiaos.compnrate}">可投：${ (fabiaos.fmoney-fabiaos.fendmoney) div 10000 } 万</u>
                              		</c:if>
                                </b>
                                <span class="m2-invItemprogress-per">${fabiaos.compnrate}</span>
                            </div>
                        </div>
                    </div>
                	
                	<div class="m2-invItem-rig">
                        <div class="m2-invItemrig-main">
                            <p class="m2-invItemrig-gua">
                                <span class="m2-invItemrig-guaTit" style="color:#333;">担保措施:</span>
                                <span class="m2-invItemrig-guaDet" style="color:#ff9900;">${fabiaos.fsecuritymea}</span>
                            </p>
                            <div class="m2-invItemrig-link">
                            	<c:if test="${fabiaos.fstatus==1}">
                               		 <a href="/Finances/toproject?pid=${fabiaos.fid}" class="m2-invItemlink-inv" target="_blank" title="${fabiaos.ftitle}">立即投资</a>	
                            	</c:if>
                            	<c:if test="${fabiaos.fstatus==2}">
                               		 <a href="javascript:void(0)" class="m2-invItemlink-inv"  title="${fabiaos.ftitle}">还款中</a>	
                            	</c:if>
                            	<c:if test="${fabiaos.fstatus==7}">
                               		 <a href="javascript:void(0)" class="m2-invItemlink-inv"  title="${fabiaos.ftitle}">已满标</a>	
                            	</c:if>
                            </div>
                        </div>
                        <c:if test="${fabiaos.fstatus==1}">
                        	<p class="m2-invItem-det" style="text-indent:20px;">投资万元预期收益：<span>${fabiaos.yield}元</span></p>
                        	<p class="m2-invItem-det">投资起点金额：<span style="color:#ff6666;">${fabiaos.fminmoney}元</span></p>
                     	 </c:if>
                     	 <c:if test="${fabiaos.fstatus==2}">
							 <div class="m2-invItem-rigBg"></div>                     	 
                     	 </c:if>
                     </div>
                     
                     
                </li>
                </c:forEach>
            </ul>
            
        </div>
        
        	 <div class="m2-newListpage-con" style="padding-top:5px;">
	            <div class="m2-newListpage">
	                <div class="m2-news-pages" style="padding-right:40px;margin:12px auto;text-align: center;">
		                  	
	 <c:if test="${fn:length(fabiaolistsafd) > 0}">
		            <a href="javascript:void(0);" onclick="window.location.href='/Finances/toinvestche?pageNow=1'" class="m2-pages-num m2-page-prev">&lt;</a>					
					<c:choose>
						<c:when test="${page.pageNow - 1 > 0}">
							<a href="javascript:void(0);" onclick="window.location.href='/Finances/toinvestche?pageNow=${page.pageNow - 1}'"  class="m2-pages-num m2-page-sel"> - </a>
						</c:when>
						<c:when test="${page.pageNow - 1 <= 0}">
							<a href="javascript:void(0);" onclick="window.location.href='/Finances/toinvestche?pageNow=1'"  class="m2-pages-num m2-page-sel"> - </a>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${page.totalPageCount==0}">
							<a href="javascript:void(0);" onclick="window.location.href='/Finances/toinvestche?pageNow=${page.pageNow}'"   class="m2-pages-num m2-page-sel"> + </a>
						</c:when>
						<c:when test="${page.pageNow + 1 < page.totalPageCount}">
							<a href="javascript:void(0);" onclick="window.location.href='/Finances/toinvestche?pageNow=${page.pageNow+1}'"  class="m2-pages-num m2-page-sel"> + </a>
						</c:when>
						
						<c:when test="${page.pageNow + 1 >= page.totalPageCount}">
							<a href="javascript:void(0);" onclick="window.location.href='/Finances/toinvestche?pageNow=${page.totalPageCount}'"  class="m2-pages-num m2-page-sel"> + </a>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${page.totalPageCount==0}">
							<a href="javascript:void(0);" onclick="window.location.href='/Finances/toinvestche?pageNow=${page.pageNow}'" title="尾页" class="m2-pages-num m2-page-next">&gt;</a>
						</c:when>
						<c:otherwise>
							<a href="javascript:void(0);" onclick="window.location.href='/Finances/toinvestche?pageNow=${page.totalPageCount}'" title="尾页" class="m2-pages-num m2-page-next">&gt;</a>
						</c:otherwise>
					</c:choose>
				</c:if>		
								
	                </div>
	            </div>
       		 </div>
        
       
        <script type="text/javascript">
            var oP=document.getElementById('allP');
            var oClose=document.getElementById('close');
            //oP.style.display='none';
            oClose.onclick=function(){
                oP.style.display='none';
            };
            /**
             * 已结束的项目不允许查看合同
             */
            function linkContract(that){
                oP.style.display='block';
            }

            $(".huodongjiaxi").mouseover(function(){
                $(this).find(".jiaxishow").show();
            })
            $(".huodongjiaxi").mouseout(function(){
                $(this).find(".jiaxishow").hide();
            })
        </script>
    </div>
    
    <script type="text/javascript">
        //分页
        $(document).on('click','.m2-news-pages a',function(){
            $.ajax({
                type: "GET",
                url: $(this).attr('href'),
                success: function(d) {
                    $(".m2-invResult-con").html(d);
                }
            });
            return false;
        })
        $(function(){
            
            $('.m2-invTabhide-list li').click(function(){
                var newCon = $(this).html();
                var oldCon = $('.m2-invTab-old span').html();
                $('.m2-invTab-old span').html(newCon); //改变最后一个LI
                $(this).html(oldCon);
                $('.m2-invTab-old').addClass('m2-invTab-sel').removeClass('m2-invTab-unsel');
                $('.m2-invTab-old').siblings('.m2-invTab-sel').addClass('m2-invTab-unsel').removeClass('m2-invTab-sel');
            })

            var disIndex =0; //li的index值
            //搜索条件点击事件
            $('.m2-invSearchbox ul li span').click(function(){
                if ($(this).parent().hasClass('m2-invSea-unsel')) {
                    var disCon =$(this).html();
                    disIndex =$(this).parent().parent().index();
                    $(this).parent().addClass('m2-invSea-sel').removeClass('m2-invSea-unsel');
                    $(this).parent().siblings('.m2-invSea-sel').addClass('m2-invSea-unsel').removeClass('m2-invSea-sel');
                    $('.m2-invSeadisply b').eq(disIndex).show();
                    $('.m2-invSeadisply b').eq(disIndex).html(disCon+"<i></i>");
                    closeDis();

                }
            });

            //点击全部事件
            $('.m2-invSea-all span').click(function(){
                disIndex=$(this).parent().parent().index();
                $('.m2-invSeadisply b').eq(disIndex).hide();
            });

            //重置按钮 
            $('.m2-invSeadisply u').click(function(){
                $(this).siblings('b').hide();
                $('.m2-invSea-sel').addClass('m2-invSea-unsel').removeClass('m2-invSea-sel');
                $('.m2-invSea-all').addClass('m2-invSea-sel').removeClass('m2-invSea-unsel');
            });
            closeDis();

            //列表关闭按钮
            function closeDis(){
                $('.m2-invSeadisply b i').click(function(){
                    disIndex = $(this).parent().index()-1;
                    $(this).parent().hide();
                    $('.m2-invSearchbox ul').eq(disIndex).children('.m2-invSea-all').addClass('m2-invSea-sel').removeClass('m2-invSea-unsel');
                    $('.m2-invSearchbox ul').eq(disIndex).children('.m2-invSea-all').siblings('.m2-invSea-sel').addClass('m2-invSea-unsel').removeClass('m2-invSea-sel');
                });
            }

            //筛选收起展开
            $('.m2-invSearch-con i').click(function(){
                $(this).toggleClass('m2-invSea-arrDown m2-invSea-arrUp');
                $('.m2-invSearchbox').toggle();
            });
        });
    </script>
    
    <script type="text/javascript">
        //倒计时
        var start_time;
        var intDiff = parseInt(start_time);

        function timeDown(intDiff){
            window.setInterval(function() {
                if (intDiff > 0) {
                    $("#time").css('display', 'block');
                    day = Math.floor(intDiff / (60 * 60 * 24));
                    hour = Math.floor(intDiff / (60 * 60)) - (day * 24);
                    minute = Math.floor(intDiff / 60) - (day * 24 * 60) - (hour * 60);
                    second = Math.floor(intDiff) - (day * 24 * 60 * 60)
                    - (hour * 60 * 60) - (minute * 60);
                }
                else {
                    $("#time").css('display', 'none');
                    return false;
                }
                if (minute <= 9)
                    minute = '0' + minute;
                if (second <= 9)
                    second = '0' + second;
                $('.m2-invDay').html('<i>'+day+'</i>天&nbsp;');
                $('.m2-invHou').html('<i>'+hour+'</i>时&nbsp;');
                $('.m2-invMin').html('<i>'+minute+'</i>分&nbsp;');
                $('.m2-invSec').html('<i>'+second+'</i>秒&nbsp;');
                intDiff--;
                if (intDiff > 86400) {
                    $('.m2-invSec').css('display', 'none');
                }
                if (intDiff < 86400) {
                    $('.m2-invDay').css('display', 'none');
                }
                if (intDiff == 0) {
                    window.location.reload();
                }
            }, 1000);
        }
        timeDown(intDiff);
    </script>
    <script type="text/javascript">
        function searchBorrow(stype,value){
            $("#search_"+stype+" li[data='"+value+"']").addClass("aprhover").siblings('li').removeClass('aprhover');
            var p=getCurrentFilter();
            getBorrowList(p);
        }

        function getBorrowList(p){
        	 $.get("/Finances/toProjectlikezt",p,function(d){
              	var dataObj = eval("("+d+")");
              	if(dataObj.status==1){
                  	var htmls = pingjie(dataObj.fabiaolist);
                  	 $("#resuleite2 ul").remove();
                  	 $("#resuleite2").html(htmls);
              	}
              });
          }
  		
          function pingjie(list){
          	var cc = ''
          	     cc +='<ul>'   
          	if(list.length==0){
          		cc += '<center><img src="/Finances/statics/front/images/nodata.png"><h1>没有数据</h1></center> ';
          	}
          	 $.each(list,function(i,item){  
          		 cc +='<li class="m2-invResuleitem"><div class="m2-invItem-lef"><div class="m2-invItemleft-lef">'
          		 if(item.ftype=="新手标"){
          			cc +='<i class="m2-invItem-new"></i>'
          		 }else{
          			cc +='<i class="m2-invItem-hot"></i>'
          		 }
          		 cc += '<img src="/Finances/'+item.fimage+'" alt="'+item.ftitle+'" />'
          		 cc +='</div><div class="m2-invItemleft-rig"> <h4>'
          		 if(item.fstatus==1){
          			 cc +='<i class="m2-invItemIcon-inv"></i>'
          		 }else{
          			 cc +='<i class="m2-invItemIcon-back"></i>'
          		 }
          		 cc +='<a href="'+item.fid+'" target="_blank" title="'+item.ftitle+'">'+item.ftitle+'</a></h4>'
          		 cc +=' <ul class="m2-invItemleft-list"><li><span  class="m2-invItemdet-big huodongjiaxi">'
          		 cc += ''+item.froe*100+'%+'+item.fincrease+'%'
          		 cc += '<p style="margin-left:-2px;" class="jiaxishow">活动加息'+item.fincrease*100+'%	</p>'	
                   cc +='</span><span class="m2-invItemdet-nor">预期年化收益率</span> <i class="m2-invItemdet-line"></i></li><li><span class="m2-invItemdet-big">'
          		 cc +=''+item.rematime+'天</span>'
          		 cc +='<span class="m2-invItemdet-nor">期限</span><i class="m2-invItemdet-line"></i> </li><li>'
          		 cc +=' <span class="m2-invItemdet-big">'+item.fmoney+'</span><span class="m2-invItemdet-nor">融资金额</span></li></ul>'
          		 cc += '<div class="m2-invItemprogress"><span class="m2-invItemprogress-tit">'
          		 if(item.fstatus==1){
          			cc += '正在募集</span><b>'
          		 }
          		 if(item.fstatus==2){
          			cc += '还款中</span><b>'
          		 }
          		 if(item.fstatus==3){
          			cc += '已结清</span><b>'
          		 }
          		 if(item.fstatus==7){
          			cc += '已满标</span><b>'
          		 }
          	
          		 cc +='<i style="width:'+item.compnrate+'"></i>'
          		 if(item.fstatus==1){
          			 var count = (item.fmoney-item.fendmoney)/10000
          			cc +='<u style="left:'+item.compnrate+'">可投：'+count +'万</u>'
          		 }
          		 cc +=' </b><span class="m2-invItemprogress-per">'+item.compnrate+'</span> </div></div></div>'
          		 cc +='<div class="m2-invItem-rig"> <div class="m2-invItemrig-main"><p class="m2-invItemrig-gua">'
          		 cc +='<span class="m2-invItemrig-guaTit" style="color:#333;">担保措施:</span>'
          		 cc +='  <span class="m2-invItemrig-guaDet" style="color:#ff9900;">'+item.fsecuritymea+'</span></p>'
          		 cc +='<div class="m2-invItemrig-link">'
          		 if(item.fstatus==1){
          			cc += ' <a href="/Finances/toproject?pid='+item.fid+'" class="m2-invItemlink-inv" target="_blank" title="'+item.ftitle+'">立即投资</a>	'
          		 }
          		 if(item.fstatus==2){
          			cc += '<a href="javascript:void(0)" class="m2-invItemlink-inv"  title="'+item.ftitle+'">还款中</a>'
          		 }
          		 if(item.fstatus==3){
          			cc += '<a href="javascript:void(0)" class="m2-invItemlink-inv"  title="'+item.ftitle+'">已结清</a>'
          		 }
          		 if(item.fstatus==7){
          			cc += '<a href="javascript:void(0)" class="m2-invItemlink-inv"  title="'+item.ftitle+'">已满标</a>'
          		 }
          		 cc+='</div></div>'
          		if(item.fstatus==1){
          			cc += '<p class="m2-invItem-det" style="text-indent:20px;">投资万元预期收益：<span>'+item.yield+'元</span></p>'
          			cc += '	<p class="m2-invItem-det">投资起点金额：<span style="color:#ff6666;">'+item.fminmoney+'元</span></p>'
          		 }
          		 if(item.fstatus==2){
          			cc += '<div class="m2-invItem-rigBg"></div>    '
          		 }
          		 if(item.fstatus==7){
          			cc += '<div class="m2-invItem-rigBg"></div>    '
          		 }
          		 cc +='</div></li>'  
          		});  
               cc +='</ul>'  
               return cc;
          	}                        										
          
          function getCurrentFilter(){
              var p={ };
              p['progress'] = $("#search_progress li.aprhover").attr('data');
              p['borrow_interest_rate'] = $("#search_borrow_interest_rate li.aprhover").attr('data');
              p['borrow_money'] = $("#search_borrow_money li.aprhover").attr('data');
              p['borrow_status'] = $("#search_borrow_status li.aprhover").attr('data');
              p['leftday'] = $("#search_leftday li.aprhover").attr('data');
             //设置当前标的类型
              p['pagetype'] = "爱车贷";            
              return p;
          }
    </script>
    <!-- 内容end -->
    
    <!-- 足部start -->
    <jsp:include page="include/floot.jsp"></jsp:include>
    <!-- 足部end -->
    
     <!-- 实现右侧登入注册功能 -->
	<script src="/Finances/statics/front/js/sidebarlogreg.js"></script>
    
</body>
</html>