<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.*" %> 
<%@ page import="java.util.*" %> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
   <link rel="shortcut icon" href="favicon.ico"> <link href="${pageContext.request.contextPath}/statics/back/static/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statics/back/static/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <!-- Morris -->
    <link href="${pageContext.request.contextPath}/statics/back/static/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
    <!-- Gritter -->
    <link href="${pageContext.request.contextPath}/statics/back/static/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statics/back/static/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statics/back/static/css/style.css?v=4.1.0" rel="stylesheet">
</head>
<body class="gray-bg">
    <div class="wrapper wrapper-content">
        <div class="row">
            <div class="col-sm-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <span class="label label-success pull-right">月</span>
                        <h5>平台累计收益</h5>
                    </div>
                    <div class="ibox-content">
                        <h1 class="no-margins">${sessionScope.pintaiMoney}</h1>
                        <div class="stat-percent font-bold text-success">98% <i class="fa fa-bolt"></i>
                        </div>
                        <small>平台收益(元)</small>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <span class="label label-info pull-right">月</span>
                        <h5>平台服务用户收益</h5>
                    </div>
                    <div class="ibox-content">
                        <h1 class="no-margins">${sessionScope.allMoneyProfit}</h1>
                        <div class="stat-percent font-bold text-info">
						　　<c:if test="${sessionScope.allMoneyProfit>sessionScope.allMoneyProfitbefore}">
								${sessionScope.compnrateProfit}<i class="fa fa-level-up"></i>
							</c:if>
						　　<c:if test="${sessionScope.allMoneyProfit<sessionScope.allMoneyProfitbefore}">
								${sessionScope.compnrateProfit}<i class="fa fa-level-down"></i>
							</c:if>
                        </div>
                        <small>用户收益</small>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <span class="label label-primary pull-right">年</span>
                        <h5>平台累计访客</h5>
                    </div>
                    <div class="ibox-content">
                        <h1 class="no-margins">${sessionScope.allUser}</h1>
                        <div class="stat-percent font-bold text-navy">44% <i class="fa fa-level-up"></i>
                        </div>
                        <small>注册客户</small>
                    </div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <span class="label label-danger pull-right">年</span>
                        <h5>平台累计发标</h5>
                    </div>
                    <div class="ibox-content">
                        <h1 class="no-margins">${sessionScope.fabiaoSuccess}</h1>
                        <div class="stat-percent font-bold text-danger">38% <i class="fa fa-level-down"></i>
                        </div>
                        <small>发标总数</small>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>订单</h5>
                        <div class="pull-right">
                            <div class="btn-group">
                                <button type="button" class="btn btn-xs btn-white active">天</button>
                                <button type="button" class="btn btn-xs btn-white">月</button>
                                <button type="button" class="btn btn-xs btn-white">年</button>
                            </div>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="row">
                            <div class="col-sm-9">
                                <!-- <div class="flot-chart">
                                    <div class="flot-chart-content" id="flot-dashboard-chart"></div>
                                </div> -->
                                <div id="main" style="width: 800px;height:400px;"></div>
                            </div>
                            <div class="col-sm-3">
                                <ul class="stat-list">
                                    <li>
                                        <h2 class="no-margins">${sessionScope.AllLoanMoney}</h2>
                                        <small>借款总数</small>
                                        <div class="stat-percent">48% <i class="fa fa-level-up text-navy"></i>
                                        </div>
                                        <div class="progress progress-mini">
                                            <div style="width: 48%;" class="progress-bar"></div>
                                        </div>
                                    </li>
                                    <li>
                                        <h2 class="no-margins ">${sessionScope.AllBidMoney}</h2>
                                        <small>最近一个月的发标数</small>
                                        <div class="stat-percent">60% <i class="fa fa-level-down text-navy"></i>
                                        </div>
                                        <div class="progress progress-mini">
                                            <div style="width: 60%;" class="progress-bar"></div>
                                        </div>
                                    </li>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>消息</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content ibox-heading">
                        <h3><i class="fa fa-envelope-o"></i> 新消息</h3>
                        <small><i class="fa fa-tim"></i> 您有${sessionScope.audetailsSize}条未读消息</small>
                    </div>
                    <div class="ibox-content">
                        <div class="feed-activity-list">
							<c:forEach items="${authebDetais}" var="authebDetais">
								<div class="feed-element">
									<input type="hidden" value="${authebDetais.adtime}" id="adtime"/>
	                                <div>
	                                	<strong>${authebDetais.uiname}</strong>
	                                    <div>${authebDetais.adintroduct}</div>
	                                    <small class="text-muted">${authebDetais.adtime}</small>
	                                    <c:set var="adstype" value="${authebDetais.adstype}" /><!-- 标签用于设置变量值和对象属性。 -->
	                                    <c:if test="${adstype == 1}">
	                                    	 <small class="pull-right text-navy"><a class="J_menuItem"  href="${pageContext.request.contextPath}/back/toAuthIdCardStatus?adstype=${adstype}&adid=${authebDetais.adid}">
	                                    		<u>去处理</u></a></small>
	                                    </c:if>
	                                    <c:if test="${adstype ==2}">
	                                    	 <small class="pull-right text-navy"><a class="J_menuItem" href="${pageContext.request.contextPath}/back/toAuthIdCardStatus?adstype=${adstype}&adid=${authebDetais.adid}">用户发标申请审核
	                                    		<u>去处理</u></a></small>
	                                    </c:if>
	                                </div>
                            	</div>
							</c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>用户项目列表</h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>
                                    <a class="close-link">
                                        <i class="fa fa-times"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="ibox-content">
                                <table class="table table-hover no-margins">
                                    <thead>
                                        <tr>
                                            <th>状态</th>
                                            <th>日期</th>
                                            <th>用户</th>
                                            <th>值</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        	<c:forEach items="${fabiaoList}" var="fabiao">
                                        		<c:set var="fstatus" value="${fabiao.fstatus}" />
                                        		<c:if test="${fstatus==1}">
                                        			 <tr>
                                        			 	<td><small>进行中...</small>
			                                            </td>
			                                            <td><i class="fa fa-clock-o"></i>${fabiao.fendtime}</td>
			                                            <td>${fabiao.uiname}</td>
			                                            <td class="text-navy"> <i class="fa fa-level-up"></i>${fabiao.compnrate}</td>
                                        		  </tr>
                                        		</c:if>
                                        		<c:if test="${fstatus==2 || fstatus==3 || fstatus==7 }">
                                        			 <tr>
			                                            <td><span class="label label-primary">已完成</span>
			                                            </td>
			                                            <td><i class="fa fa-clock-o"></i>${fabiao.fendtime}</td>
			                                            <td>${fabiao.uiname}</td>
			                                            <td class="text-navy"> <i class="fa fa-level-up"></i> 100%</td>
			                                        </tr>
                                        		</c:if>
                                        		<c:if test="${fstatus==5 || fstatus==6 || fstatus==4 }">
                                        			<tr>
			                                            <td><span class="label label-warning">已取消</span>
			                                            </td>
			                                            <td><i class="fa fa-clock-o"></i>${fabiao.fendtime}</td>
			                                            <td>${fabiao.uiname}</td>
			                                            <td class="text-navy"> <i class="fa fa-level-up"></i>0%</td>
			                                        </tr>
                                        		</c:if>
                                        	</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>任务列表</h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>
                                    <a class="close-link">
                                        <i class="fa fa-times"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="ibox-content">
                                <ul class="todo-list m-t small-list ui-sortable">
                                    <c:forEach items="${empTasskList}" var="empTask">
                                    	<c:set var="etstatus" value="${empTask.etstatus}" /><!-- 标签用于设置变量值和对象属性。 -->
                                    	<c:if test="${etstatus ==0 }">
                                    		 <li>
		                                        <a href="widgets.html#" class="check-link"><i class="fa fa-check-square"></i> </a>
		                                        <span class="m-l-xs todo-completed">${empTask.etname}</span>
                                    		 </li>
                                    	</c:if>
                                    	<c:if test="${etstatus ==1 }">
                                    		 <li>
		                                        <a href="widgets.html#" class="check-link"><i class="fa fa-square-o"></i> </a>
		                                        <span class="m-l-xs todo-completed">${empTask.etname}</span>
		                                        <small class="label label-primary"><i class="fa fa-clock-o"></i>one day</small>
		                                    </li>
                                    	</c:if>
                                    	<c:if test="${etstatus ==2 }">
                                    		 <li>
		                                        <a href="widgets.html#" class="check-link"><i class="fa fa-square-o"></i> </a>
		                                        <span class="m-l-xs">${empTask.etname}</span>
		                                        <small class="label label-primary"><i class="fa fa-clock-o"></i> 1小时</small>
		                                    </li>
                                    	</c:if>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>

    <!-- 全局js -->
    <script src="${pageContext.request.contextPath}/statics/back/static/js/jquery.min.js?v=2.1.4"></script>
    <script src="${pageContext.request.contextPath}/statics/back/static/js/bootstrap.min.js?v=3.3.6"></script>

    <!-- Flot -->
    <script src="${pageContext.request.contextPath}/statics/back/static/js/plugins/flot/jquery.flot.js"></script>
    <script src="${pageContext.request.contextPath}/statics/back/static/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="${pageContext.request.contextPath}/statics/back/static/js/plugins/flot/jquery.flot.spline.js"></script>
    <script src="${pageContext.request.contextPath}/statics/back/static/js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="${pageContext.request.contextPath}/statics/back/static/js/plugins/flot/jquery.flot.pie.js"></script>
    <script src="${pageContext.request.contextPath}/statics/back/static/js/plugins/flot/jquery.flot.symbol.js"></script>

    <!-- Peity -->
    <script src="${pageContext.request.contextPath}/statics/back/static/js/plugins/peity/jquery.peity.min.js"></script>
    <script src="${pageContext.request.contextPath}/statics/back/static/js/demo/peity-demo.js"></script>

    <!-- 自定义js -->
    <script src="${pageContext.request.contextPath}/statics/back/static/js/content.js?v=1.0.0"></script>

    <!-- jQuery UI -->
    <script src="${pageContext.request.contextPath}/statics/back/static/js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- Jvectormap -->
    <script src="${pageContext.request.contextPath}/statics/back/static/js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/statics/back/static/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>

    <!-- EayPIE -->
    <script src="${pageContext.request.contextPath}/statics/back/static/js/plugins/easypiechart/jquery.easypiechart.js"></script>

    <!-- Sparkline -->
    <script src="${pageContext.request.contextPath}/statics/back/static/js/plugins/sparkline/jquery.sparkline.min.js"></script>

    <!-- Sparkline demo data  -->
    <script src="${pageContext.request.contextPath}/statics/back/static/js/demo/sparkline-demo.js"></script>
    
    <!-- 引入主要的charts源码js -->
	<script src="${pageContext.request.contextPath}/statics/back/static/js/echarts.min.js"></script>
	<script src="${pageContext.request.contextPath}/statics/back/static/js/jquery-3.2.1.min.js"></script>

    <script type="text/javascript">
		//基于准备好的dom,初始化实例,第二参数可以是引入的主题名
		var chart = echarts.init(document.getElementById('main'), 'macarons');
		
		//获取纵坐标
		var dateTime = new Array();
		dateTime = ${dateTime};
		
		//获取横坐标(投标)
		var moneyLoan = new Array();
		moneyLoan = ${moneyLoan};
		
		//获取横坐标(借款)
		var moneyBid = new Array();
		moneyBid = ${moneyBid};
		
		chart.title = '折柱混合';

		var option = {
		    tooltip: {
		        trigger: 'axis',
		        axisPointer: {
		            type: 'cross',
		            crossStyle: {
		                color: '#1ab394'
		            }
		        }
		    },
		    toolbox: {
		        feature: {
		            dataView: {show: true, readOnly: false},
		            magicType: {show: true, type: ['line', 'bar']},
		            restore: {show: true},
		            saveAsImage: {show: true}
		        }
		    },
		    legend: {
		        data:['投标详情','借款详情']
		    },
		    xAxis: [
		        {
		            type: 'category',
		            data: dateTime,
		            axisPointer: {
		                type: 'shadow'
		            }
		        }
		    ],
		    yAxis: [
		        {
		            type: 'value',
		            name: '金额',
		            min: 0,
		            max: 10000,
		            interval: 1000,
		            axisLabel: {
		                formatter: '{value} 元'
		            }
		        },
		        
		    ],
		    series: [
		        {
		            name:'投标详情',
		            type:'bar',
		            data:moneyLoan
		        },
		        {
		            name:'借款详情',
		            type:'line',
		            data:moneyBid
		        }
		    ]
		};
		
		//使用刚指定的配置项和数据显示图表。
        chart.setOption(option);
	</script>


</body>

</html>