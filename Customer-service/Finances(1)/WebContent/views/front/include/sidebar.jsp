<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	 <!-- 右侧边栏start -->
    <!-- 右侧登录窗口 -->

    <!--右侧登录框-->
 <div class="mo2-indexLoginbox" id="right-fix">
        <!-- 登录注册start -->
       	<c:if test="${sessionScope.user.uid  == null}">
	        <div class="mo2-indLogreg" >				
		        <div class="mo2-indLogtab">
		            <ul>
		                <li class="mo2-logTab-unsel mo2-indTab-reg">
		                    <span>注册</span><b></b>
		                </li>
		                <li class="mo2-logTab-sel mo2-indTab-log">
		                    <span>登录</span><b></b>
		                </li>
		            </ul>
		        </div>
	            <!-- 注册start -->
        <div class="mo2-indRegboxRight" style="display:none;">
            <div class="mo2-indLogitem" style="margin-bottom:6px;">
                <i class="mo2-indLogicon-tel"></i>
                <input class="mo2-indIpt-all" id="regTelRight" maxlength="11" type="text" placeholder="输入手机号码">
                <b class="mo2-indLogwarRight">
                <em class="mo2-indlogWar-arr">
                </em><u></u></b>
            </div>
            <div class="mo2-indLogitem" style="margin-bottom:6px;">
                <i class="mo2-indLogicon-psw"></i><input class="mo2-indIpt-all m2-ind-banPsw" id="passRight" type="password" placeholder="6-20位数字与字母组合的密码">
                <b class="mo2-indLogwarRight"><em class="mo2-indlogWar-arr"></em><u></u></b>
            </div>
            <div class="mo2-indLogitem-step1">
                <div class="mo2-indLogreg-step1">
                    <i class="mo2-indLogicon-code"></i><input class="mo2-indIptcod-step1" id="vcodeRight" type="text" placeholder="验证码">
                </div>
                	<!-- 图形验证码 -->
                  <div class="mo2-indRegcode" id="reverifyCodeRight" ></div>
                <b class="mo2-indLogwarRight"><em class="mo2-indlogWar-arr"></em><u></u></b>
            </div>
            <div class="mo2-indReg-btn" id="verifyregcode" onclick="verifycodeRight();" style="margin-top:8px;">
                <a class="mo2-indRegbtn-able" href="#">立即注册</a>
            </div>
            <div class="mo2-indRegagree">
                <i class="mo2-indReg-sel"></i><span>我已阅读并同意</span><b>《爱钱帮注册服务协议》</b>
            </div>
        </div>
        <!-- 注册end -->
		<!-- 注册step2 start -->
        <div class="mo2-indRegbox2Right"  style="display:none;" >
            <div class="mo2-indReg2-con">
                <ul>
                    <li><i class="mo2-indRegicon-step1"></i><span>为了确保您手机可用，请填写您收到的手机动态码。</span></li>
                    <li><i class="mo2-indRegicon-step2"></i><span>如收不到短信验证码，可点击下面的获取语音验证码。</span></li>
                </ul>
            </div>
            <div class="mo2-indLogitem">
                <i class="mo2-indLogicon-code"></i><input class="mo2-indIpt-half" id="codeRight" type="text" placeholder="验证码">
                <span class="mo2-indRegtim mo2-regTin-able"><u>60秒后</u><span>获取手机验证码</span></span>
                <b class="mo2-indLogwarRight" style="width:200px;"><em class="mo2-indlogWar-arr"></em><u>错误提示信息</u></b>
            </div>
            <div class="mo2-indRegvoice">
                <span class="mo2-indRegvoi-btn mo2-indRegvoi-able"><i></i>获取语音验证码</span>
            </div>
             <input type="hidden" id="sidbarcode">
            <div class="mo2-indReg-btn" onclick="registerRight();" id="verifyregphone"  style="margin-top:8px;">
                <a class="mo2-indRegbtn-able"  href="#">立即注册</a>
            </div>
        </div>
        <!-- 注册step2 end -->
	            <!-- 登录start -->
	            <div class="mo2-indLogboxRight">
	                <div class="mo2-indLogitem mo2-indLogitem-use" style="margin-bottom:9px;">
	                    <i class="mo2-indLogicon-use"></i><input class="mo2-indIpt-all" type="text" id="user_nameRight" placeholder="用户名/手机号">
	                    <b class="mo2-indLogwar" id="w_username"><em class="mo2-indlogWar-arr"></em><u id="r_usernameRight"></u></b>
	                </div>
	                <div class="mo2-indLogitem mo2-indLogitem-psw" style="margin-bottom:9px;">
	                    <i class="mo2-indLogicon-psw"></i><input class="mo2-indIpt-all m2-ind-banPsw" maxlength="20" id="pass_wordRight" type="password" id="pass_wordRight" placeholder="输入登录密码">
	                    <b class="mo2-indLogwar" id="w_password"><em class="mo2-indlogWar-arr"></em><u id="r_passwordRight"></u></b>
	                </div>
	              <!-- 
	                <div class="mo2-indLog-code" style="display:none;margin-bottom:8px;">
	                    <div class="mo2-indLogcod-lef">
	                        <i class="mo2-indLogicon-psw"></i>
	                        <input type="text" id="vcodeRight" placeholder="验证码"></div>
	                    <div class="mo2-indLogcod-rig"><img src="/Finances/statics/front/statics/home2/images/Index-VerifyCode.png" onClick="document.getElementById('reverifyCode').src='Index-VerifyCode.png?time='+Math.random();void(0);" alt="点击刷新验证码"></div>
	                </div>
	              -->
						
	                <div class="mo2-indLog-forget">
	                	 记住密码：<input type="checkbox" id="issvae" checked="">
	                	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                	<a href="forget.html">忘记密码?</a>
	                </div>
	               
	                <div class="mo2-indReg-btn">
	                    <a class="mo2-indRegbtn-able" onclick="loginRight();">登录</a>
	                </div>
	            </div>
	            <!-- 登录end -->
	        </div>
       	</c:if>
        <!-- 登录注册end -->
    </div>
    <!-- 右侧登录窗口 -->
    <!--add by zml start-->
    <!--<div id="fixbar" style="width:50px;position:fixed;top:0;right:0px;background:#ff6666;z-index:5;"></div>-->

    <!--右侧悬浮条-->
    <div id="fixbar">
        <!-- 右侧边栏顶部 -->
        <!--右侧上边栏start -->
        <div class="m2-commonRight2"  id="m2-commonRight">
            <ul class="m2-comRiglist myclick">
                <li class="m2-comRigli m2-comRigli-ewm m2-comRigli_new" style="border-top:1px solid #fff;" data="#fixnavbar_one">
                    <div></div>
                    <img src="/Finances/statics/front/statics/home2/images/fixed-r1.png" alt="我的账户">
                    <div class="toAbs">
                        <div><img src="/Finances/statics/front/statics/home2/images/fixedl-1_v2.png" alt="我的账户"></div>
                        <div></div>
                    </div>
                </li>
                <li class="m2-comRigli m2-comRigli-tel m2-comRigli_new" data="#fixnavbar_two">
                    <img src="/Finances/statics/front/statics/home2/images/fixed-r2.png" alt="我的红包">
                    <div></div>            	<div class="toAbs">
                    <div><img src="/Finances/statics/front/statics/home2/images/fixedl-2_v2.png" alt="我的红包"></div>
                    <div></div>
                </div>
                </li>
                <li class="m2-comRigli m2-comRigli-qq m2-comRigli_new" data="#fixnavbar_three">
                    <img src="/Finances/statics/front/statics/home2/images/fixed-r3.png" alt="我的加息券">
                    <div></div>            	<div class="toAbs">
                    <div><img src="/Finances/statics/front/statics/home2/images/fixedl-3_v2.png" alt="我的加息券"></div>
                    <div></div>
                </div>
                </li>
                <%--
                <li class="m2-comRigli m2-comRigli-sug m2-comRigli_new" data="#fixnavbar_four">
                    <img src="/Finances/statics/front/statics/home2/images/fixed-r4.png" alt="站内信息">
                    <div></div>            	<div class="toAbs">
                    <div><img src="/Finances/statics/front/statics/home2/images/fixedl-4_v2.png" alt="站内信息"></div>
                    <div></div>
                </div>
                </li>
                --%>
            </ul>
        </div>
        <!-- 右边侧栏顶部右边弹出 -->
        <div class="fixbox_bar">
            <div class="fixnavbar" id="fixnavbar_one">
                <div class="sumtop">
                    <div class="top" style="margin: 18px;text-align: center;font-size: 20px;position: relative;"><span style="position: absolute;top: 0;left:-18px">&gt;&gt;</span>我的账户</div>
                    <div class="bottom">
                        <img src="${pageContext.request.contextPath}${sessionScope.user.userinfo.uiheadImg}" alt="我的账户">
                        <div>
                            <p id ="right_name_info"></p>
                            <button id="right_recharge" onclick="window.open('http://127.0.0.1:8080/Finances/tousercenter?uid=${sessionScope.user.uid}')">充值</button>
                        </div>
                    </div>
                </div>
                <hr style="margin:0 10px;"/>
                <div class="summiddle">
                    <ul>
                        <li style="border-top-left-radius:10px;">
                            <p><span id="right_account_money">0.00</span>元</p>
                            <span>可用资金</span>
                        </li>
                        <li style="border-top-right-radius:10px;">
                            <p><span id="right_reward_money">0.00</span>元</p>
                            <span>可用奖励金</span>
                        </li>
                    </ul>
                    <div class="content">
                        <p>待收本金：<span id="right_total_capital">0.00</span>元</p>
                        <p>待收收益：<span id="right_total_wait_interest">0.00</span>元</p>
                    </div>
                    <p class="lastcontent">资产总计：<span id="right_total_asset">0.00</span>元</p>
                    <ul style="margin-top:30px;">
                        <li style="border-top-left-radius:10px;border-bottom-left-radius:10px;">
                            <p><span id="right_today_earn">0.00</span>元</p>
                            <span>今日赚取</span>
                        </li>
                        <li style="border-top-right-radius:10px;border-bottom-right-radius:10px;">
                            <p><span id="right_total_reward_normal_interest">0.00</span>元</p>
                            <span>累计收益</span>
                        </li>
                    </ul>
                </div>
                <div class="sumbottom" onclick="window.open('http://127.0.0.1:8080/Finances/tousercenter?uid=${sessionScope.user.uid}')" id ="accountCommon_right">查看更多>></div>
            </div>
            <div class="fixnavbar common" id="fixnavbar_two">
            	 <div class="sumtop">
                    <div class="top" style="margin: 18px;text-align: center;font-size: 20px;position: relative;"><span style="position: absolute;top: 0;left:-18px">&gt;&gt;</span>我的账户</div>
                    <div class="bottom">
                        <img src="${pageContext.request.contextPath}${sessionScope.user.userinfo.uiheadImg}" alt="我的账户">
                       
                    </div>
                </div>
                <hr style="margin:0 10px;"/>
                <div class="summiddle" onclick="window.open(http://127.0.0.1:8080/Finances/torecharge?uiid=${sessionScope.user.uid})" id="myredmoney">
                  
                </div>
            </div>
            <div class="fixnavbar common" id="fixnavbar_three">
            	 <div class="sumtop">
                    <div class="top" style="margin: 18px;text-align: center;font-size: 20px;position: relative;"><span style="position: absolute;top: 0;left:-18px">&gt;&gt;</span>我的账户</div>
                    <div class="bottom">
                        <img src="${pageContext.request.contextPath}${sessionScope.user.userinfo.uiheadImg}" alt="我的账户">
                       
                    </div>
                </div>
                <hr style="margin:0 10px;"/>
                <div class="summiddle" id="myvouch">
                   
                </div>
            </div>
            <div class="fixnavbar" id="fixnavbar_four"></div>
        </div>

        <!-- 右侧边栏底部 -->
        <div class="m2-commonRight">
            <ul class="m2-comRiglist">
                <li class="m2-comRigli m2-comRigli-ewm"  style="border-top:1px solid #fff;">
                    <i class="m2-comRigli-icon" id="cwc"></i>
                    <span class="m2-comRigli-hov">关注<br>微信</span>
                    <div class="m2-comRighide m2-comRighide-ewm">
                    <i id="maxcwc">
                    </i>
                    </div>
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
                <li class="m2-comRigli m2-comRigli-qq" style="position:relative;">
                    <i class="m2-comRigli-icon" style="z-index:100;"></i>
                    <span class="m2-comRigli-hov" style="z-index:100;">
                    	<a target="_blank" id="zxkf">
                    		 在线<br>客服
                    	</a>
                     </span>
                </li>
                <li class="m2-comRigli m2-comRigli-sug" style="border-bottom: 1px solid #fff;">
                    <i class="m2-comRigli-icon"></i>
                    <span class="m2-comRigli-hov"><a href="/Finances/tohelp" target="_blank" style="color:#fff;">帮助<br>中心</a></span>
                </li>

                <li class="m2-comRigli m2-comRigli-top">
                    <i class="m2-comRigli-icon"></i>
                    <span class="m2-comRigli-hov">返回<br>顶部</span>
                </li>
            </ul>
        </div>
    </div>

    <script type="text/javascript">
        $(function(){
            $('#right_recharge').click(function(){
                window.location.href="#";
            });

            $(".fixbox_bar").click(function(event){
                event.stopPropagation();
            });
            $('#accountCommon_right').click(function(){
                window.location.href="/Finances/tousercenter?uid=${sessionScope.user.uid}";
            });
        })

    </script>
    
    <!--首页右侧提示悬浮窗、账户、红包、加息券 user_m_type -->
   <c:if test="${sessionScope.user.uid  == null}">
    	<script type="text/javascript">
    		
	        $(".m2-comRigli").click(function(event){
	        	//如果是主界面则return;
	        	var a =  $("#myyzcode").val();
	        	if(typeof(a) != "undefined"){
	        		return;
	        	}
	        	if(a!=null){
	        		return;
	        	}
	            $('#right-fix').animate({ right: '50px'}, "slow");
	            event.stopPropagation();
	        });
	        $("#right-fix").click(function(event){
	            event.stopPropagation();
	        });
	        $("body").click(function(){
	            $('#right-fix').animate({ right: '-290px'}, "slow");
	        });
	    </script>
    </c:if>
	
	<c:if test="${sessionScope.user.uid  != null}">
	    <script type="text/javascript">
				$(function(){
					$(".fixbox_bar").click(function(event){
						event.stopPropagation();
					});
					$("#fixbar .myclick li").click(function(event){
						var select=$(this).attr("data");
						$(".fixnavbar").css("display","none");
						$(select).css("display","block");
						$('#fixbar').animate({ right: '300'}, "slow");
						$("#fixbar .fixbox_bar").animate({ right: '-18'}, "slow");
						// 阻止事件冒泡
						event.stopPropagation();
						if(select=="#fixnavbar_one"){
							//获取用户信息
							$.ajax({
								type:'POST',
		
								url:"/Home-RightHomePage-account_right_new",
								success:function(msg){
									var obj = eval('('+msg+')');
									$("#right_today_earn").text(obj.today_earn);
									$("#right_total_capital").text(obj.total_capital);
									$("#right_account_money").text(obj.account_money);
									$("#right_reward_money").text(obj.reward_money);
									$("#right_total_asset").text(obj.total_asset);
									$("#right_total_wait_interest").text(obj.total_wait_interest);
									$("#right_name_info").text(obj.real_name);
									$("#right_total_reward_normal_interest").text(obj.total_reward_normal_interest);
								}
		
							});
						}else if(select=="#fixnavbar_two"){
							//获取红包
							$.ajax({
								type: "POST",
								url: '${pageContext.request.contextPath}/ajaxgetUserRedMoney',
								success: function(data) {
									var dataObj=eval("("+data+")");
									$('#myredmoney').html('');
									var cc="";
									if(dataObj.listniu.length==0){
						        		cc = '<center><h1>没有数据</h1></center> ';
						        	}else{
						        	  cc =mackuserredmoeny(dataObj.listniu);
						        	}
									$('#myredmoney').append(cc);									
								}
							});
						}else if(select=="#fixnavbar_three"){
							//获取加息券
							$.ajax({
								type: "POST",
								url: '${pageContext.request.contextPath}/ajaxgetUservouch',
								success: function(data) {
									var dataObj=eval("("+data+")");
									$('#myvouch').html('');
									var cc ="";
									if(dataObj.listniu.length==0){
						        		cc = '<center><h1>没有数据</h1></center> ';
						        	}else{
						        		cc =mackuservouch(dataObj.listniu);
						        	}
									$('#myvouch').append(cc);	
								}
							});
						}else if(select=="#fixnavbar_four"){
							$.ajax({
								type: "POST",
								url: '/Home-RightHomePage-sitemsg_right_new',
								success: function(data) {
									$('#fixnavbar_four').empty();
									$('#fixnavbar_four').append(data);
								}
							});
						}
					});
					// 点击页面其他地方框消失
					$("body").click(function(){
						$('#fixbar').animate({ right: '0'}, "slow");
						$("#fixbar .fixbox_bar").animate({ right: '-318'}, "slow");
				   });
				})
	    </script>
    </c:if>
    <script>
    	function mackuserredmoeny(list){
    		var aa ='<ul>'
    			$.each(list,function(i,item){  
    				aa +=' <li style="border-top-left-radius:10px;background-color: #FF2D2D;width: 240px;" >'
    				aa +='<p style="color: white;"><span id="right_account_money">'+item.rmoney+'</span>元可用红包</p>';
    				aa +='  <span>还有'+item.expireday+'天到期</span>';
    				aa+='</li>'
    			})
    		aa+='</ul>' 
    		return aa;
    	}
    	function mackuservouch(list){
    		var aa ='<ul>'
    			$.each(list,function(i,item){  
    				aa +=' <li style="border-top-left-radius:10px;background-color: #FF2D2D;width: 240px;" >'
    				aa +='<p style="color: white;"><span id="right_account_money">'+item.uvmoney+'</span>元可用红包</p>';
    				aa +='  <span>还有'+item.uvday+'天到期</span>';
    				aa+='</li>'
    			})
    		aa+='</ul>' 
    		return aa;
    	}
    </script>
    <script>
		
        var flag="";
	    var aNum=$('.num1');
	    for(var i=0;i<aNum.length;i++){
	        var iNum=parseInt(aNum[i].innerHTML);
	        if(iNum>=100){
	            aNum[i].innerHTML='···';
	        }
	    }
        
        //右侧悬浮框
        var aLi=$('.m2-comRigli_new');
        for(var i=0;i<aLi.length;i++){
            (function(index){
                aLi[index].onmouseover=function(){
                    var oDiv=aLi[index].children[2];
                    var aDiv=oDiv.children;
                    oDiv.style.display='block';
                    if(flag==1){
                        var iNum=parseInt(aDiv[1].innerHTML);
                        if(iNum>=100){
                            aDiv[1].innerHTML='···';
                        }
                    }
                };
            })(i)
        }
        for(var i=0;i<aLi.length;i++){
            (function(index){
                aLi[index].onmouseout=function(){
                    var oDiv=aLi[index].children[2];
                    var aDiv=oDiv.children;
                    oDiv.style.display='none';
                    if(flag==1){
                        var iNum=parseInt(aDiv[1].innerHTML);
                        if(iNum>=100){
                            aDiv[1].innerHTML='···';
                        }
                    }
                };
            })(i)
        }

    </script>


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
   <script type="text/javascript">
$(function(){
	 $.ajax({  
		    url : "/Finances/ajaxgetwechart",  
		    type: "post",
		    success: function(data){  
		    	 var dataObj=eval("("+data+")");
				 //$("#cwc").css("background","url(" + "/Finances"+dataObj.cwechartimgurl + ")");
				 $("#maxcwc").css("background","url(" + "/Finances"+dataObj.cwechartimgurl + ")");
		    	  $("#zxkf").attr("href","http://wpa.qq.com/msgrd?v=3&uin="+dataObj.cqqnum+"&site=qq&menu=yes");
		    },  
		    error: function(XMLHttpRequest, textStatus, errorThrown){  
		        alert(XMLHttpRequest.readyState + XMLHttpRequest.status + XMLHttpRequest.responseText);  
		    }  
		})  
});
</script>