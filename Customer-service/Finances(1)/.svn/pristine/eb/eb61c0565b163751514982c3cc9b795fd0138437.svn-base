<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String path = request.getContextPath();
	%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<link rel="shortcut icon" href="/Finances/statics/other/lco/6.png"> 
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
		<script src="${pageContext.request.contextPath}/statics/front/js/jquery-1.8.3.min.js"></script>
		<script src="${pageContext.request.contextPath}/statics/back/static/js/jquery.min.js"></script>
		<link href="${pageContext.request.contextPath}/statics/back/static/css/bootstrap.min.css" rel="stylesheet">
    	<script src="${pageContext.request.contextPath}/statics/back/static/js/bootstrap.min.js"></script>
		 <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/front/css/money.css">
		<script type="text/javascript" src="${pageContext.request.contextPath}/statics/front/js/payPwd.js"></script> 
		<title>投资记录 | 亿信金融</title>
</head>
<body >
	<!-- 引用js文件 -->
	<!-- 右侧边栏start -->
	<jsp:include page="../include/userside.jsp"></jsp:include>		
	<!-- 右侧边栏end -->
	
	<!-- 头部start -->
		<jsp:include page="../include/head.jsp"></jsp:include>
	<!-- 头部end -->
	
	<!-- 内容 -->
	<!-- 树start -->
    <jsp:include page="../include/tree.jsp"></jsp:include>
    <!-- 树end -->
    
	<div style="width:100%; height:100%; position:fixed; z-index:100; top:0; display:none; left:0;" id="allP" >
        <div style="width:100%; height:100%; position:absolute; top:0; left:0; background:#000; opacity:0.5;"></div>
        <div style="width:404px; height:154px; background:#fff; position:absolute; top:50%; left:50%; margin-left:-252px; margin-top:-100px; border:2px solid #666;">
            <p style="color: #666666;font-size: 16px;absolute;line-height:170px;text-align: center; font-family: Microsoft YaHei;;">该项目已还清，为保护企业隐私，不再公示项目信息</p>
            <div style="width: 30px;height: 30px;position: absolute;top: 11px;right: 0px;color: #666;font-size: 20px;cursor: pointer;" id="close">X</div>
        </div>
   </div>
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
            window.location.reload();
        });
    </script>
	<div class="m2-userCentermanage-con">      
		<div class="m2-user-recharge" style="padding:4px 0 4px 0;"><h3><i></i>充值</h3></div>
        <div class="m2-recharge-mainbody">
			<div class="m2-userChahea">
				<div class="m2-userChahea-lef">
					<div class="m2-useChahea-head">
						<a href="/register-banklist#a004" target="_blank" class="m2-useCha-benDet"></a>
                        <h4><i></i>账户余额收益</h4>
                        <div style="display:inline-block;text-align:center;width:49%;margin:36px 0;">
                            <p style="font-size:16px;line-height:12px;">0元</p>
                            <p style="font-size:14px;line-height:30px;">昨日余额收益</p>
                        </div>
                        <div style="display:inline-block;text-align:center;width:49%;margin:36px 0;">
                            <p style="font-size:16px;line-height:12px;">0元</p>
                            <p style="font-size:14px;line-height:30px;">累计余额收益</p>
                        </div>
                    </div>
					<div class="m2-useChahea-bot">
						<div class="m2-useChabot-item">
							<div class="m2-useChabot-tit">
								<span>7日内期望年化回报率</span>
                                <b class="m2-detail-titIcon" style="position:relative;top:6px;right:0;">
                                    <u>
                                        <em class="m2-detail-titHide-arr"></em>
                                        <em class="m2-detail-titHide-arrBg"></em>
                                        为了使您的理财收益最大化，您账户中的剩余金额系统将自动为您购买国寿货币基金。您持有的基金总额可直接用于投资爱钱帮任意理财产品，以此使您的理财收益最大化。18岁以下用户无法享受货币基金收益，将按银行活期存款利率计算，在提现第二日发放。
                                    </u>
                                </b>
							</div>
                            <div class="m2-useChabot-num">
                                <span>5.34%</span>
                            </div>
						</div>
					</div>
                </div>
                <div class="m2-userChahea-rig">
                    <div class="m2-useCharig-line"></div>
                    <div class="m2-useChaCardbox">
						<div class="m2-useCardbox-head">
                            <div class="m2-useCardbox-logo"><i></i></div>
                            <div class="m2-useCardbox-tit"><span>电子交易账户</span><a href="/register-banklist#a003"></a></div>
                        </div>
                        <div class="m2-useCardbox-mid">
                        	${requestScope.uback.ubbackcardnum}
                        </div>
                        <div class="m2-useCardbox-bot">
                            <p>开户人:<span>${sessionScope.userinfo.idCard.icname}</span></p>
                            <p>账户余额：<b>${sessionScope.user.ubalance}</b>元</p> 
                        </div>
                    </div>
                </div>
            </div>
			<h4 class="m2-userCha2-tabHead">选择充值方式</h4>
            <div class="m2-usercha2-tab">
            </div>
            <div class="m2-usercha2-contain">
                <div class="m2-recharge-mainbody">
                	<c:if test="${requestScope.uback.ubid == null}">
                		<div class="m2-user-bankSelbox"  id='carddiv1'>
                        <div class="m2-userBankitem m2-userBank-unsel m2-userBankitem-add" style="width:255px;height:64px;" id="addBack">
                            <i class="mo2-userChabank-add"></i>
                            <span class="m2-userBankitem-bind"> 添加银行卡</span>
						</div>
                        <div class="m2-userBank-chose" style="padding-top:10px;">
                           <a href="#"  class="m2-recharge-entChr" onclick="addBackCards()"><span>添加银行卡&raquo;</span></a>
                            <a href="#"  class="m2-userBank-choWarn">存在换卡失败,请联系客服：4006-777-518</b></a>
                        </div>
                    </div>
                	</c:if>
                	<c:if test="${requestScope.uback.ubid != null}">
                		 <div class="m2-user-bankSelbox"  id='carddiv2'>
                        <div class="m2-userBankitem m2-userBank-sel" style="width:255px;height:64px;">
                             <i class="mo2-userChabank-common " id="bankimg"></i>
                            <span class="m2-userBankitem-det">
                                <span id="inst_name" style="font-size:15px;">${requestScope.uback.ubplaceback}</span><br>
                                <span id="cardshow">${requestScope.backnum}</span>
                            </span>
                            <b class="mo2-user-bank-corner"></b>
                        </div>
                        <div class="m2-userBank-chose" style="padding-top:10px;">
                            <a href="#"  class="m2-recharge-entChr"  id="changeBank"><span>选择其他银行卡&raquo;</span></a>
                            <a href="#"  class="m2-recharge-entChr"  id="deleteBank"><span>解绑银行卡&raquo;<span></a>
                            <a href="#"  class="m2-userBank-choWarn">存在换卡失败,请联系客服：4006-777-518</b></a>
                        </div>
                    </div>       
                	</c:if>
                    <div class="m2-recharge-ent">
                    <input type="hidden" value="${sessionScope.userinfo.uidealpwd}" name="uipwd" id="uipwd">
                     <input type="hidden" value="${requestScope.uback.ubplaceback}" id="bankstyle">
                     <input type="hidden" value="${sessioonScope.user.uid}" name="uid" id="uid" />
                     <input type="hidden" value="${sessionScope.userinfo.uiid}" name="uiid" id="uiid" />
                     <input type="hidden" value="${sessionScope.userinfo.uiopenstatus}" name="uiopenstatus" id="uiopenstatus" />
                     <input type="hidden" value="${requestScope.uback.ubid}" name="ubid" id="ubid"> 
                     <input type="hidden" value="${requestScope.uback.ubplaceback}" name="ubplaceback" id="ubplaceback">     
                     <input type="hidden" value="${requestScope.uback.ubmoney}" name="ubmoney" id="ubmoney" />    
                     <input type="hidden" value="${requestScope.uback.ubbackcardnum}" name="ubbackcardnum" id="ubbackcardnum">
                      <input type="hidden" value="${sessionScope.userinfo.idCard.icname}" id="name">
                      <table cellpadding="0" cellspacing="0" border="0" style="width:600px">
                            <tr>
                  				<td align="right">充值金额:</td>
                                <td><input type="text" class="m2-input-ent" placeholder="请输入充值金额" id="remoney" name="remoney" onblur="remoneyBlur()"/></td>
                            </tr>
                             <tr>
                                <td align="right">卡行限额:</td>
                                <td colspan="2">
                                <span id="limitspan">单笔0元，单日0元</span>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">到账金额:</td>
                                <td><span id="actualMoney">0元</span></td>
                            </tr>
                            <tr>
                                <td></td>
                             <td>
                             	<a href="#"  class="m2-recharge-entChr"  id="btnTest" >充值</a></td>
							<td>
								</td>
                            </tr>
                        </table>
                    </div>
                    <div class="m2-onlineChargelist">
						<h3>支持银行列表：</h3>
						<ul>
							<li class="m2-onlineCha-li"><img src="https://www.iqianbang.com/statics/home2/images/bank/onlineBank1.jpg" alt=""></li>
							<li class="m2-onlineCha-li"><img src="https://www.iqianbang.com/statics/home2/images/bank/onlineBank2.jpg" alt=""></li>
							<li class="m2-onlineCha-li"><img src="https://www.iqianbang.com/statics/home2/images/bank/onlineBank3.jpg" alt=""></li>
							<li class="m2-onlineCha-li"><img src="https://www.iqianbang.com/statics/home2/images/bank/onlineBank5.jpg" alt=""></li>
							<li class="m2-onlineCha-li"><img src="https://www.iqianbang.com/statics/home2/images/bank/onlineBank6.jpg" alt=""></li>
							<li class="m2-onlineCha-li"><img src="https://www.iqianbang.com/statics/home2/images/bank/onlineBank7.jpg" alt=""></li>
							<li class="m2-onlineCha-li"><img src="https://www.iqianbang.com/statics/home2/images/bank/onlineBank11.jpg" alt=""></li>
	                     </ul>
					</div>
                    <div class="m2-recharge-tips">
                        <h3><i></i>温馨提示：</h3>
						<ul>
							    <li><i class="m2-recharge-tips01"></i><b>请勿使用360兼容模式进行充值操作。</b></li>
	                            <li><i class="m2-recharge-tips02"></i><b>投资人充值不收取手续费。</b></li>
	                            <li><i class="m2-recharge-tips03"></i><b>徽商银行电子交易账户采用原卡进出设置，为了您的资金安全，只能提现至您绑定的银行卡。</b></li>
	                            <li><i class="m2-recharge-tips04"></i><b>更换已绑定的银行卡需在投金额和账户余额都为0，如需换卡或充值过程中遇到问题，请联系客服：4006-777-518。</b></li>
	                            <li><i class="m2-recharge-tips05"></i><b>若您充值后未投资，系统将自动为您认购国寿安保货币基金，您持有的基金总额可直接用于投资爱钱帮任意理财产品，以此使您的理财收益最大化。</b></li>
						</ul>
                    </div>
                </div>
            </div>
		</div>
	</div>
	<!-- 交易密码弹出框 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width:320px">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
						&times;
					</button>
					<center>
					<h4 class="modal-title" id="myModalLabel">
						&nbsp;&nbsp;&nbsp;<font style="color:#000000;">请输入交易密码</font>
					</h4>
					</center>
				</div>
				<center>
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">
						<font style="color:#cccccc;">充值金额</font>
					</h4>
					<h2 class="modal-title" id="myModalLabel">
						<font style="color:#000000;">￥<span id="inputmoney"></span></font>
					</h2>
				</div>
				<div class="modal-body">
				    <div class="pwd-control" id="payPwd">
				        <div class="box">
				            <div class="flex-1 item"><input maxlength="1" type="tel"></div>
				            <div class="flex-1 item"><input maxlength="1" type="tel"></div>
				            <div class="flex-1 item"><input maxlength="1" type="tel"></div>
				            <div class="flex-1 item"><input maxlength="1" type="tel"></div>
				            <div class="flex-1 item"><input maxlength="1" type="tel"></div>
				            <div class="flex-1 item"><input maxlength="1" type="tel"></div>
				        </div>
				        <input type="hidden" name="uidealpwd" id="uidealpwd">
	    			</div>
				</div>
				</center>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary" onclick="SureDealPwd()">
						提交
					</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
</div>

	<!-- 切换银行卡弹出框 -->
		<div class="modal fade" id="bankModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" style="width:500px">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
					 </div>
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
			                            <a href="/usercenter-accountcontrol-userverify?phone=1">修改</a>
			                            <b class="m2-chaConf-warn" style='color:#999;'>认证手机号须与银行卡预留手机号一致 否则无法绑卡</b>
			                        </td>
			                    </tr>
			                    <tr>
			                        <td class="m2-chaConf-tit">
			                            <i class="m2-chaConf-card"></i>
			                            <span>借记卡</span>
			                        </td>
			                        <td class="m2-chaConf-con">
			                            <input type="text" style="width:265px;ime-mode:Disabled;" placeholder="借记卡卡号（必填）" id="backnum" maxlength="19" onblur="bannumBlur()">
			                            <b id="bankstyles" class="m2-chaConf-warn" style='color:#999;'>该银行卡开户姓名必须为${sessionScope.userinfo.idCard.icname}，否则会提现失败！</b>
			                        </td>
			                        </tr>
			                </tbody>
			            </table>
			            <div class="m2-cha2Confsubmit">
			            	<span class="m2-cha2Confsub-sure " onclick="changeCard()">确&nbsp;&nbsp;&nbsp;认</span>
			        	</div>
	        </div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<!-- 添加银行卡弹出框 -->
		<div class="modal fade" id="addBank" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" style="width:500px">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
					 </div>
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
			                        	<input type="hidden" id="placeback"/>
			                            <input type="text" class="m2-regist-username" style="width:265px;ime-mode:Disabled;" placeholder="借记卡卡号（必填）" id="bankcardid" maxlength="19">
			                            <span class="m2-regist-errMsgcard"></span>
			                            <b id="bankstyles" class="m2-chaConf-warn" style='color:#999;'>该银行卡开户姓名必须为${sessionScope.userinfo.idCard.icname}，否则会提现失败！</b>
			                            <input type="hidden" id="staticNumber"/>
			                        </td>
			                    </tr>
			                </tbody>
			            </table>
			            <div class="m2-cha2Confsubmit">
			            	<span class="m2-cha2Confsub-sure " onclick="addCard()">确&nbsp;&nbsp;&nbsp;认</span>
			        	</div>
	        </div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<!-- 解绑银行卡弹出框 -->
		<div class="modal fade" id="jiebangModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" style="width:600px">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
					 </div>
					<div class="m2-cha2Conf-bind">
			            <div class="m2-cha2Conf-tit">
			                <span>解绑银行卡</span>
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
			                            <b class="m2-chaConf-warn" style='color:#999;'>认证手机号须与银行卡预留手机号一致 否则无法绑卡</b>
			                        </td>
			                    </tr>
			                    <tr>
			                        <td class="m2-chaConf-tit">
			                            <i class="m2-chaConf-card"></i>
			                            <span>解绑原因</span>
			                        </td>
			                        <td class="m2-chaConf-con">
			                       		<div class="radio">
											   <label>
											      <input type="radio" name="optionsRadios" id="optionsRadios1" 
											         value="option1" checked> 银行卡遗失
											   </label>
											    <label>
											      <input type="radio" name="optionsRadios" id="optionsRadios2" 
											         value="option1" checked> 银行卡遗失
											   </label>
											</div>
											<div class="radio">
											   <label>
											      <input type="radio" name="optionsRadios" id="optionsRadios3" 
											         value="option2">
											         银行卡废弃
											   </label>
											    <label>
											      <input type="radio" name="optionsRadios" id="optionsRadios4" 
											         value="option1" checked> 其他
											   </label>
											</div>
									 </td>
			                        </tr>
			                    <tr>
			                        <td class="m2-chaConf-tit">
			                            <i class="m2-chaConf-card"></i>
			                            <span>借记卡</span>
			                        </td>
			                        <td class="m2-chaConf-con">
			                             <input type="text" style="width:265px;" placeholder="" id="backnum" maxlength="19" value="${requestScope.backnum}" disabled="disabled"/>
			                        </td>
			                     </tr>
			                </tbody>
			            </table>
			            <div class="m2-cha2Confsubmit">
			            	<span class="m2-cha2Confsub-sure " onclick="jieBangCard()">确&nbsp;&nbsp;&nbsp;认</span>
			        	</div>
	        </div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<script type="text/javascript">
	var bankstyle = $('#bankstyle').val();
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
	$('document').ready(function() {
		  $('#btnTest').click(function() {
			 var uiopenstatus =$('#uiopenstatus').val();
			 var uipwd = $('#uipwd').val();
			  var remoney = $('#remoney').val();
			  if(uiopenstatus!=2){
				  showMsg("请先开户亿信托户平台");
			  }else{ 
				  if (!remoney) {
		              showMsg('请输入充值金额！');
		          } 
				  else if(uipwd == null || uipwd ==''){
					  SureDealPwd();
				  }
				  else{
		        	  $("#inputmoney").html(remoney);
		        	  $('#myModal').modal('show');
		          }
			}
		  });
		  $('#changeBank').click(function() {
			  $('#bankModal').modal('show');
		  });
		  $('#deleteBank').click(function() {
			  $('#jiebangModal').modal('show');
		  });
		  $('#addBack').click(function(){
			  $('#addBank').modal('show');
		  });
		  
		});
	function addBackCards(){
		 $('#addBank').modal('show');
	}
	$(function(){
		$("#payPwd").payPwd({
			max:6,
			type:"password",
			callback:function(arr) {
				$("#uidealpwd").val(arr);
			}
		})
	});
	function SureDealPwd(){
		var uidealpwd = $('#uidealpwd').val();
		var uiid = $('#uiid').val();
		var remoney = $('#remoney').val();
		var uid = $('#uid').val();
		var ubplaceback = $('#ubplaceback').val();
		var ubid = $('#ubid').val();
		var ubmoney = $('#ubmoney').val();
		var uipwd = $('#uipwd').val();
		var ubbackcardnum =$('#ubbackcardnum').val();
		if(uipwd==null || uipwd == ''){
			 $.ajax({
   	            url: '/Finances/recharge/addRecharge',
   	            data: {
   	            	'uid': uid,
   	     	    	'remoney':remoney,
   	            	'ubplaceback':ubplaceback,
   	            	'ubid':ubid,
   	            	'ubbackcardnum':ubbackcardnum,
   	            	'ubmoney':ubmoney
   	            },
   	            success: function (data) {
   	            	 if(data>0){
   	            		 showMsg('充值完成!', true);
   	            	 }
   	            	 else{
   	            		 showMsg('充值失败!');
   	            	 }
   	            }
   	        });
		}else{
			 $.ajax({
		            url: '/Finances/recharge/seleBydalePwd',
		            data: {'uidealpwd':uidealpwd,'uiid':uiid},
		            success: function (data) {
		            	 if(data>0){
		            		 $('#myModal').modal('hide');
		            		 if(parseInt(remoney)>parseInt(ubmoney)){
		            			 showMsg('金融不足,换取另外的支付方式!');
		            		 }else{
		            			 $.ajax({
		 	         	            url: '/Finances/recharge/addRecharge',
		 	         	            data: {
		 	         	            	'uid': uid,
		 	         	     	    	'remoney':remoney,
		 	         	            	'ubplaceback':ubplaceback,
		 	         	            	'ubid':ubid,
		 	         	            	'ubbackcardnum':ubbackcardnum,
		 	         	            	'ubmoney':ubmoney
		 	         	            },
		 	         	            success: function (data) {
		 	         	            	 if(data>0){
		 	         	            		 showMsg('充值完成!', true);
		 	         	            	 }
		 	         	            	 else{
		 	         	            		 showMsg('充值失败!');
		 	         	            	 }
		 	         	            }
		 	         	        });
		            		 }
		            	 }
		            	 else{
		            		 showMsg('交易密码不正确!');
		            		 $('#myModal').modal('hide');
		            	 }
		            }
		        });
		}
		
	}
	function remoneyBlur(){
		var remoney = $('#remoney').val();
		$('#actualMoney').html(remoney+"元");
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
	        	 $('#bankstyles').html("借记卡不能与原借记卡相同!");
	     }
	     else if(!pattern.test(backnum)){
	    	 $('#bankstyles').html("借记卡格式输入有误,请输入正确的借记卡格式!!");
	    }
	     else{
	    	 $('#bankstyles').html("该银行卡开户姓名必须"+name+"，否则会提现失败!")
	     }
	           
	}
	function changeCard(){
		var backnum = $('#backnum').val();
		var pattern = /^([1-9]{1})(\d{14}|\d{18})$/;
		var ubbackcardnum = $('#ubbackcardnum').val();
		var bankicname =$("#bankicname").html();
		var bankphone =$("#bankuphone").html();
		var uiid = $('#uiid').val();
		if (backnum == '') {
			$('#bankstyles').html("借记卡不能为空");
           
        } else if (backnum == ubbackcardnum) {
        	 $('#bankstyles').html("借记卡不能与原借记卡相同!");
            
	    }else if(!pattern.test(backnum)){
	    	 $('#bankstyles').html("借记卡格式输入有误,请输入正确的借记卡格式!!");
	    }
	    else{
	    	$.ajax({
	    		url:'${pageContext.request.contextPath}/idcard/seleBybanknum',
	    		data:{'backnum':backnum,'bankicname':bankicname,'bankphone':bankphone},
	    		  success: function (data) {
	    			  if(data>0){
	    				  $('#bankModal').modal('hide');
	    				  showMsg('切换卡完成', true);	
	    				  location.href="${pageContext.request.contextPath}/torecharge?uiid="+uiid;
	    			  }
	    			  else{
	    				  $('#bankModal').modal('hide');
	    				  showMsg('切换卡失败');  
	    			  }
	    		  }	
	    	});
	    }
	    }
	//解绑银行卡
	function  jieBangCard(){
		var ubbackcardnum = $('#ubbackcardnum').val();
		var uiid = $('#uiid').val();
		$.ajax({
    		url:'${pageContext.request.contextPath}/idcard/deleBybanknum',
    		data:{'ubbackcardnum':ubbackcardnum,'uiid':uiid},
    		  success: function (data) {
    			  if(data>0){
    				  $('#jiebangModal').modal('hide');
    				  showMsg('解绑完成', true);	
    				  location.href="${pageContext.request.contextPath}/torecharge?uiid="+uiid;
    			  }
    			  else{
    				  $('#jiebangModal').modal('hide');
    				  showMsg('解绑失败!');  
    			  }
    		  }	
    	});
	}
	 $('#bankcardid').blur(function () {
         checkBankCard();
     });
	 function checkBankCard() {
		 var name= $('#name').val();
         var bankcard = $('#bankcardid').val();
         var pattern = /^([1-9]{1})(\d{14}|\d{18})$/;
         if (bankcard == '') {
        	 $(".m2-regist-errMsgcard").next(".m2-chaConf-warn").html("");
             $('#bankcardid').next('.m2-regist-errMsgcard').css('color','red').html('银行卡不能为空!');
             return false;
         }else if(!pattern.test(bankcard)){
        	$(".m2-regist-errMsgcard").next(".m2-chaConf-warn").html('');
         	$('#bankcardid').next('.m2-regist-errMsgcard').css('color','red').html("银行卡号输入有误,请输入正确的银行卡号!");
             return false;
         }else{
         	$.ajax({
                 url: "/Finances/idcard/getCardType",
                 data:{
                 	ubbackcardnum:bankcard
                 },
                 type: "POST",
                 dataType: 'json',
                 success: function (data) {
                     if (data.status == 1) {
                    	$(".m2-regist-errMsgcard").next(".m2-chaConf-warn").html("");
                     	$('#bankcardid').next('.m2-regist-errMsgcard').css('color','#33cc00').html(data.type);
                     	$("#placeback").val(data.type);
                     	$("#staticNumber").val("1");
     		            return true;
                     }else if(data.status == 0){
                    	 $(".m2-regist-errMsgcard").next(".m2-chaConf-warn").html('');
                    	$('#bankcardid').next('.m2-regist-errMsgcard').css('color','red').html("已存在此银行卡,请重新绑卡开户!");
                    	$("#staticNumber").val("2");
                     	return false;
                     } else {
                    	 $(".m2-regist-errMsgcard").next(".m2-chaConf-warn").html('');
                    	$('#bankcardid').next('.m2-regist-errMsgcard').css('color','red').html("银行卡号输入有误,请输入正确的银行卡号!");
                    	$("#staticNumber").val("2");
                     	return false;
                     }
                 }
             });
         }
     }
	 //添加银行卡
	 function addCard(){
		 var uiid = $("#uiid").val();
         var ubbackcardnum = $("#bankcardid").val();
         var ubplaceback = $("#placeback").val();
         var oppenstaus = 2; //设置开户 
         
         if(ubbackcardnum=="" || ubbackcardnum==null){
        	 $(".m2-regist-errMsgcard").next(".m2-chaConf-warn").html("");
        	 $('#bankcardid').next('.m2-regist-errMsgcard').css('color','red').html('银行卡号不可为空!');
         }else{
        	 if(ubplaceback=="" || ubplaceback==null){
        		 $(".m2-regist-errMsgcard").next(".m2-chaConf-warn").html('');
            	 $('#bankcardid').next('.m2-regist-errMsgcard').css('color','red').html('银行卡号输入有误,请输入正确的银行卡号!');
             }else{
            	 if($("#staticNumber").val()==1){
                	 $.ajax({
                         url: "/Finances/idcard/addbackcard",
                         data:{
                         	uiid:uiid,
                         	ubbackcardnum:ubbackcardnum,
                         	ubplaceback:ubplaceback,
                         	oppenstaus :oppenstaus
                         },
                         type: "POST",
                         dataType: 'json',
                         success: function (data) {
                             if (data == 1) {
                            	showMsg('添加银行卡完成', true);	
                             	window.location.href="/Finances/torecharge?uiid="+uiid;
                             } else {
                            	 $('#addBank').modal('hide');
                            	 showMsg('添加银行卡失败!');	
                             }
                         }
                     }); 
                 }else{
                	 $('#addBank').modal('hide');
                	 showMsg('填写信息有误!');	
                 }
             }
         }
	 }
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
</body>
</html>