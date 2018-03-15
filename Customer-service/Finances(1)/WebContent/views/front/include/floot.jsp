<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String path = request.getContextPath();
%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>foot</title>
<link rel="stylesheet" href="/Finances/statics/front/statics/home/css/newPage.css" />
<link type="text/css" rel="stylesheet" href="/Finances/statics/front/statics/common/tipBox/colorbox-master/css/colorbox.css">
</head>

<body>
<div id="mainNewfoot">
    <div class="mainNewfocus" style ="width:740px;">
        <div class="mainNewblog">
            <ul>
               <li class="joinWb"><span id="cwb" ></span><p>官方微博</p></li>
                <li class="joinWx"><span id="flootcwc" ></span><p>官方微信</p></li>
            </ul>
        </div>
        <div class="mainNewcopy">
            <div class="mainNewserve">
                <h3>客服电话:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:12px;">投资有风险，请谨慎投资</span></h3>
                <h3><a id="kfdh"></a>&nbsp;&nbsp;&nbsp;http://Finances/toindex</h3>
                <ul>
                    <li><a href="/Finances/toinvestzt">我要投资</a></li>
                    <li><a href="/Finances/tohelp">帮助中心</a></li>
                    <li><a href="/Finances/toabout">关于我们</a></li>
                    <li><a href="/Finances/tonot">新闻公告</a></li>
                </ul>
            </div>
            <div class="mainNewown">
                <p>页面版权所有：江西忆信金融有限公司&nbsp;&nbsp;京ICP证150216号</p>
                <!--                <p>推荐使用IE7以上版本&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法律顾问：<a href="http://www.iqianbang.com/ihzhb-527.shtml" target="_blank" style="color:#a4a3a3">国浩律师事务所</a></p>-->
                <p>推荐使用IE7以上版本&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;法律顾问：国浩律师事务所（grandall.com.cn）</p>
            </div>
            <div class="mainNewsafe">
                <ul>
                    <li class="icon-norton"><a rel="nofollow"  href="https://sealinfo.verisign.com/splash?form_file=fdf/splash.fdf&amp;dn=www.iqianbang.com&amp;lang=zh_cn" target='_blank'></a></li>
                    <!--                    <li class="icon-cx"><a rel="nofollow"  href="https://credit.szfw.org/CX20150715010327080139.html" target="_blank"></a></li>-->
                    <li class="icon-kx"><a rel="nofollow"  href="https://ss.knet.cn/verifyseal.dll?sn=e14032111010847492vg0o000000&amp;ct=df&amp;a=1&amp;pa=0.8090716653969139" target="_blank"></a></li>
                    <!--                    <li class="icon-360"><a rel="nofollow"  href="http://webscan.360.cn/index/checkwebsite/url/www.iqianbang.com" target="_blank"></a></li>-->
                    <li class="icon-zhx"><a rel="nofollow"  href="http://www.itrust.org.cn/yz/pjwx.asp?wm=1076572005" target="_blank"></a></li>
                    <li class="icon-icp"><a rel="nofollow"  href="/anquanlicai_icp.html" target="_blank"></a></li>
                </ul>
            </div>
        </div>

    </div>
</div>

<!--底部[end]-->
<script type="text/javascript">
    //全局变量
    var GV = {
        DIMAUB: "",
        JS_ROOT: "/Finances/statics/front/statics/home/js/",
        TOKEN: "6666cd76f96956469e7be39d750cc7d9_ee70776ff5a128756690de65b1bc04be",
        THIS_URL: "Index-",
        TINVEST_URL: "/invest-shownewinvest.shtml"
    };
</script>

<script src="/Finances/statics/front/statics/common/js/common.js"></script>
<!-- 
<script src="/Finances/statics/front/statics/common/tipBox/layer-v1.5.1/layer/layer.js"></script>
 -->
<script src="/Finances/statics/front/statics/common/tipBox/common.js"></script>
<!--tipBOx-->

<script type="text/javascript">
$(function(){
	 
	 $.ajax({  
		    url : "/Finances/ajaxgetwechart",  
		    type: "post",
		    success: function(data){  
		    	 var dataObj=eval("("+data+")");
				 $("#flootcwc").css("background","url(" + "/Finances"+dataObj.cwechartimgurl + ")");
				 $("#cwb").css("background","url(" + "/Finances"+dataObj.cweboimgurl + ")");
		    	 $("#kfdh").html(dataObj.csphone);
		    },  
		    error: function(XMLHttpRequest, textStatus, errorThrown){  
		        alert(XMLHttpRequest.readyState + XMLHttpRequest.status + XMLHttpRequest.responseText);  
		    }  
		});  
	 
});
</script>

<script language=JavaScript type="text/javascript" src="/Finances/statics/front/statics/home/js/tab.js"></script>
<script type="text/javascript">$(function () {
    if ($.browser && $.browser.msie && ($.browser.version == "6.0") && !$.support.style) {
        $('#fixed-services').css('display', 'none');
    }
});
</script>
</body>
</html>