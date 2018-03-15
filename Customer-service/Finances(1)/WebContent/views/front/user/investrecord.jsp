<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <!--[if lt IE 9]>
    	<script src="<%=path%>/statics/front/statics/newcommon/js/html5shiv.js"></script>
    <![endif]-->
	    <meta name="keywords" content="网贷平台,网络借贷，网络赚钱项目,理财产品">
	    <meta name="description" content="爱钱帮网贷平台为您提供网络赚钱项目；为此相继推出了许多新的理财产品，在为您创造高收益的同时也优化了理财产品模式。网络借贷，就选爱钱帮。">
	    <meta charset="UTF-8">
		<link rel="shortcut icon" href="/Finances/statics/other/lco/smalllog.png"> 
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
	    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/userCenter.css">
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/jquery.min.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
	    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/esl.js"></script>
	    <link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/jquery.datetimepicker.css" />
	    <script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/jquery.datetimepicker.js"></script>
		<title>投资记录 | 亿信金融</title>
	</head>
	
<body>
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
    <div class="m2-userCentermanage-con">
        <div class="m2-manage-search">
            <div class="m2-manage-search-head">
                <h3><i></i>投资记录</h3>
            </div>
            <div class="m2-manage-search-selector">
                <ul class="m2-manageSearchsel-time m2-manageSearchsel-time1" style="margin-bottom:15px">
                    <li>时间范围：</li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link1"><span class="m2-manSealink-sel" >全部</span></li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link1"><span class="m2-manSealink-unsel" >最近7天</span></li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link1"><span class="m2-manSealink-unsel" >一个月</span></li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link1"><span class="m2-manSealink-unsel" >三个月</span></li>
                    <li>从<input id="m2-manSeadate-start" type="text"></li>
                    <li>到<input id="m2-manSeadate-end" type="text"></li>
                </ul>
                <ul class="m2-manageSearchsel-time m2-manageSearchsel-time2" style="margin-bottom:15px">
                    <li>回款状态：</li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link2"><span class="m2-manSealink-sel" >全部</span></li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link2"><span class="m2-manSealink-unsel" >还款中</span></li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link2"><span class="m2-manSealink-unsel" >已结清</span></li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link2"><span class="m2-manSealink-unsel" >已转让</span></li>
                </ul>
                <ul class="m2-manageSearchsel-time m2-manageSearchsel-time3" style="margin-bottom:15px">
                    <li>投资方式：</li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link3"><span class="m2-manSealink-sel" >全部</span></li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link3"><span class="m2-manSealink-unsel" >自动投标</span></li>
                    <li class="m2-manageSearchsel-link m2-manageSearchsel-link3"><span class="m2-manSealink-unsel" >手动投标</span></li>
                </ul>
                <table class="m2-userInvest-table"  cellpadding="0" cellspacing="0" >
                    <tr class="m2-userInevst-head" >
                        <th style="width:140px;">项目名称</th>
                        <th style="width:120px;">投资金额</th>
                        <th style="width:60px;">收益率</th>
                        <th style="width:120px;">计息日</th>
                        <th style="width:120px;">还款日</th>
                      
                    </tr>
                    <tr>
                    <c:forEach items="${list}" var="bid" varStatus="vs">
                    	<th>${bid.ftit}</th>
                    	<th>${bid.bmoney}</th>
                    	<th>${bid.broe}</th>
                    	<th>${bid.btime}</th>
                    	<th>${bid.bendtime}</th>
                    </c:forEach>
                    </tr>
                </table>
                <input type="hidden" value=1 class="nowpages">
                <input type="hidden" value= class="recordpages">
	            </div>
	        </div>
	    </div>
	</div>
	
	<script>

    var oP=document.getElementById('allP');
    var oClose=document.getElementById('close');
    //oP.style.display='none';
    oClose.onclick=function(){
        oP.style.display='none';
    };
    var investdata=new Array(0,0,0);
    var capitalprogress=new Array();

    /**
     * 已结束的项目不允许查看合同
     */
    function linkContractContract(that){
        var bid=that.getAttribute('bid');
        var status = that.getAttribute('status');
        if(status==7||status==11){
            oP.style.display='block';
        } else {
            window.open("member-contract-investor.shtml?id="+bid,"_blank");
        }
    }
    /**
     * 已结束的项目不允许查看合同
     */
    function linkContracttransContract(that){
        var bid=that.getAttribute('bid');
        var status = that.getAttribute('status');
        if(status==7||status==11){
            oP.style.display='block';
        } else {
            window.open("member-contracttrans-investor.shtml?id="+bid,"_blank");
        }
    }
    /**
     * 已结束的项目不允许下载合同
     */
    function linkDownload(that){
        var bid=that.getAttribute('bid');
        var status = that.getAttribute('status');
        if(status==7||status==11){
            oP.style.display='block';
        } else {
            window.open("Member-Contract-createAndSendPdfbyid?id="+bid,"_blank");
        }
    }
</script>
<script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/m2-userCenter-invest.js"></script>
</body>
</html>
	
