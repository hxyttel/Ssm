<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<!--头部导航start-->
    <div class="m2-frontHead">
        <div class="m2-frontHeadbox">
            <ul class="m2-frontHeadlist" id='aboutusul' style="width:998px;">
                <li>
                    <i class="m2-frontHeadbox-line"></i>
                    <a href="/Finances/toabout">
                        <b class="m2-headIcon1"></b>
                        <span>关于我们</span>
                    </a>
                </li>
                <li>
                    <i class="m2-frontHeadbox-line"></i>
                    <a href="/Finances/totures">
                        <b class="m2-headIcon2"></b>
                        <span>业务特色</span>
                    </a>
                </li>
                <li>
                    <i class="m2-frontHeadbox-line"></i>
                    <a href="/Finances/tobilia">
                        <b class="m2-headIcon3"></b>
                        <span>大事记</span>
                    </a>
                </li>
                <li>
                    <i class="m2-frontHeadbox-line"></i>
                    <a href="/Finances/tocover">
                        <b class="m2-headIcon4"></b>
                        <span>媒体报道</span>
                    </a>
                </li>
                <li>
                    <i class="m2-frontHeadbox-line"></i>
                    <a href="/Finances/tonot">
                        <b class="m2-headIcon5"></b>
                        <span id="announcementnav">网站公告</span>
                    </a>
                </li>
                <li>
                    <i class="m2-frontHeadbox-line"></i>
                    <a href="/Finances/toteam">
                        <b class="m2-headIcon6"></b>
                        <span>管理团队</span>
                    </a>
                </li><!--
            <li>
                <i class="m2-frontHeadbox-line"></i>
                <a href="/aiqianbang_licaiwang_zhaopin.html">
                    <b class="m2-headIcon7"></b>
                    <span>加入我们</span>
                </a>
            </li>
            --><li style="margin-right:0px">
                <a href="/Finances/tocon">
                    <b class="m2-headIcon8"></b>
                    <span>联系我们</span>
                </a>
            </li>
            </ul>
        </div>
    </div>
    <script>
        var href = window.location.href;
        var search = window.location.search;
        $('#aboutusul a').each(function () {
            if ($(this).prop('href') + search == href) {
                $(this).children('span').css('color', '#09ABE9');
            }
        });
        $(function(){
            $('body').css('background-color','#F0F0F0');
        });
    </script>
    <!--头部导航end-->
	</body>
</html>