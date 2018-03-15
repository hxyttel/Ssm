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
		<title>站内消息 | 亿信金融</title>
	</head>
	<body>
	<div class="m2-userCentercommon-bg" style='display: none'></div>
	<div class="m2-userCentercommon-confirm" style='display: none'></div>
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
		    
		    <div class="m2-userCentermanage-con">
		        <div class="m2-user-recharge">
		            <h3><i class="m2-user-natnotice"></i>站内消息</h3>
		        </div>
		        <div class="m2-manage-search-selector">
		            <!-- <ul class="m2-manageSearchsel-time">
		               <li>消息类型：</li>
		               <li class="m2-manageSearchsel-link"><span class="m2-manSealink-sel" data-type="">全部</span></li>
		               <li class="m2-manageSearchsel-link"><span class="m2-manSealink-unsel" data-type="0,4" >充值提现</span></li>
		               <li class="m2-manageSearchsel-link"><span class="m2-manSealink-unsel" data-type="1,5,6" > 投资债转</span></li>
		               <li class="m2-manageSearchsel-link"><span class="m2-manSealink-unsel" data-type="2,3" >回款奖励</span></li>
		               <li class="m2-manageSearchsel-link"><span class="m2-manSealink-unsel" data-type="7" >项目公告</span></li>
		               <li class="m2-manageSearchsel-link"><span class="m2-manSealink-unsel" data-type="8,9" ><i class="m2-asideIcon5">其他通知</i></span></li>
		               <li class="m2-manageSearchsel-link"><a href="usercenter-messagecontrol-set_message.html" class="m2-Setnotice-alert">设置消息提醒</a></li>
		           </ul> -->
		            <ul class="m2-manageSearchsel-type">
		                <li>消息状态：</li>
		                <li class="m2-manageSearchsel-link"><span class="m2-manSealink-sel" data-status='2' >全部</span></li>
		                <li class="m2-manageSearchsel-link"><span class="m2-manSealink-unsel" data-status='0' >未读</span></li>
		                <li class="m2-manageSearchsel-link"><span class="m2-manSealink-unsel" data-status='1' >已读 </span></li>
		            </ul>
		        </div>
		        <div class="m2-recharge-mainbody">
		            <div class="m2-user-newsmanage">
		                <script>
		                    //消息管理消息详情
		                    function showcontent(){
		                        var m2Tit = $(".m2-user-newsmanage ul li h5");
		                        m2Tit.toggle(function(){
		                            $(this).parent('li').children('.m2-news-content').slideDown('fast',function(){
		                                var pageheight = $(window).outerHeight();
		                                var pagescroll = $(window).scrollTop();
		                                var thistop = $(this).parent('li').offset().top;
		                                var thisheight = $(this).parent('li').height();
		                                if(pageheight + pagescroll < thistop + thisheight + 43){
		                                    $('body').animate({scrollTop: thistop + thisheight + 43 - pageheight},300);
		                                }
		                            });
		                            mesid=$(this).data('message');
		                            var req=$(this);
		                            if(req.children('i').hasClass('m2-news-firead')){
		                                $.ajax({
		                                    type: "POST",
		                                    url: "/Usercenter-Messagecontrol-readmessage",
		                                    data: {'id':mesid},
		                                    dataType: 'json',
		                                    success: function(d) {
		                                        if(d['status']==1){
		                                            req.children('i').removeClass('m2-news-firead');
		                                            req.children('i').addClass('m2-news-unread');
		                                            if(Number($('#unread-msg-num').text()) > 0){
		                                                $('#unread-msg-num').text(Number($('#unread-msg-num').text())-1);
		                                                if(Number($('#unread-msg-num').text()) == 0){
		                                                    $('#unread-msg-num').remove();
		                                                }
		                                            }
		                                        }
		                                    }
		                                });
		                            }
		
		                        },function(){
		                            $(this).parent('li').children('.m2-news-content').slideUp('fast');
		                        });
		                        //消息状态
		                        m2Tit.mouseover(function(){
		                            $(this).css('color','#bbb');
		                            $(".m2-news-tit").css('color','#0996cc');
		                        });
		                        m2Tit.mouseout(function(){
		                            $(this).css('color','#717171');
		                            $(".m2-news-tit").css('color','#0996cc');
		                        });
		                    }
		                    function searchstatus(){
		                        $(".m2-manageSearchsel-type .m2-manageSearchsel-link span").click(function(){
		                            var status=$(this).data('status');
		                            if($(this).hasClass('m2-manSealink-unsel')){
		                                $(this).removeClass('m2-manSealink-unsel');
		                                $(this).addClass('m2-manSealink-sel');
		                                $(this).parent('.m2-manageSearchsel-link').siblings().children('.m2-manSealink-sel').addClass('m2-manSealink-unsel');
		                                $(this).parent('.m2-manageSearchsel-link').siblings().children('.m2-manSealink-sel').removeClass('m2-manSealink-sel');
		                            }
		                            postData("/Usercenter-Messagecontrol-message_search", {'status':status}, function(d){
		                                $('.m2-news-body').remove();
		                                $(d['html']).insertAfter('.m2-news-titcont');
		                                showcontent();
		                                stat=status;
		                                cpage = 1;
		                                page = d['pages'];
		                                pager();
		                            });
		                        });
		                    }
		
		                    $(document).ready(function(){
		                        showcontent();
		                        searchstatus();
		                        //消息管理状态切换
		                        $(".m2-user-newsmanage h3").click(function(){
		                            $(this).hide();
		                            $(".m2-news-manage").show();
		                            $(".m2-news-manageall").show();
		                        });
		                        $(".m2-news-quit").click(function(){
		                            $(".m2-news-manageall").hide();
		                            $(".m2-news-manage").hide();
		                            $(".m2-user-newsmanage h3").show();
		                        });
		
		                    });
		
		                    //消息管理 checkbox状态，全选，删除状态
		                    $(document).ready(function() {
		                        // 全选
		                        var subChk = $(".m2-news-checkall")
		                        subChk.click(function() {
		                            $(".m2-news-manage").prop("checked", subChk.length == subChk.filter(":checked").length ? true:false);
		                        });
		                        /* 批量删除 */
		                        $(".m2-news-dele").click(function() {
		                            // 判断是否至少选择一项
		                            $('.m2-news-checkall').attr('checked',false);
		                            var checkedNum = $("input[name='m2-checkbox-name']:checked").length;
		                            if(checkedNum == 0) {
		                                dialog("请选择至少一项！",0);
		                                return;
		                            }
		                            // 批量选择
		
		                            var checkedList = new Array();
		                            $("input[name='m2-checkbox-name']:checked").each(function() {
		
		                                //$(this).parent('li').remove();
		                                checkedList.push($(this).val());
		                            });
		                            $.ajax({
		                                type: "POST",
		                                url: "/Usercenter-Messagecontrol-delmessage",
		                                dataType: 'json',
		                                data: {'id':checkedList},
		                                success: function(data) {
		
		                                    $.ajax({
		                                        type: "POST",
		                                        url: "/Usercenter-Messagecontrol-message_search",
		                                        dataType: 'json',
		                                        data:'',
		                                        success: function(data) {
		                                            $('.m2-news-body').remove();
		                                            $(data['html']).insertAfter('.m2-news-titcont');
		                                            $(".m2-news-manage").show();
		                                            $(".m2-news-manageall").show();
		                                            showcontent();
		                                        }
		                                    });
		
		                                }
		                            });
		
		                        });
		                    });
		                </script>
		                <h3><i></i>消息管理</h3>
		                <div class="m2-news-manageall"><input type="checkbox" class="m2-news-checkall"/><a class="m2-news-dele" href="javascript:void(0)">删除</a><a class="m2-news-quit" href="javascript:void(0)">退出管理</a></div>
		                <ul>
		                    <li class="m2-news-titcont"><h5 class="m2-news-tit">消息内容</h5><h6 class="m2-news-tit">生成时间</h6></li>
		                </ul>
		            </div>
		            <input type="hidden" class="m2-total-pages" value=0>
		            <div class="m2-news-pages">
		            </div>
		            </if>
		        </div>
		    </div>
		</div>
		<script type="text/javascript">
		    $(function(){
		        var pageIndex = parseInt(1);
		        m2page();
		        pager();
		    });
		    function m2page(){
		        $('.m2-page-unsel').click(function(){
		            pageIndex=parseInt($(this).index());
		            $(this).siblings('.m2-page-sel').removeClass('m2-page-sel').addClass('m2-page-unsel');
		            $(this).removeClass('m2-page-unsel').addClass('m2-page-sel');
		            m2page()
		        });
		
		    }
		
		    var page = '0';
		    var cpage = 1;
		    var stat = 2;
		
		    function getList(index){
		
		        if(index > 0 && index <= page){
		            $.ajax({
		                url:"usercenter-Messagecontrol-message_search",
		                type:"POST",
		                data:{
		                    start:index-1,
		                    status:stat
		                },
		                success:function(data){
		                    obj = eval('('+data+')');
		                    $('.m2-news-body').remove();
		                    $(obj['html']).insertAfter('.m2-news-titcont');
		                    showcontent();
		                    cpage = index;
		                    page = obj['pages'];
		                    pager();
		                }
		            });
		        }
		    }
		
		    function pager(){
		
		        if(page == 0){
		            $('.m2-news-pages').hide();
		        }else{
		            $('.m2-news-pages').show();
		            var n = 0;
		            if(page < 6){
		                n = page;
		            }else if(cpage < page){
		                n = cpage+1>5 ? cpage+1 : 5;
		            }else{
		                n = cpage;
		            }
		            var m = n-4>0 ? n-4 : 1;
		            var pages = '<a class="m2-pages-num m2-pages-prev" onclick="getList('+(cpage-1)+')">&lt;</a>';
		            for(var i = m; i <= n; i++){
		                if(i == cpage){
		                    pages += '<a class="m2-pages-num m2-page-sel" onclick="getList('+i+')">'+i+'</a>';
		                }else{
		                    pages += '<a class="m2-pages-num m2-page-unsel" onclick="getList('+i+')">'+i+'</a>';
		                }
		            }
		            pages += '<a class="m2-pages-num m2-pages-next" onclick="getList('+(cpage+1)+')">&gt;</a>';
		            $('.m2-news-pages').html(pages);
		        }
		    }
		</script>
	</body>
</html>