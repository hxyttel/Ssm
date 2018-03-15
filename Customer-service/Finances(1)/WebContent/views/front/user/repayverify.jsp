<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <link rel="shortcut icon" href="/Finances/statics/other/lco/smalllog.png"> 
	    <title>还款设置 | 亿信金融</title>
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/userCenter.css">
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/jquery.min.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/esl.js"></script>
	    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/jquery.datetimepicker.css" />
	    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/jquery.datetimepicker.js"></script>
		<script src="/Finances/statics/front/js/jquery-labelauty.js"></script>
		
		<link rel="stylesheet" href="/Finances/statics/front/css/jquery-labelauty.css">
		<style>
			input.labelauty + label { font: 12px "Microsoft Yahei";}
		</style>
		
	</head>
	<body style="background:url('/Finances/statics/front/images/two.jpg');background-size:100% 100%;">
		<!-- 右侧边栏start -->
		<jsp:include page="../include/userside.jsp"></jsp:include>		
		<!-- 右侧边栏end -->
		
		<!-- 头部start -->
		<jsp:include page="../include/head.jsp"></jsp:include>
		<!-- 头部end -->
		
		<!-- 树start -->
	    <jsp:include page="../include/tree.jsp"></jsp:include>
	    <!-- 树end -->
	
	    <div class="m2-userCentermanageDarw-con">
	        <div class="m2-user-recharge">
	        	<input type="hidden" id="uid" value="${sessionScope.user.uid }"/>
	            <h3><i class="m2-user-alertset"></i>还款设置</h3>
	        </div>
		   	<div class="m2-userCentermanage-drawBox" style='margin-top:10px;'>
		       <div class="m2-userCentermanage-drawBox2" style="border:none;">
	               <div class="m2-userCentermanage-explainBox" style="border:none;margin-left:100px;">
	                   <ul>
	                       <li style="margin:10px 0;">
	                           <input type="hidden" id="allmoneys" value="${getinfo.allmongy }"/>
	                           <span class="m2-txtRig">还款总金额：</span>
	                           <span class="m2-userCenterdraw-serTot" style="color:#f5944f;"><span id="allmoney">${getinfo.allmongy }</span>元</span>
	                           
	                           <input type="hidden" id="bidMoneys" value="${getinfo.bidMoney }"/>
	                           <span class="m2-txtRig">借款金额：</span>
	                           <span class="m2-userCenterdraw-serTot" style="color:#f5944f;"><span id="bidMoney">${getinfo.bidMoney }</span>元</span>
	                       </li>
	                       
	                       <li style="margin:10px 0;">
	                       		<input type="hidden" id="allInterests" value="${getinfo.allInterest }"/>
	                            <span class="m2-txtRig">总利息：</span>
	                            <span class="m2-userCenterdraw-serTot" style="color:#f5944f;"><span id="allInterest">${getinfo.allInterest }</span>元</span>
	                            
	                            <input type="hidden" id="allrates" value="${getinfo.allrate }"/>
	                            <span class="m2-txtRig">总利率：</span>
	                            <span class="m2-userCenterdraw-serTot" style="color:#f5944f;"><span id="allrate">${getinfo.allrate }</span>%</span>
	                        </li>
	                   </ul>
	               </div>
	               <div class="m2-userHs-selBox">
	                    <ul class="m2-userHs-selList" style="list-style-type: none;">
	                    	<c:set var="rastyle" value="${getinfo.rastyle }" />
	                    	<li style="margin:10px 0;">
	                    		<span class="m2-userSettingshide-nor">还款方式：</span>
	                    	</li>
	                        <li class="m2-userHslist-sel m2-userHs-list1" style="margin:10px 0px;display: inline-block;">
	                        	<input type="radio" id="automatic" name="paystyle" value="1" <c:if test="${rastyle!=null }"> disabled </c:if> <c:if test="${rastyle==1 }"> checked="checked" </c:if> data-labelauty="自动还款">
	                        </li>
	                        <li class="m2-userHslist-unsel m2-userHs-list2" style="margin:10px 0;display: inline-block;">
	                        	<input type="radio" id="manual" name="paystyle" value="2" <c:if test="${rastyle!=null }"> disabled </c:if> <c:if test="${rastyle==2 }"> checked="checked" </c:if> data-labelauty="手动还款">
	                        </li>
	                    </ul>
	                </div>
	                <br><br>
	                <div class="m2-userCentermanagedraw-numInput m2-userHs-bankName" style="display:none;">
	                    <div class="m2-userHs-selBox">
							<ul>
								<li style="margin:10px 0;">
		                    		<span class="m2-userSettingshide-nor">选择期限：</span>
		                    	</li>
							</ul>
							<ul style="list-style-type: none;">
								<c:set var="raterm" value="${getinfo.raterm }" />
								<li style="margin:10px 0;display: inline-block;">
									<input type="radio" name="paytime" value="1" <c:if test="${rastyle!=null }"> disabled </c:if> <c:if test="${raterm==1 }"> checked="checked" </c:if> data-labelauty="一次还完">
								</li>
								<li style="margin:10px 0;display: inline-block;">
									<input type="radio" name="paytime" value="3" <c:if test="${rastyle!=null }"> disabled </c:if> <c:if test="${raterm==3 }"> checked="checked" </c:if> data-labelauty="3期(免息)">
								</li>
								<li style="margin:10px 0;display: inline-block;">
									<input type="radio" name="paytime" value="6" <c:if test="${rastyle!=null }"> disabled </c:if> <c:if test="${raterm==6 }"> checked="checked" </c:if> data-labelauty="6期(1%)">
								</li>
								<li style="margin:10px 0;display: inline-block;">
									<input type="radio" name="paytime" value="12" <c:if test="${rastyle!=null }"> disabled </c:if> <c:if test="${raterm==12 }"> checked="checked" </c:if> data-labelauty="12期(1.2%)">
								</li>
								<li style="margin:10px 0;display: inline-block;">
									<input type="radio" name="paytime" value="24" <c:if test="${rastyle!=null }"> disabled </c:if> <c:if test="${raterm==24 }"> checked="checked" </c:if> data-labelauty="24期(1.5%)">
								</li>
							</ul>
	                    </div>
	                </div><br><br><br>
                    <div class="m2-userCentermanage-explainBox abc" style="margin-left:100px;display:none;">
                    	<ul>
                    		<li style="margin:10px 0;">
	                           <span class="m2-txtRig">每期偿还：</span>
	                           <span class="m2-userCenterdraw-serTot" style="color:#f5944f;"><span id="termmoney">${getinfo.termmoney }</span>&nbsp;元</span>
	                           
	                           <span class="m2-txtRig">已还期限：</span>
	                           <span class="m2-userCenterdraw-serTot" style="color:#f5944f;"><span id="termcount">${getinfo.termcount }</span>&nbsp;期</span>
	                       </li>
                    	</ul>
                    </div>
                    <input type="hidden" id="fid" value="${fabiaos.fid }"/>
                    <input type="hidden" id="rmoverdue" value="${repays.rmoverdue }"/>
                    <c:set var="status" value="${fabiaos.fstatus }" />
                    <c:set var="hkstype" value="${fabiaos.fhkstype }" />
	                <div class="m2-cha2Confsubmit" style="margin-left:100px;">
	                	<c:if test="${status!=3 }">
		            		<span class="m2-cha2Confsub-sure" onclick="setRepayStyle()">确&nbsp;&nbsp;&nbsp;认</span>
		            	</c:if>
		            	<c:if test="${hkstype != null && status==2 }">
		            		<span class="m2-cha2Confsub-sure-repay" id="repaymoneys">还&nbsp;&nbsp;&nbsp;款</span>
		            	</c:if>
		            	<c:if test="${status==3 }">
		            		<span style="background-color:#ccc;cursor:default;">已&nbsp;&nbsp;&nbsp;还&nbsp;&nbsp;&nbsp;清</span>
		            	</c:if>
		            	<c:if test="${status==8 }">
		            		<span  class="m2-cha2Confsub-sure-outmoney" id="outmoney">还&nbsp;&nbsp;&nbsp;逾&nbsp;&nbsp;&nbsp;期</span>
		            	</c:if>
		        	</div>
		        	<div class="m2-recharge-tips">
	                    <h3><i></i>温馨提示：</h3>
	                    <ul>
	                        <li><i class="m2-recharge-tips01"></i><b>您只可设置一次,提交后不可修改,请谨慎提交资料。</b></li>
		                    <li><i class="m2-recharge-tips02"></i><b>自动还款的期限是1期,除用户收益外没有额外的利息,平台会自动扣除你的账户余额。</b></li>
	                        <li><i class="m2-recharge-tips03"></i><b>手动还款的期限由自己选择,分为几种不同的情况。</b></li>
	                        <li><i class="m2-recharge-tips04"></i><b>请在规定的时间内还清所有借款金额。</b><li>
	                    </ul>
	                </div>
	            </div>
	        </div>
	    </div>
	 	<!-- 设置成功提示框 -->
		<div class="m2-userCentercommon-confirm" style="top:30%;padding-top:10px;display:none"  id='dialog-info-repay'>
		    <span class="m2-userCentercommon-confirmClose"></span>
		    <div style="text-align: center;padding: 20px 0 20px 0;">
		        <h3 id='dialog-info-repaytext'></h3>
		    </div>
		    <p class="m2-userCommon-confirmBtn">
		        <a class="m2-user-confirmBtn" target="_blank">确&nbsp;定</a>
		    </p>
		</div>
		 <!-- 还款弹出框start -->
	    <div class="m2-charge2Confirm" style="display:none;">
	        <b class="m2-cha2Con-close"></b>
	        <div class="m2-cha2Conf-bind">
	        	<input type="hidden" id="user_phone" value="${sessionScope.user.uphone }"/>
	        	<input type="hidden" id="user_balance" value="${requestScope.usermoney.ubalance }"/>
	        	<input type="hidden" id="user_paymoney_uiid" value="${sessionScope.userinfo.uiid }"/>
	            <div class="m2-cha2Conf-tit">
					<span>还款详情</span>
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
		                        <input type="text" style="width:180px;" id='numberphone' placeholder="请输入注册手机号" maxlength="11" onblur="phoneNumberBlur()">
		                        <span id="repay_phone_warn" style="color:red;"></span>
		                        <b class="m2-chaConf-warn" style='color:#999;'>以便接收还款短信提醒</b>
		                    </td>
				        </tr>
	                    <tr>
	                        <td class="m2-chaConf-tit">
	                            <i class="m2-chaConf-card"></i>
	                            <span>还款金额</span>
	                        </td>
	                        <td class="m2-chaConf-con">
	                            <span style="color:#f5944f;"><span id="gotermmoney">${getinfo.termmoney }</span>&nbsp;&nbsp;元</span>
	                            <b class="m2-chaConf-warn" style='color:#999;'>您这次还款的金额</b>
	                        </td>
	                    </tr>
				     </tbody>
				  </table>
		          <div class="m2-cha2Confsubmit">
		          	  <span class="m2-cha2Confsub-sure-gorepay" onclick="repayMoney()">确&nbsp;&nbsp;&nbsp;认</span>
		       	  </div>
	   		 </div>
	   	</div>
	    <script type="text/javascript">
	        // 点击还款弹出弹窗
	        $(function () {
	            $('#repaymoneys').click(function () {
	            	var fid = $("#fid").val();
	            	$.ajax({
                        url: "/Finances/repay/getRepayTime",
                        data:{
                        	fid:fid
                        },
                        type: "POST",
                        dataType: 'json',
                        success: function (data) {
                           if(data==1){
                        	   $('#dialog-info-repay').show();
       	    		           $('#dialog-info-repaytext').text("Soorry,未到还款期,请在在规定的时间期还款!");
       	    		            
       	    		           $('.m2-user-confirmBtn,.m2-userCentercommon-confirmClose').click(function () {
       	    		            	window.location.reload(true);
       	    		           })
                           }else{
                        		$('.m2-charge2Confirm').show();
           	               		chaContop();
                           }
                        }
                    });
	                
	            });
	        })
	        
	        // 关闭
	        $('.m2-cha2Con-close').click(function () {
	            $('.m2-charge2Confirm').hide();
	        });
	
	        // 点击确认按钮
	        function repayMoney() {
	        	var repmoney = $("#gotermmoney").text();
	        	var user_balance = $("#user_balance").val();
	        	var uiid = $("#user_paymoney_uiid").val();
	        	var phone = $("#numberphone").val();
	        	var fid = $("#fid").val();
	        	
	        	if(phone=='' || phone==null){
	        		$("#repay_phone_warn").text("联系电话不能为空");
	        		return;
	        	}
	        	if($("#repay_phone_warn").text()==''){
	        		$('.m2-charge2Confirm').hide();
	        		if(parseInt(repmoney)>parseInt(user_balance)){
		        		$('#dialog-info-repay').show();
			            $('#dialog-info-repaytext').text("对不起,账户余额不足,是否去充值!");
			            
			            $('.m2-user-confirmBtn').click(function () {
			            	window.location="http://127.0.0.1:8080/Finances/torecharge?uiid="+uiid;
			            })
			            $('.m2-userCentercommon-confirmClose').click(function () {
			            	$('.m2-userCentercommon-confirm').hide();
			            });
		        	}else{
		        		$.ajax({
                            url: "/Finances/repay/updateUserRepay",
                            data:{
                            	fid:fid,
                				phone:phone,
                				repmoney:repmoney,
                				bidMoney:$("#bidMoneys").val()
                            },
                            type: "POST",
                            dataType: 'json',
                            success: function (data) {
                               if(data==1){
                            	   $('#dialog-info-repay').show();
	       	    		           $('#dialog-info-repaytext').text("恭喜您,还款成功,请在务必在规定时间内结清!");
	       	    		            
	       	    		           $('.m2-user-confirmBtn,.m2-userCentercommon-confirmClose').click(function () {
	       	    		            	window.location.reload(true);
	       	    		           })
                               }else{
                            	   $('#dialog-info-repay').show();
	       	    		           $('#dialog-info-repaytext').text("还款失败,请在在规定的时间期还款!");
	       	    		            
	       	    		           $('.m2-user-confirmBtn,.m2-userCentercommon-confirmClose').click(function () {
	       	    		            	window.location.reload(true);
	       	    		           })
                               }
                            }
                        });
		        	}
	        	}
	        }
	        //调整弹窗top值
	        function chaContop() {
	            $('.m2-charge2Confirm').css('top', $(document).scrollTop() + 80);
	        }
	        
	        //判断手机号是否为注册时的账号
	        function phoneNumberBlur(){
	        	var reg = /^1\d{10}$/;
	        	if(!reg.test($('#numberphone').val())){
	        		$("#repay_phone_warn").text("请输入正确的手机号");
	            }else{
	            	if($("#user_phone").val()!=$('#numberphone').val()){
	            		$("#repay_phone_warn").text("请输入预留手机号");
	            	}else{
	            		$("#repay_phone_warn").text("");
	            	}
	            }
	        }
	    </script>
	    <!-- 还款弹出框end -->
		<script src="<%=path %>/statics/front/js/jquery-labelauty.js"></script>
		<script type="text/javascript">
		    $(function () {
		        // 大额、时事提现切换
		        $('.m2-userHs-selList li').click(function () {
		            if ($(this).hasClass('m2-userHslist-unsel')) {
		                $(this).siblings('.m2-userHslist-sel').addClass('m2-userHslist-unsel').removeClass('m2-userHslist-sel');
		                $(this).addClass('m2-userHslist-sel').removeClass('m2-userHslist-unsel');
		            }
		        });
		        $('.m2-userHs-list1').click(function () {
		        	if ($("input[id='automatic']").attr("checked")=="checked") {
		        		$('.m2-userHs-bankName').hide();
			            $('.abc').show();
			            keyInput();
	                }
		        });
		        $('.m2-userHs-list2').click(function () {
		        	if ($("input[id='manual']").attr("checked")=="checked") {
		        		$('.m2-userHs-bankName').show();
		        		$('.abc').hide();
		        		keyInput();
	                }
		        });
	       		if ($("input[id='manual']").attr("checked")=="checked") {
	   	            $('.m2-userHs-bankName').show();
	   	         	$('.abc').show();
	   	         	btnGrey();
	            }
	       		if($("input[id='automatic']").attr("checked")=="checked"){
	   	            $('.m2-userHs-bankName').show();
	   	         	$('.abc').show();
	   	         	btnGrey();
	       		}
		    });
		</script>
		<!-- 设置单选框样式 -->
		<script>
			$(function(){
				$(':input').labelauty();
			});
		</script>
		<!-- 获取单选框值 -->
		<script type="text/javascript">
			btnGrey();
			$(function () {
				//当选择的还款期限是  自动还款后发送ajax请求,计算出每期还款金额
	            $("input[name='paystyle']").click(function () {
	                if ($(this).attr("checked")) {
	                	if($("input[name='paystyle']:checked").val()==1){
	                		$.ajax({
	                            url: "/Finances/repay/getEachMoney",
	                            data:{
	                            	allmongy:$("#allmoneys").val(),
	                				bidMoney:$("#bidMoneys").val(),
	                				allrate:$("#allrates").val(),
	                				allInterest:$("#allInterests").val(),
	                				rastyle:$("input[name='paystyle']:checked").val()
	                            },
	                            type: "POST",
	                            dataType: 'json',
	                            success: function (data) {
	                                if(data.count==1){
	                                	$("#termmoney").text(data.getinfos.termmoney.toFixed(2));
	                                	$("#termcount").text(data.getinfos.termcount);
	                                }
	                            }
	                        });
	                	}
	                }
	            });
	            
	          //手动还款：选择相应的期限后发送ajax请求,计算出每期还款金额
	            $("input[name='paytime']").click(function () {
	                if ($(this).attr("checked")) {
	               		$.ajax({
	                           url: "/Finances/repay/getEachMoney",
	                           data:{
	                        	   	allmongy:$("#allmoneys").val(),
		               				bidMoney:$("#bidMoneys").val(),
		               				allrate:$("#allrates").val(),
		               				allInterest:$("#allInterests").val(),
	               					rastyle:$("input[name='paystyle']:checked").val(),
	               					raterm:$("input[name='paytime']:checked").val()
	                           },
	                           type: "POST",
	                           dataType: 'json',
	                           success: function (data) {
	                               if(data.count==2){
	                            		$("#allmoney").text(data.getinfos.allmoney);
	                               		$("#allInterest").text(data.getinfos.allInterest.toFixed(2));
	                               		$("#allrate").text(data.getinfos.allrate.toFixed(2));
	                               		$("#termmoney").text(data.getinfos.termmoney.toFixed(2));
	                               		$("#termcount").text(data.getinfos.termcount);
	                               		$('.abc').show();
	                               		keyInput();
	                               }
	                          }
	                    });
	                }
	            });
	            
	        });
			//用户还款设置  及添加用户还款初始数据
			function setRepayStyle(){
				var uid = $("#uid").val();  //用户id
				var allmongy = $("#allmoneys").val();  //还款总金额
				var rastyle = $("input[name='paystyle']:checked").val();  //还款方式
				var raterm = 1 ;  //还款期限
				var termmoney = $("#termmoney").text();  //每期偿还
				var termcount = $("#termcount").text();  //已还期限
				
				if(rastyle==2){
					raterm = $("input[name='paytime']:checked").val();
				}
				$.ajax({
	                url: "/Finances/repay/updateAndadd",
	                data:{
	                	uid:uid,
	                	allmongy:allmongy,
	                	rastyle:rastyle,
	                	raterm:raterm,
	                	termmoney:termmoney,
	                	termcount:termcount
	                },
	                type: "POST",
	                dataType: 'json',
	                success: function (data) {
	                	if(data>0){
	                		$('#dialog-info-repay').show();
	    		            $('#dialog-info-repaytext').text("恭喜您,设置成功,请在务必在规定时间内还款!");
	    		            
	    		            $('.m2-user-confirmBtn,.m2-userCentercommon-confirmClose').click(function () {
	    		            	window.location.reload(true);
	    		            })
	                	}
	               }
	         	});
			}
			//键盘输入按钮变色
	        function keyInput(){
	        	$('.m2-cha2Confsub-sure').css('background-color','#f5944f');
	            $('.m2-cha2Confsub-sure').css('cursor','pointer');
	            $(".m2-cha2Confsub-sure").attr("onclick", "setRepayStyle();");
	        }
			//按钮置灰
	        function btnGrey(){
	            $('.m2-cha2Confsub-sure').css('background-color','#ccc');
	            $('.m2-cha2Confsub-sure').css('cursor','default');
	            $(".m2-cha2Confsub-sure").attr("onclick", "null");
	        }
		</script>
		
		<!-- 处理逾期金额 -->
		<script type="text/javascript">
			$(function (){
				$('#outmoney').click(function () {
					var fid = $("#fid").val();
					var phone = $("#user_phone").val();
		           	var rmoverdue = $("#rmoverdue").val();
		           	var user_balance = $("#user_balance").val();
		           	
		           	if(parseInt(rmoverdue)>parseInt(user_balance)){
		        		$('#dialog-info-repay').show();
			            $('#dialog-info-repaytext').text("对不起,账户余额不足,是否去充值!");
			            
			            $('.m2-user-confirmBtn').click(function () {
			            	window.location="http://127.0.0.1:8080/Finances/torecharge?uiid="+uiid;
			            })
			            $('.m2-userCentercommon-confirmClose').click(function () {
			            	$('.m2-userCentercommon-confirm').hide();
			            });
		        	}else{
		        		$.ajax({
			                   url: "/Finances/repay/HandleRepayMoney",
			                   data:{
			                   	fid:fid,
			                   	rmoverdue:rmoverdue,
			                   	phone:phone
			                   },
			                   type: "POST",
			                   dataType: 'json',
			                   success: function (data) {
			                      if(data==1){
			                   	   $('#dialog-info-repay').show();
			  	    		           $('#dialog-info-repaytext').text("恭喜你,已结清所有投资项目!");
			  	    		            
			  	    		           $('.m2-user-confirmBtn,.m2-userCentercommon-confirmClose').click(function () {
			  	    		            	window.location.reload(true);
			  	    		           })
			                      }else{
			                    	  $('#dialog-info-repaytext').text("Sorry,逾期还款失败!");
			  	    		            
			  	    		           $('.m2-user-confirmBtn,.m2-userCentercommon-confirmClose').click(function () {
			  	    		            	window.location.reload(true);
			  	    		           })
			                      }
			                   }
			             });
		        	}
		        });
			});
		</script>
		
	</body>
</html>

