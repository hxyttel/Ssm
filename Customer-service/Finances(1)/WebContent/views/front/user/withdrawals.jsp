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
        <script src="https://www.iqianbang.com/statics/newcommon/js/html5shiv.js"></script>
        <![endif]-->
        <link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/6.png">
		<meta charset="UTF-8">
			    <!--[if lt IE 9]>
		    	<script src="<%=path%>/statics/front/statics/newcommon/js/html5shiv.js"></script>
		    <![endif]-->
	    <meta name="keywords" content="网贷平台,网络借贷，网络赚钱项目,理财产品">
	    <meta name="description" content="爱钱帮网贷平台为您提供网络赚钱项目；为此相继推出了许多新的理财产品，在为您创造高收益的同时也优化了理财产品模式。网络借贷，就选爱钱帮。">
	    <meta charset="UTF-8">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/userCenter.css">
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/jquery.min.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/esl.js"></script>
	    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/jquery.datetimepicker.css" />
	    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/jquery.datetimepicker.js"></script>
		<title>投资记录 | 亿信金融</title>
		<style type="text/css">
	.mo2-userDarwcon{
		position: fixed;
		z-index: 121;
		position: fixed;
		left: 50%;
		top:50%;
		margin-left: -245px;
		margin-top: -100px;
		width: 490px;
		min-height: 65px;
		z-index: 121;
		background-color: #fff;
		border: 6px solid #616161;
		padding: 40px 0 22px 0;
	}
	.mo2-confBig{
		font-size: 26px;
		line-height: 40px;
		color: #5f5e5e;
		text-align: center;
	}
	.mo2-confClose{
		position: absolute;
		display: block;
		width: 20px;
		height: 20px;
		right: 0;
		top: 5px;
		cursor: pointer;
		background: url(https://www.iqianbang.com/statics/usercenter/images/m2-userCenter-icon.png) no-repeat -300px -20px;
	}
	.mo2-confLink{
		display: block;
		text-align: center;
		color: #39adf7;
		font-size: 15px;
		line-height: 26px;
	}
	.mo2-confLink:hover,.mo2-confLink:active{
		color: #299DE7;
	}
	.mo2-confBtn{
		width: 370px;
		height: 42px;
		line-height: 42px;
		margin: 20px auto 0 auto;
	}
	.mo2-confBtn span,.mo2-confBtn a{
		display: inline-block;
		width: 155px;
		height: 40px;
		border: 1px solid #F59451;
		font-size: 18px;
		text-align: center;
		border-radius: 4px;
		cursor: pointer;
	}
	.btn_lef{
		float: left;
		color: #F59451;
		background-color: #FFF;
	}
	.btn_lef:hover,.btn_lef:active{color: #E58441;}
	.btn_rig{
		float: right;
		color: #fff;
		background-color: #F59451;
	}
	.btn_rig:hover,.btn_rig:active{background-color: #E58441;}
</style>
	</head>
<body style="background:url('/Finances/statics/front/images/two.jpg');background-size:100% 100%;">
<!-- 右侧边栏start -->
	<jsp:include page="../include/userside.jsp"></jsp:include>		
	<!-- 右侧边栏end -->
	
	<!-- 头部start -->
		<jsp:include page="../include/head.jsp"></jsp:include>
	<!-- 头部end -->
	
	<!-- 内容 -->
		
	<!-- 树start -->
    <jsp:include page="../include/tree.jsp"></jsp:include>
<body>
    <!-- 绑定银行卡弹窗start -->
    <div class="m2-charge2Confirm" style="display:none;">
        <b class="m2-cha2Con-close"></b>
        <div class="m2-cha2Conf-bind">
            <div class="m2-cha2Conf-tit">
			                <span>绑定银行卡</span>
			            </div>
			            <table cellpadding="0" cellspacing="0">
			                <tbody>
			                    <tr>
			                        <td class="m2-chaConf-tit">
			                            <i class="m2-chaConf-user"></i>
			                            <span>真实姓名</span>
			                        </td>
			                        <td class="m2-chaConf-con">
			                            <span id="bankicname">${sessionScope.userinfo.idCard.icname}</span>
			                        </td>
			                    </tr>
			                    <tr>
			                        <td class="m2-chaConf-tit">
			                            <i class="m2-chaConf-tel"></i>
			                            <span>手机号</span>
			                        </td>
			                        <td class="m2-chaConf-con">
			                            <span id="bankuphone">${sessionScope.user.uphone}</span>
			                            <a href="/Finances/userverify?uiid=${sessionScope.userinfo.uiid }&phone=1">修改</a>
			                            <b class="m2-chaConf-warn" style='color:#999;'>认证手机号须与银行卡预留手机号一致 否则无法绑卡</b>
			                        </td>
			                    </tr>
			                    <tr>
			                        <td class="m2-chaConf-tit">
			                            <i class="m2-chaConf-card"></i>
			                            <span>借记卡</span>
			                        </td>
			                        <td class="m2-chaConf-con"> 
			                            <input type="text" style="width:265px;" placeholder="" id='cardinput' maxlength="19" onblur="bannumBlur()">
			                            <b id="bankstyle" class="m2-chaConf-warn" style='color:#ff3333D;'>该银行卡开户姓名必须为${sessionScope.userinfo.idCard.icname}，否则会提现失败！</b>
			                        </td>
			                        </tr>
			                </tbody>
			            </table>
			            <div class="m2-cha2Confsubmit">
			            	<span class="m2-cha2Confsub-sure " onclick="changeCard()">确&nbsp;&nbsp;&nbsp;认</span>
			        	</div>
   		 </div>
   	</div>
    <script type="text/javascript">
        // 点击切换银行卡弹出弹窗
        $(function () {
            $('.m2-userCentermanagedraw-addArea-hs,#addother').click(function () {
                $('#cardinput').val('');
                card_no = '';
                new_card = '';
                $('.m2-userCentercommon-bg,.m2-charge2Confirm').show();
                chaContop();
            });
        })
        // 绑定、选择银行卡
        $('.m2-cha2Conf-head span').click(function () {
            // 绑定银行卡显示
            if ($(this).hasClass('m2-cha2Confhead-other')) {
                $(this).addClass('m2-cha2Confhead-bind').removeClass('m2-cha2Confhead-other');
                $(this).html('选择已有银行卡');
                $('.m2-cha2Bank').hide();
                $('.m2-cha2Conf-bind').show();
                chaContop();
            } else if ($(this).hasClass('m2-cha2Confhead-bind')) {
                // 选择银行卡显示
                $(this).addClass('m2-cha2Confhead-other').removeClass('m2-cha2Confhead-bind');
                $(this).html('绑定其他银行卡');
                $('.m2-cha2Bank').show();
                $('.m2-cha2Conf-bind').hide();
                chaContop();
            }
        });
        // 关闭
        $('.m2-cha2Con-close,.m2-cha2Confsub-sure').click(function () {
            $('.m2-charge2Confirm,.m2-userCentercommon-bg').hide();
        });

        // 点击确认按钮
        function binkSubmit() {
            $('.m2-cha2Confsub-sure').click(function () {
                // $('.m2-userCentermanage-drawBox2 .m2-userCentermanage-drawBox-bank').children('i').removeClass(oldBank).addClass(newBank);
                $('.m2-userCentercommon-bg').hide();
                $('.m2-charge2Confirm').hide();
            });
        }
        //调整弹窗top值
        function chaContop() {
            $('.m2-charge2Confirm').css('top', $(document).scrollTop() + 150);
        }
    </script>
    <!-- 绑定银行卡弹窗end -->
    <!-- 提现弹窗start -->
<!-- 提现弹窗end -->
    <!--公用提示框start-->
    <div class="m2-userCentercommon-confirm" style='display: none;' id='msgdialog1'>
        <span class="m2-userCentercommon-confirmClose"></span>
        <p class="m2-userCommon-confirmWar"><i></i></p>
        <p class="m2-userCommon-confirmBtn"><a class="m2-user-confirmBtn" href="javascript:void(0)">确&nbsp;定</a></p>		
    </div>
    <div class="m2-userCentercommon-confirm" style='display: none;' id='msgdialog2'>
        <span class="m2-userCentercommon-confirmClose"></span>
        <p class="m2-userCommon-confirmSuc"><i></i></p>
        <p class="m2-userCommon-confirmBtn"><a class="m2-user-confirmBtn" href="javascript:void(0)">确&nbsp;定</a></p>		
    </div>
    <script type="text/javascript">
        $('.m2-userCentercommon-confirmClose,.m2-user-confirmBtn').click(function () {
            $('.m2-userCentercommon-confirm').hide();
            $('.m2-userCentercommon-bg').hide();
        });
    </script>
    <!--公用提示框end-->
    <div class="m2-userCentermanageDarw-con">
        <div class="m2-userCentermanageDarw-head">
            <h3><i></i>提现</h3>
        </div>
	        <div class="m2-userCentermanage-drawBox" style='margin-top:10px;'>
	            <!-- 徽商银行start -->
	            <div class="m2-userCentermanage-drawBox2" style="border:none;">
	                <div class="m2-userCentermanage-drawBox-cardTure" >
	                    <div class="m2-userCentermanage-drawBox-cardTit m2-txtRig">
	                        <span>提现银行卡：</span>
	                    </div>
	                     <input type="hidden" value="${requestScope.uback.ubplaceback}" id="bankimages">
	                     <input type="hidden" value="${sessioonScope.user.uid}" name="uid" id="uid" />
	                     <input type="hidden" value="${sessionScope.userinfo.uiid}" name="uiid" id="uiid" />
	                     <input type="hidden" value="${sessionScope.userinfo.uiopenstatus}" name="uiopenstatus" id="uiopenstatus" />
	                     <input type="hidden" value="${requestScope.uback.ubid}" name="ubid" id="ubid"> 
	                     <input type="hidden" value="${requestScope.uback.ubplaceback}" name="ubplaceback" id="ubplaceback">     
	                     <input type="hidden" value="${requestScope.uback.ubmoney}" name="ubmoney" id="ubmoney" />    
	                     <input type="hidden" value="${requestScope.uback.ubbackcardnum}" name="ubbackcardnum" id="ubbackcardnum">
	                      <input type="hidden" value="${sessionScope.userinfo.idCard.icname}" id="name">
	                    <input type="hidden" value="${sessioonScope.user.ucredit}" name="ucredit" id="ucredit">
	                    <ul class="m2-userCentermanage-drawBox-cardSel" style="position:relative;">
	                        <div class="m2-userBank-chose" style="position: absolute; left: 250px;top:5px;">
	                            <span id='addother'>选择其他银行卡&raquo;</span>
	                            <b class="m2-userBank-choWarn" style="display:inline-block;width:320px; height:44px; line-height: 22px;top:28px;">您只有在徽商银行电子交易账户余额与在投资金均为零时<br>才能切换银行卡</b>
	                        </div>  
	                          <div class="m2-userBankitem m2-userBank-sel" style="width:255px;height:64px;">
	                             <i class="mo2-userChabank-common " id="bankimg"></i>
	                            <span class="m2-userBankitem-det">
	                                <span id="inst_name" style="font-size:15px;">${requestScope.uback.ubplaceback}</span><br>
	                                <span id="cardshow">${requestScope.backnums}</span>
	                            </span>
	                            <b class="mo2-user-bank-corner"></b>
	                        </div>
	                    </ul>
	              </div>
                    <div class="m2-userCentermanage-explainBox" style="border:none;">
                        <ul>
                            <li style="margin:10px 0;">
                                <span class="m2-txtRig">账户余额：</span>
                                <span class="m2-userCenterdraw-serTot" style="color:#f5944f;" id="backubalance">${sessionScope.user.ubalance}元</span>
                            </li>
                        </ul>
                    </div>
                    <div class="m2-userCentermanagedraw-numInput">
                        <div class="m2-userCentermanage-drawBox-cardTit m2-txtRig">
                            <span>提现金额：</span>
                        </div>
                        <div class="m2-userCentermanage-drawNum">
                            <input type="text" class="m2-userCentermanagedraw-num" placeholder="请输入提现金额" id='withdrawals'
                            onkeyup="var p2 = parseFloat(value).toFixed(2);value = p2>=0?(/\.0?$/.test(value)?value:p2.replace(/0$/,'').replace(/\.0$/,'')):''" onblur="value = value.replace(/\.0*$/,'')"/>
                            <input type="button" class="m2-userCentermanagedraw-submit" value="提&nbsp;现" id='withdrawbuttons'>
                        </div>
                    </div>
                    <div class="m2-userCentermanagedraw-numInput m2-userHs-bankName" style="display:none;">
                        <div class="m2-userCentermanage-drawBox-cardTit m2-txtRig">
                            <span>开户支行：</span>
                        </div>
                        <div class="m2-userCentermanage-drawNum">
                            <div style="position:relative;">
                                <input type="text" class="m2-userCentermanagedraw-num" placeholder="开户支行名称" id="bankname">
                                <b class="m2-userHs-iptWarn"><!-- 错误提示信息 --></b>
                                <a href="http://www.lianhanghao.com/" target="_blank" class="m2-userHs-drawForget">忘记开户支行？</a>
                            </div>
                        </div>
                    </div>
                    <div class="m2-userHs-selBox">
                        <ul class="m2-userHs-selList">
                            <li class="m2-userHslist-sel m2-userHs-list1"><i></i><span>实时</span></li>
                            <li class="m2-userHslist-unsel m2-userHs-list2" id='dae'><i></i><span>大额</span></li>
                        </ul>
                        <p class="m2-userHs-exp"><i></i>
                        	<span>支持单笔5万及以下，单日20万及以下实时提现到账。单日20万以上请用大额提现。</span>
                        </p>
                        <p class="m2-userHs-exp"><i></i>
                        	<span>提现越多手续费越低,五万以下1%,20万以下0.8%,20万以上0.6%的手续费。</span>
                        </p>
                    </div>

                <!--已经有银行卡end-->

                <div class="m2-userCentermanage-explainBox">
                    <ul>
                        <li>
                            <span class="m2-txtRig">手续费：</span>
                            <span class="m2-userCenterdraw-serTot" id="wfee">0元</span>
                        </li>
                         <li>
                            <span class="m2-txtRig">实际到账：</span>
                            <span class="m2-userCenterdraw-serTot" id="wnowMoney">0元</span>
                        </li>
                       
                    </ul>
                </div>
                <div class="m2-recharge-tips">
                    <h3><i></i>温馨提示：</h3>
                    <ul>
                        <li><i class="m2-recharge-tips01"></i><b>请勿使用360浏览器兼容模式进行提现操作。</b></li>
                        <li><i class="m2-recharge-tips02"></i><b>徽商银行电子交易账户采用原卡进出设置，资金只能提现至您本人绑定的银行卡，提现无需支付任何手续费。</b></li>
                        <li><i class="m2-recharge-tips03"></i><b>实时提现：支持单笔5万及以下，单日20万及以下实时提现到账。</b></li>
                        <li><i class="m2-recharge-tips04"></i><b>大额提现：支持单日20万以上资金提现，工作日9:00-16:00。到账时间为30分钟左右，依据发卡行不同可能略有差异。</b><li>
                        <li><i class="m2-recharge-tips05"></i><b>提现页面暂不支持360浏览器兼容模式，请切换至急速模式，推荐使用火狐浏览器访问。</b></li>
                    </ul>
                </div>
            </div>
            <!-- 徽商银行end -->
        </div>
    </div>
<script type="text/javascript">
$(document).ready(function(){
	 $('#withdrawals').blur(function(){
		 var withdrawals=$('#withdrawals').val();
		 var wfee=0;
		 var count=0;
		 var ubalance = $('#backubalance').html();
		 if(ubalance<withdrawals){
			 showMsg("余额不足");
			 $('#withdrawals').val("");
			 return;
		 }
		 if(100>withdrawals){
			 showMsg("提现金额需要大于100");
			 $('#withdrawals').val("");
			 return;
		 }
		 if(withdrawals<50000){
			wfee = withdrawals * 0.01;
			count = withdrawals-wfee;
		 }else if(50000<withdrawals&&withdrawals<200000){
			wfee = withdrawals * 0.008;
			count = withdrawals-wfee;
		 }else if(withdrawals>200000){
			 wfee = withdrawals* 0.006;
			 count = withdrawals-wfee;
		 }
		 document.getElementById('wfee').innerText=Math.round(wfee*100)/100;
		 document.getElementById('wnowMoney').innerText=Math.round(count*100)/100;
		// ('#wfee').html(wfee);
		 //('#wnowMoney').html(count);
	 });
	 $('#withdrawbuttons').click(function(){
		 var withdrawals=$('#withdrawals').val();
		 var ucredit = $('#ucredit').val();
		 var wfee=document.getElementById("wfee").innerHTML;
		 var wnowMoney=document.getElementById("wnowMoney").innerHTML;
		 var cardinput=$('#cardinput').val();
		 if(withdrawals=""){
			 showMsg("请输入提现金额");
		 }
		 if(ucredit<0){
			 showMsg("抱歉用户,你信用额度太低，不能提现!"); 
		 }else{
			 $.ajax({
				 url:'${pageContext.request.contextPath }/front/withdrawals/insertWithdrawals',
				 data:{
					 "wmoney":$('#withdrawals').val(),
					 "wfee":document.getElementById("wfee").innerHTML,
					 "wnowMoney":document.getElementById("wnowMoney").innerHTML,
					 "wmoneytowhere":$('#cardinput').val()
			 },
				 type:'post',
				 dataType:'json',
				 success:function(data){
					 if(data==1){
						 showMsg("提现成功",true);
						 parent.window.location="${pageContext.request.contextPath }/tousercenter?uid="+${user.uid};
					 }else if(data==2){
						 showMsg("提现失败");
					 }
				 }
			 }); 
		 }
		
	 });
	 
});
    $(function () {
        //汇付点击关闭隐藏银行卡
        $('.m2-userCentermanage-drawBox1 .m2-userCentermanage-bank-close').bind("click", function (event) {
            $(this).parent().hide();
            $(this).siblings('.m2-userCentermanage-bank-sel').addClass('m2-userCentermanage-bank-unsel').removeClass('m2-userCentermanage-bank-sel');
            event.stopPropagation();
        });
        //汇付点击银行卡加对钩
        $('.m2-userCentermanage-drawBox1 .m2-userCentermanage-drawBox-bank').click(function () {

            if ($(this).children('em').hasClass('m2-userCentermanage-bank-unsel')) {
                $(this).siblings('.m2-userCentermanage-drawBox-bank').children('.m2-userCentermanage-bank-sel').removeClass('m2-userCentermanage-bank-sel').addClass('m2-userCentermanage-bank-unsel');
                $(this).children('em').removeClass('m2-userCentermanage-bank-unsel').addClass('m2-userCentermanage-bank-sel');
            }
            ;
        });
        $('.m2-userCentermanage-drawBoxtab span').click(function () {
            if ($(this).hasClass('m2-userCentermanage-drawBoxtab-unsel')) {
                $(this).addClass('m2-userCentermanage-drawBoxtab-sel').removeClass('m2-userCentermanage-drawBoxtab-unsel');
                $(this).siblings('span').addClass('m2-userCentermanage-drawBoxtab-unsel').removeClass('m2-userCentermanage-drawBoxtab-sel');
            }
        });

        $('.m2-userCentermanage-drawBoxtab1').click(function () {
            $('.m2-userCentermanage-drawBox1').show();
            $('.m2-userCentermanage-drawBox2').hide();
        });

        $('.m2-userCentermanage-drawBoxtab2').click(function () {
            $('.m2-userCentermanage-drawBox1').hide();
            $('.m2-userCentermanage-drawBox2').show();
        });

        // 大额、时事提现切换
        $('.m2-userHs-selList li').click(function () {
            if ($(this).hasClass('m2-userHslist-unsel')) {
                $(this).siblings('.m2-userHslist-sel').addClass('m2-userHslist-unsel').removeClass('m2-userHslist-sel');
                $(this).addClass('m2-userHslist-sel').removeClass('m2-userHslist-unsel');
                
            }
        });
        $('.m2-userHs-list1').click(function () {
        	var cardInfo="支持单笔5万及以下，单日20万及以下实时提现到账。单日20万以上请用大额提现。";
            $('.m2-userHs-exp span').html(cardInfo);
            $('.m2-userHs-bankName').hide();
    	      cleanAmount();
        });
        $('.m2-userHs-list2').click(function () {
            $('.m2-userHs-exp span').html('工作日9:00-16:00。到账时间为30分钟，依据发卡行不同可能略有差异。');
            $('.m2-userHs-bankName').show();
        });
    });
</script>
<script>
    'use strict';
    //国庆期间不允许大额提现
    var guoqing_time = '1515069112';

    //提现金额
    var amount = 0;
    //账户余额
    var account_balance = Number('0');
    //每日大额限额
    var day_limit = Number('50000');
    //当日累计提现金额
    var have_withdraw = Number('');
    //当前银行卡
    var card = '';
    //新银行卡
    var new_card = '';
    //开户行
    var bank_name = '';
    //开户支行号
    var bank_no;
    //工作时间
    var isworking = '-1';
	//不让提现原因
    var prompt_message='';
    var limit_amount='';
    var ishide_money='';
    var big_master_switch='1';//大额提现总开关
    var big_tipMsg='';//提现提示语
    var master_switch='1';//实时提现总开关
    var tipMsg='';//提现提示语
	 
  
    //金额变化
    $('#withdrawmoney').keyup(function () {
        checkAmount();
    });

    //提交提现(活动提醒，新增马上投资。狠心提现按钮)
    $('#withdrawbutton').click( function () {
                  cupwithdraw();
    });
    function cleanAmount() {
        $('#withdrawmoney').val('');
    }
    
    function checkAmount() {

        var val = $('#withdrawmoney').val();
        if (!isNaN(val)) {
            if (val.toString() === '') {
                amount = '';
                return;
            }
            if (val.toString().lastIndexOf('.') === val.toString().length - 1) {
                return;
            }
            if (val.toString().lastIndexOf('.0') === val.toString().length - 2 && val.toString().lastIndexOf('.') !== -1) {
                return;
            }
            amount = Number(val);
            if (val.toString().indexOf('0') === 0) {
            	$('#withdrawmoney').val(amount);
                return;
            }
            
            //余额
            if (amount > account_balance) {
                amount = account_balance;
		        $('#withdrawmoney').val(amount);
            }
            //大额限额
            if (amount > day_limit - have_withdraw) {
                $('.m2-userHs-list2').click();
            } 
        }else{
	        $('#withdrawmoney').val(amount);
        }
    }

    $('#cardinput').keyup(function () {
        var val = $('#cardinput').val();
        if (!isNaN(val)) {
            if (val.toString() === '') {
                new_card = '';
                return;
            }
            if (val.toString().lastIndexOf('.') === val.toString().length - 1) {

            } else {
                new_card = val;
            }
        }
        $('#cardinput').val(new_card);
    });
    function showMsg(msg, flag) {
        if (!flag) {
            $('.m2-userCommon-confirmWar').html('<i></i>' + msg);
            $('#msgdialog1').show();
            $('.m2-userCentercommon-bg').show();
        } else {
            $('.m2-userCommon-confirmSuc').html('<i></i>' + msg);
            $('#msgdialog2').show();
            $('.m2-userCentercommon-bg').show();
        }
    }

</script>
<script type="text/javascript">
		var bankstyle = $('#bankimages').val();
		var bankcss = bankstyle.split('·');
		if(bankcss[0]=="邮储银行"){
			$('#bankimg').html("<img src='/Finances/statics/front/images/bankcard/youzheng.jpg' width='40px' height='40px'/>");
		}
		else if(bankcss[0]=="建设银行"){
			$('#bankimg').html("<img src='/Finances/statics/front/images/bankcard/jianshe.jpg' width='40px' height='40px'/>");
		}
		else if(bankcss[0]=="工商银行"){
			$('#bankimg').html("<img src='/Finances/statics/front/images/bankcard/gongshang.jpg' width='40px' height='40px' />");
		}
		else if(bankcss[0]=="交通银行"){
			$('#bankimg').html("<img src='/Finances/statics/front/images/bankcard/jiatong2.jpg' width='40px' height='40px' />");
		}
		else if(bankcss[0]=="农业银行"){
			$('#bankimg').html("<img src='/Finances/statics/front/images/bankcard/longye.jpg' width='40px' height='40px' />");
		}
		else if(bankcss[0]=="中信银行"){
			$('#bankimg').html("<img src='/Finances/statics/front/images/bankcard/believe.jpg' width='40px' height='40px' />");
		}
		else if(bankcss[0]=="中国银行"){
			$('#bankimg').html("<img src='/Finances/statics/front/images/bankcard/cuntry.jpg' width='40px' height='40px' />");
		}
		else if(bankcss[0]=="光大银行"){
			$('#bankimg').html("<img src='/Finances/statics/front/images/bankcard/guangda.jpg' width='40px' height='40px' />");
		}
		else if(bankcss[0]=="华夏银行"){
			$('#bankimg').html("<img src='/Finances/statics/front/images/bankcard/huaxia.jpg' width='40px' height='40px' />");
		}
		else if(bankcss[0]=="民生银行"){
			$('#bankimg').html("<img src='/Finances/statics/front/images/bankcard/minsheng.jpg' width='40px' height='40px' />");
		}
		
		function bannumBlur(){
			var backnum = $('#backnum').val();
			var name= $('#name').val();
			var ubbackcardnum = $('#ubbackcardnum').val();
			var pattern = /^([1-9]{1})(\d{14}|\d{18})$/;
			 if (backnum == '') {
				 $('#bankstyle').html("借记卡不能为空");
				 btnGrey();
		     } else if (backnum == ubbackcardnum) {
		        	 $('#bankstyle').html("借记卡不能与原借记卡相同!");
		     }
		     else if(!pattern.test(backnum)){
		    	 $('#bankstyle').html("借记卡格式输入有误,请输入正确的借记卡格式!!");
		    }
		     else{
		    	 $('#bankstyle').html("该银行卡开户姓名必须"+name+"，否则会提现失败!")
		     }
		           
		}
		
		function changeCard(){
			var backnum = $('#cardinput').val();
			var pattern = /^([1-9]{1})(\d{14}|\d{18})$/;
			var ubbackcardnum = $('#ubbackcardnum').val();
			var bankicname =$("#bankicname").html();
			var bankphone =$("#bankuphone").html();
			var uiid = $('#uiid').val();
			if (backnum == '') {
				$('#bankstyle').html("借记卡不能为空");
	        } else if (backnum == ubbackcardnum) {
	        	 $('#bankstyle').html("借记卡不能与原借记卡相同!");
		    }else if(!pattern.test(backnum)){
		    	 $('#bankstyle').html("借记卡格式输入有误,请输入正确的借记卡格式!!");
		    }
		    else{
		    	$.ajax({
		    		url:'${pageContext.request.contextPath}/idcard/seleBybanknum',
		    		data:{'backnum':backnum,'bankicname':bankicname,'bankphone':bankphone},
		    		  success: function (data) {
		    			  if(data>0){
		    				  showMsg('切换卡完成', true);	
		    				  location.href="${pageContext.request.contextPath}/towithdraw?uiid="+uiid;
		    			  }
		    			  else{
		    				  showMsg('切换卡失败');  
		    			  }
		    		  }	
		    	});
		    }
		    }
</script>
</body>
</html>

