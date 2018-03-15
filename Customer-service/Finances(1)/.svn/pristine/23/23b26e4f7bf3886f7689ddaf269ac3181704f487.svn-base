<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	                        <img id="ivrSecurityCodeImg" onclick="getCode()" src="/Finances/statics/front/statics/home2/images/Index-VerifyCode.png" alt="验证码" title="点击更新验证码">
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