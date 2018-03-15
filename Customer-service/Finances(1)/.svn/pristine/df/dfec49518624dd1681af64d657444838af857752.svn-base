<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		    <meta name="keywords" content="网贷平台,网络借贷，网络赚钱项目,理财产品">
    		<meta name="description" content="爱钱帮网贷平台为您提供网络赚钱项目；为此相继推出了许多新的理财产品，在为您创造高收益的同时也优化了理财产品模式。网络借贷，就选爱钱帮。">
    		<title>回款计划 | 亿信金融</title>
    		<!--[if lt IE 9]>
		    	<script src="<%=path%>/statics/front/statics/newcommon/js/html5shiv.js"></script>
		    <![endif]-->
    		<link rel="shortcut icon" href="/Finances/statics/other/lco/6.png"> 
   			<link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
    		<link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
    		<link rel="shortcut icon" href="/Finances/statics/other/lco/smalllog.png">
    		<link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/userCenter.css">
    		<script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/jquery.min.js"></script>
    		<script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
    		<script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/esl.js"></script>
    		<link rel="stylesheet" href="/Finances/statics/front/statics/usercenter/css/jquery.datetimepicker.css" />
    		<script type="text/javascript" src="/Finances/statics/front/statics/usercenter/js/jquery.datetimepicker.js"></script>
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
    
    <style>
        .n-hid {
            display:block;
            position:relative;
            cursor: pointer;
            height: 20px;
            width: 20px;
            margin:10px auto;
            background:url("/Finances/statics/front/statics/usercenter/images/mark.png") no-repeat 0px 0px;
        }
        .n-hid .n-hov {
            background-color: #f5f5f5;
            border: 2px solid #d4a439;
            border-radius: 8px;
            color: #717171;
            display: none;
            font-size: 12px;
            line-height: 24px;
            padding: 12px 5px;
            position: absolute;
            right: -200px;
            top: -45px;
            width: 170px;
            z-index: 100;
        }
        .n-hid .n-hov i {
            background: rgba(0, 0, 0, 0) url("/Finances/statics/front/statics/usercenter/images/n-arr.png") no-repeat scroll 0 0;
            display: block;
            height: 15px;
            left: -10px;
            position: absolute;
            top: 47px;
            width: 11px;
        }
        .n-hid:hover .n-hov {
            display: block;
        }

        .m2-userInevst-linkHide{
            position: absolute;
            top: 37px;
            right: -10px;
            width: 426px;
            padding-left: 14px;
            border: 1px solid #bebebe;
            background-color: #fff;
            z-index: 10;
        }
        .m2-userInevst-linkHide h3{
            width:442px;
            height: 34px;
            line-height: 34px;
            color: #4e4e4e;
            font-size:15px;
            text-align: left;
            border-bottom:none;
        }
        .m2-userInevst-linkHide ul{
            zoom: 1;
        }
        .m2-userInevst-linkHide ul:after{display:block;clear:both;visibility:hidden;height:0;content:'-';}
        .m2-userInevst-linkHide ul li{
            float: left;
            width: 190px;
            font-size: 14px;
            height: 28px;
            line-height: 28px;
            text-align: left;
        }
        .m2-userInevst-linkHide ul li span{
            display: inline-block;
            height: 28px;
            line-height: 28px;
            color: #0996cc;
        }
        .m2-userInevst-linkHide-table{
            width: 424px;
        }
        .m2-user-newsmanage table tr td table td{
            text-align: left;
            border:none;
            padding: 5px 0;
            line-height: 24px;
        }
        .m2-userInevst-linkHide-tableHead{
            width:
        }

        .m2-userInevst-linkHide-arr{
            position: absolute;
            top: -15px;
            right: 30px;
            width: 0;
            height: 0;
            border-width: 8px;
            border-style: solid;
            border-color: transparent transparent #fff transparent;
        }
        .m2-userInevst-linkHide-arrBg{
            position: absolute;
            top: -16px;
            right: 30px;
            width: 0;
            height: 0;
            border-width: 8px;
            border-style: solid;
            border-color: transparent transparent #bebebe transparent;
        }
        .m2-userInevst-linkHidetable-unpay{color:#e64648 ;}
        .m2-userInevst-linkHidetable-payed{color:#717171 ;}


        /*----项目名称隐藏部分----*/

        .m2-userInvest-hide{
            display: none;
            z-index: 5;
            position: absolute;
            left: 0px;
            top: 39px;
            width: 328px;
            border:1px solid #e1e1e1;
            font-size: 14px;
            text-align: left;
            background: #fff;
        }
        .m2-userInvest-hide ul{
            padding: 18px 0 0 0;
            padding: 5px 10;
            min-height: 90px;
        }
        .m2-userInvest-hide ul li{
            min-height: 25px;
            width: 275px;
            line-height: 25px;
            padding-left: 15px;
        }
        .m2-userInvest-hideRig{
            position: absolute;
            right: 0;
            top: 0;
            vertical-align: center;
            height: 100%;

        }
        .m2-userInvest-hideRig a{
            display: block;
            width: 34px;
            height: 105px;
            font-size: 14px;
            line-height: 17px;
            text-align: center;
            background-color: #0996cc;
            color: #fff;
            padding-top: 3px;
            vertical-align: center;
            height: 100%;
        }
        .m2-userInvest-hideRig a:link{background-color: #0996cc;}
        .m2-userInvest-hideRig a:visited{background-color: #0996cc;}
        .m2-userInvest-hideRig a:hover{background-color: #0486BC;}
        .m2-userInvest-hideRig a:active{background-color: #0486BC;}

        .m2-userInvest-hide em{
            position: absolute;
            display: block;
            width: 0;
            height: 0;
            border-width: 8px;
            border-style: solid;
        }
        .m2-userInvesthide-arr{
            top:-17px;
            left: 58px;
            border-color: transparent transparent #e1e1e1 transparent;
        }
        .m2-userInvesthide-arrBg{
            top:-16px;
            left: 58px;
            border-color: transparent transparent #fff transparent;
        }
        .b-indHide-tit:hover .m2-userInvest-hide{
            display: block;
        }
    </style>
    <div class="m2-userCentermanage-con">
        <div class="m2-user-recharge">
            <h3><i class="m2-user-record"></i>回款计划</h3>
        </div>
      
        <div class="m2-recharge-mainbody">
            <div class="m2-user-newsmanage">
                 <table class="m2-manageResult" cellpadding="0" cellspacing="0">
		                    <tr class="m2-manageResult-head">
		                       	<th>年月</th>
		                        <th style="width:155px;">计划还款总额(元)</th>
		                        <th style="width:135px;">实际还款总额(元)</th>
		                        <th style="width:120px;">待还款(元)</th>
		                    </tr>			                
			                <c:forEach items="${listRepayment}" var="repayment">
			                	
		                    	<tr>
		                    		<td style="width:155px;">总计:${repayment.rmplan}</td>
			                        <td style="width:155px;">${repayment.rmall}</td>
			                        <td style="width:120px;">${repayment.rmface}</td>
			                        <td style="width:100px;">${repayment.rmwait}</td>
		                    	</tr>
		                    	
		                    </c:forEach>
		                </table>
		            </div>
		        </div>
		    </div>
	</body>
</html>