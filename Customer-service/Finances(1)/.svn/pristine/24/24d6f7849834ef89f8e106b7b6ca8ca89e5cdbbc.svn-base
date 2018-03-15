<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
 <!DOCTYPE html>
<html lang="zh">
    <head>
        <meta charset="UTF-8">
        <meta name="keywords" content="投资理财平台，个人理财，新型投资理财，网上理财平台，理财产品P2P，正规理财产品">
        <meta name="description" content="亿信金融平台(iqianbang.com)阳光透明P2P投资理财平台,致力于为用户提供高效便捷的互联网金融理财、个人理财产品等服务。平台累计成交额已经超过100亿元,用户数超过41万人。">
        <title>亿信金融平台_个人理财产品-亿信网</title>
        
        <meta property="og:type" content="image" />
		<meta property="og:image" content="https://www.iqianbang.com/statics/home/images/logo_brief.jpg" />
        
       <!--[if lt IE 9]>
        <script src="js/html5shiv_1.js"></script>
        <![endif]-->
        <link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/6.png">
        <link rel="stylesheet" href="/Finances/statics/front/css/m2-commonnew_1.css">
		<link rel="stylesheet" href="/Finances/statics/front/css/m2-main_1.css">
        <link rel="stylesheet" href="/Finances/statics/front/css/m2-common_1.css">
        <link rel="stylesheet" href="/Finances/statics/front/css/newreg_1.css">
        <script type="text/javascript" src="/Finances/statics/front/js/jquery.min_1.js"></script>
        <script type="text/javascript" src="/Finances/statics/front/js/common_1.js"></script>
	    <meta charset="UTF-8">
	    <link rel="stylesheet" href="/Finances/statics/front/css/pread_1.css" type="text/css"/>
	    <link rel="stylesheet" href="/Finances/statics/front/css/slide_1.css" type="text/css"/>
	    <link rel="stylesheet" href="/Finances/statics/front/css/m2-main_1.css">
	    <link rel="stylesheet" href="/Finances/statics/front/css/style_1.css">
	    <!-- 图形验证码 -->
		<script src="/Finances/statics/front/js/gVerify.js"></script>
</head>
<body >
 <!--公共提示框start-->
    <div class="m2-pwdBg" style='display:none;z-index:9000'></div>
    <div class="m2-pwdConfirm" style='display:none;z-index:9001'>
        <i class="m2-pwdConfirm-close"></i>
        <i class="m2-pwdConfirm-ture" id='dialog-status'></i>
        <div class="m2-pwdConfirm-con">
        </div>
    </div>
    
<!-- 页头 start -->
<div class="header-cxm">
    <div class="wrapper clearfix">
        <a class="logo" href="/"><img src="/Finances/statics/front/statics/newcommon/images/logr.png" alt=""></a>
        <div class="phone">客服热线：4006-777-518</div>
    </div>
</div>
<!-- 页头 end -->
<div class="bigPicture">
    <!-- index_focus start -->
    <div class="index_focus" >
        <!-- substance start -->
        <div class="substance position-rela">
            <a href="javascript:;" class="index_focus_pre ifp2" title="上一张">上一张</a>
            <a href="javascript:;" class="index_focus_pre ifp2" title="上一张">上一张</a>
        </div>
        <!-- substance end -->
        <div class="bd">
            <ul>
                <li style="height:600px;background:url(/Finances/statics/front/images/weibojoin/active201712_1.jpg) center center repeat-x;">
                    <a href="#" target="_blank" class="pic"></a>
                </li>
                <li style="height:600px;background:url(/Finances/statics/front/images/weibojoin/active201801_1.jpg) center center repeat-x;">
                    <a href="#" target="_blank" class="pic"></a>
                </li>
                <li style="height:600px;background:url(/Finances/statics/front/images/weibojoin/banner_02_1.png) center center repeat-x;">
                    <a href="#" target="_blank" class="pic"></a>
                </li>
            </ul>
        </div>

        <div class="slide_nav">
            <a href="javascript:;">●</a>
            <a href="javascript:;">●</a>
             <a href="javascript:;">●</a>
        </div>
    </div>
    <!-- index_focus end -->
 <div class="wrapper">
 		<input type="hidden" value="${userUinvite.uinvite}" name="uinvite" id="uinvite">
            <div class="register" id="div_register1">
                <p class="title">注册即享多重好礼</p>
                <div class="iptContext">
                    <div class="ipt-group">
                        <input type="text"  name="phone" id="phone" class="text iptphone" placeholder="输入手机号码" maxlength="11" />
                      	<font style="color:red"><span id="phoneConditon"></span></font>
                        <em class="error"></em>
                    </div>
                    <div class="ipt-group">
                        <input type="password"  name="pass_word" id="pass_word" class="text iptpassword"  placeholder="6-15位常用英文字母或数字" maxlength="20"  />
                        <font style="color:red"><span id="passwordConditon"></span></font>
                        <em class="error"></em>
                    </div>
                    <div class="ipt-group picture">
                        <input type="text" name="icode" id="icode" class="text iptviste"  placeholder="图形验证" maxlength="20" />
                       	 <div class="imgviste">
                            <i class="mo2-indRegcode"  id="reverifyCode" ></i>
                    	</div>
                    	<em class="error"></em>
                    	<font style="color:red"><span id="icodeConditon"></span></font>
                     </div>
                    <div class="iptChoose">
                        <label for="agree">
                              <input id="agree" name="agree" checked="" type="checkbox"><i></i>&nbsp;我已阅读并同意<a href="javascript:void (0)" id="agreement" class="red">《亿信金融平台注册服务协议》</a>
                            <em class="error"></em>
                            <font style="color:red"><span id="agreeConditon"></span></font>
                        </label>
                    </div>
                    <div class="btnGroup">
                        <button type="button"  onclick="register()" class="btn btnRed">注册领取</button>
                    </div>
                    <p class="account">已有账号，请<a href="/Finances/tologin" class="red"> 登录</a></p>
                </div>
            </div>

            <div class="register" id="registers" style="display: none;">
                <p class="title">注册</p>
                <p class="step step1">为了确保账号可用，请填写您收到的手机动态码。</p>
                <p class="step step2">如收不到短信验证码，可点击下面的获取语音验证码。</p>
                <div class="iptContext">
                    <div class="ipt-group phone">
                        <input type="text" id="code" name="code" class="text iptviste iptPhoneviste"  placeholder="手机验证" maxlength="6">
                        <span class="mo2-indRegtim mo2-regTin-able"><u>60秒后</u><span>获取手机验证码</span></span>
                        <font style="color:red"><span id="messageConditon"></span></font>
                        <em class="error" > </em>
                    </div>
                   <!--  <p class="getSheepch" id="sheepch">
                        <span class="mo2-indRegvoi-btn mo2-indRegvoi-able"><i></i>获取语音验证码</span>
                    </p> -->
                    <input type="hidden" id="myyzcode">
                    <div class="btnGroup step2">
                        <button  id="register2" onclick="register2()" class="btn btnRed">注册领取</button>
                    </div>
                </div>
            </div>
    </div>
</div>
<!-- 数据总览 start -->
<div class="dataTotal dataCase clearfix">
    <div class="wrapper clearfix">
        <h2 class="title">数据总览</h2>
        <div class="detailGroup clearfix">
            <div class="dataGroup clearfix">
                <div class="img img1"></div>
                <div class="data">
                    <h3 id='pf_money'>${allMoneyFabiao}</h3>
                    <i>已完成投资额(元)</i>
                </div>
            </div>
            <div class="dataGroup dataGroup2 clearfix">
                <div class="img img2"></div>
                <div class="data">
                    <h3 id="pf_user">${allUser}</h3>
                    <i>累计服务人数(人)</i>
                </div>
            </div>
              <div class="dataGroup dataGroup3 clearfix">
                <div class="img img3"></div>
                <div class="data">
                    <h3 id='pf_day'>${allMoneyProfit}</h3>
                    <i>运营天数(天)</i>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 数据总览 end -->

<!-- 新手福利 start -->
<div class="wrapper newperon dataCase clearfix">
    <h2 class="title">新手福利</h2>
    <img class="gototop" src="/Finances/statics/front/images/weibojoin/spread_05.png" alt="">
</div>
<!-- 新手福利 end -->

<!-- 理财产品 start -->
<div class="dataTotal dataCase">
    <div class="wrapper">
        <h2 class="title">理财产品</h2>
        <!-- financeGro start -->
        <div class="financeList_group clearfix">
            <!-- finance_gr start -->
           <div class="finance_gr">
                <div class="fin-h2">
                    <img src="picture/predr_03_1.png" alt="">
                    <span>3个月</span>
                </div>
                <img src="picture/pred_03_1.png" alt="">
                <div class="rate">
                    9.5%
                </div>
                <p class="text">约定年化利率</p>
                <p class="text extend"><img src="picture/pred_07_1.png" alt="">银行资金存管</p>
                <a href="javascript:;" class="btn btnError">马上投资</a>
            </div>
            <!-- finance_gr end -->
            <!-- finance_gr start -->
             <div class="finance_gr">
                <div class="fin-h2">
                    <img src="picture/predr_03_1.png" alt="">
                    <span>3个月</span>
                </div>
                <img src="picture/pred_03_1.png" alt="">
                <div class="rate">
                    9.5%
                </div>
                <p class="text">约定年化利率</p>
                <p class="text extend"><img src="picture/pred_07_1.png" alt="">银行资金存管</p>
                <a href="javascript:;" class="btn btnError">马上投资</a>
            </div>
            <!-- finance_gr end -->
            <!-- finance_gr start -->
            <div class="finance_gr">
                <div class="fin-h2">
                    <img src="/Finances/statics/front/images/weibojoin/predr_03_1.png" alt="">
                    <span>6个月</span>
                </div>
                <img src="/Finances/statics/front/images/weibojoin/pred_03_1.png" alt="">
                <div class="rate">
                    10.5%
                </div>
                <p class="text">约定年化利率</p>
                <p class="text extend"><img src="/Finances/statics/front/images/weibojoin/pred_07_1.png" alt="">银行资金存管</p>
		        <a href="javascript:;" class="btn btnRed goRegister">马上投资</a>
            </div>
            <!-- finance_gr end -->
            <!-- finance_gr start -->
            <div class="finance_gr" style="margin-right: 0;">
                <div class="fin-h2">
                    <img src="/Finances/statics/front/images/weibojoin/predr_03_1.png" alt="">
                    <span>12个月</span>
                </div>
                <img src="/Finances/statics/front/images/weibojoin/pred_03_1.png" alt="">
                <div class="rate">
                    11.5%
                </div>
                <p class="text">约定年化利率</p>
                <p class="text extend"><img src="/Finances/statics/front/images/weibojoin/pred_07_1.png" alt="">银行资金存管</p>
                <a href="javascript:;" class="btn btnError">马上投资</a>
            </div>
            <!-- finance_gr end -->
        </div>
        <!-- financeGro end -->
    </div>
</div>
<!-- 理财产品 end -->

<!-- 为何选择亿信金融平台 start -->
<div class="wrapper iconGroup dataCase">
    <h2 class="title">为何选择亿信金融平台</h2>
    <div class="iconContext clearfix">
        <div class="condi condi1">
            <span></span>
            <h2>合规</h2>
            <p>银行直接存管<br>ICP信息服务业务许可证</p>
        </div>
        <div class="condi condi2">
            <span></span>
            <h2>安全</h2>
            <p>多重风控+小额分散<br>独立的第三方机构担保</p>
        </div>
        <div class="condi condi3">
            <span></span>
            <h2>权威</h2>
            <p>北京市互联网金融行业协会创始会员<br>央行中国互联网金融协会首批会员</p>
        </div>
        <div class="condi condi4">
            <span></span>
            <h2>实力</h2>
            <p>获B轮融资5亿元<br>2014年盛大战略投资</p>
        </div>
    </div>
</div>
<!-- 为何选择亿信金融平台 end -->

<!-- 亿信金融平台优势 start -->
<div class="dataTotal iconGroup dataCase dataSuper">
    <div class="wrapper">
        <h2 class="title">亿信金融平台优势</h2>
        <div class="iconContext clearfix">
            <div class="condi condi1">
                <span></span>
                <h2>收益稳健</h2>
                <p>银行存管+多重风控<br>年化9-11%</p>
            </div>
            <div class="condi condi2">
                <span></span>
                <h2>0手续费</h2>
                <p>充值0手续费<br>提现0手续费</p>
            </div>
            <div class="condi condi3">
                <span></span>
                <h2>银行存管+余额理财</h2>
                <p>站岗资金也能生息<br>提高资金使用率</p>
            </div>
            <div class="condi condi4">
                <span></span>
                <h2>担保机构保证兑付</h2>
                <p>独立第三方机构担保<br>历史兑付率100%</p>
            </div>
            <div class="condi condi5">
                <span></span>
                <h2>资金高流动性</h2>
                <p>投资后债权转让<br>投资灵活</p>
            </div>
        </div>
    </div>
</div>
<!-- 亿信金融平台优势 end -->
<!-- 注册领取红包按钮 start -->
<div class="btnContext wrapper">
    <div class="btnGroup">
        <a href="javascript:;" class="btn btnRed goRegister">注册领取50元红包</a>
    </div>
    <p>投资有风险，入市需谨慎，最终收益以实际为准</p>
</div>
<div class="activeFotter">
    <p>江西赣州宏图有限公司  京ICP证150216号</p>
    <p>江西赣州沙石镇楼梯岭88</p>
    <p>全国服务热线：4006-777-518</p>
    <p>市场有风险 投资需谨慎</p>
</div>
<!-- 注册领取红包按钮 end -->
<div class="m2-tranBg" style="display: none;"></div>
<div class="m2-login-voice" style="display: none;">
    <i class="m2-loginVoi-boxClose" ></i>
    <div class="m2-logVoi-psg">您的注册手机号即将接到由，4006-777-518拨打的语音电话并播报验证码，请准确记录</div>
    <div class="m2-logVoi-btn">
        <span class="m2-logVoi-sur" >确&nbsp;&nbsp;&nbsp;定</span>
        <span class="m2-logVoi-can" >取&nbsp;&nbsp;&nbsp;消</span>
    </div>
</div>
<div class="protocol-box"  style="display:none;z-index: 999;"></div>
<!--新用户完成注册完成成功窗口-->
	<div class="comregist" id="newregister" style="display:none;">
	    <div class="comregistmask z100"></div> 
	    <div class="comregistbox z101">
	        <div class="comregistbox_b">
	            <p></p>
	            <div>
	                <img src="/Finances/statics/front/statics/home2/images/december-expermoney/regist.png" alt="恭喜您注册亿信金融平台，20000元体验金已经发送您的账户">
	                <span class="incentivebox_bp1">恭喜您注册亿信金融平台，<span class="red">20000元</span>体验金已经发送您的账户</span>
	                <p class="comregistbox_bp2">您可以去体验金项目进行投资</p>
	            </div>
	            <a href="/Finances/toopen">确定</a>
	            <div class="close" id="newregister-close"><img src="/Finances/statics/front/statics/home2/images/december-expermoney/close.png" alt="点击取消"></div>
	        </div>
	    </div>
	</div>
		
</body>
 <script type="text/javascript">
 //隐藏弹窗(体验金弹框)
 $("#newregister-close").click(function(){
     $("#newregister").hide();
     window.location.reload();
 });
    </script>
<!-- in-mask end -->
<script src="/Finances/statics/front/js/jquery.min_1.js"></script><!-- jquery 类库 javascript -->

<script src="/Finances/statics/front/js/jquery.validate_1.js"></script>
<script src="/Finances/statics/front/js/validate_code_1.js"></script>
 <script src="/Finances/statics/front/js/register_1.js"></script><!--jquery 类库 javascript -->
<script src="/Finances/statics/front/js/jquery.superslide_1.js"></script><!-- jquery 类库 javascript -->
<script type="text/javascript">
		 $('#phone').blur(function(){
		    checkphone();
		});
		$('#pass_word').blur(function(){
		    checkpassword();
		});
		$('#icode').blur(function(){
            checkicode();
        }); 
		if ( $("#reverifyCode").length > 0 ) { 
			var verifyCode = new GVerify("reverifyCode");
		}
		
		function checkphone(){
			var phone = $('#phone').val();
			 var reg=/^1\d{10}$/;
			if(phone=='' || phone==null){
				$('#phoneConditon').html("电话号码不能为空!");
			}
			else if(phone.length > 0){
				if(!reg.test(phone)){
					$('#phoneConditon').html('手机号格式错误')
				}
				else{
					$('#phoneConditon').html('');
				}
			}
			else{
				$.ajax({
					url:'/Finances/front/getregpdphishave',
					data:{'phone':phone},
					dataType:'json',
					type:"post",
					success:function(data){
						if(data.message!=' '){
							$('#phoneConditon').html(data.message);
						}
						else{
							$('#phoneConditon').html('');
						}
					}
				});
				
			}
			
		}
		function checkpassword(){
			var password = $('#pass_word').val();
			if(password.length>0){
				if(password.length < 6){
					$('#passwordConditon').html('密码设置有误')
				}
				else if(password.length > 20){
					$('#passwordConditon').html('密码设置有误')
				}
				else{
					$('#passwordConditon').html('')
				}
			}
			else{
				$('#passwordConditon').html("密码不能为空!");
			}
			
		}
		function checkicode(){
			var icode = $('#icode').val();
			if(icode==''){
				$('#icodeConditon').html("验证码不能为空!");
			}
			else if(icode!=''){
				var res = verifyCode.validate(icode);
	            if(res){
	            	$('#icodeConditon').html("");
	            }else{
	            	$('#icodeConditon').html("验证码未填写正确");
	            }
			}
			else{
				$('#icodeConditon').html("");
			}
		}
		function register(){
			 var canSubmit=true;
			var phone = $('#phone').val();
			var password = $('#pass_word').val();
			var icode = $('#icode').val();
			if(phone.length==0){
				$('#phoneConditon').html("电话号码不能为空!");
				canSubmit = true;
			}
			if(password.length==0){
				$('#passwordConditon').html("密码不能为空!");
				canSubmit = false;
			}
			if(icode.lenght==0){
				$('#icodeConditon').html("验证码不能为空!");
				canSubmit = false;
			}
			if(icode!=''){
				var res = verifyCode.validate(icode);
	            if(res){
	            }else{
	            	$('#icodeConditon').html("验证码未填写正确");
	            	canSubmit = false;
	            }
	            if(!$("#agree").is(":checked")){
	                $('#agreeConditon').html("请勾选我同意并阅读《亿信金融平台注册服务协议》");
	                canSubmit = false;
	            }
			}
			if (canSubmit !== true) {
	        	return false;
	        }
			if(1==1){
				$('#div_register1').hide();
				$('#registers').show();
			}
		}
		function showLoginDialog(text,status){
            $("#nowcoin").html(text.allcoin);
            $("#overcoin").html(text.overcoin);
            $("#user").html(text.userName);
            $(".mylogin").show();
            $(".myloginmask").show();
        }
		
		$('.mo2-indRegtim').click(function(){
		    if ($(this).hasClass('mo2-regTin-able')) {
		        $('.mo2-indRegvoi-btn').addClass('mo2-indRegvoi-unable').removeClass('mo2-indRegvoi-able');
		        $('.mo2-indRegtim').addClass('mo2-regTin-unable').removeClass('mo2-regTin-able');
		        $('.mo2-indRegtim span').html('重新发送');
		        sendmsg("zmlcs");
		    }else {
		        $('#r_code').html('请稍后点击');
		        $('#w_code').show();
		    }
		});
		//发送短信验证码
		function sendmsg(zmlcs){
			var phone = $('#phone').val();
		        $.ajax({
		            type:"POST",
		            data:{"phone":phone},
		            url:"/Finances/front/getregsendphone",
		            success:function(msg){
		                var obj = eval('('+msg+')');
		                var obj = eval(obj);
		                if (obj.status == 1){
		                    mo2_regTim();
		                    $("#messageConditon").html("");
		                   $("#myyzcode").val(obj.ranks);
		                }else if(obj.status==2){
		                	$("#messageConditon").html(obj.msg);
		                }else {
		                	$("#messageConditon").html("发送失败");
		                }
		            }
		        });
		    }
		
		// 注册倒计时
		var regTim =60; //剩余时间
		function mo2_regTim(){
		    if (regTim>0) {
		        $('.mo2-indRegtim u').html(regTim+'秒后');
		        regTim--;
		        setTimeout("mo2_regTim()", 1000);
		    }
		    else if (regTim<=0) {
		        regTim =60;
		        $('.mo2-indRegvoi-btn').addClass('mo2-indRegvoi-able').removeClass('mo2-indRegvoi-unable');
		        $('.mo2-indRegtim').addClass('mo2-regTin-able').removeClass('mo2-regTin-unable');
		        $('.mo2-indRegtim span').html('重新发送');
		    }
		}
		function register2(){
	        var canSubmit=true;
	        if($("#code").val().length==0){
	        	$("#messageConditon").html("手机验证码不能为空!");
	            canSubmit = false;
	        }
	        var usercode = $("#code").val();
	    	var mycode = $("#myyzcode").val();
	    	//alert("正确验证码"+mycode);
	    	if(usercode=='' ){
	    		return;
	    	}
	    	if(usercode!=mycode){
	    		alert("验证码输入不相同");
	    		return;
	    	}
	        if (canSubmit !== true) {
	        	return false
	        }
	        else{
			     var uinvite = $('#uinvite').val();
	        	 var p={"phone":$("#phone").val(),"pass_word":$("#pass_word").val(),"yqcode":uinvite};
	             postData("/Finances/user/userRegister",p,function(msg){
	            	 if (msg.status == 1){
			                $("#newregister").show();//显示注册成功领取奖励金页面
			            }else if (msg.status == 0){
			            	$("#messageConditon").html(msg.message);
			            }
	             });
	        	}
		}
	
		
	
</script>
</html>