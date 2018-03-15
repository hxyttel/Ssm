<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<base href="<%=path%>/">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>表格</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/jquery.js"></script>

    <link rel="stylesheet" href="/ServiceP2p/ntps/assets/css/style.css">
    <link rel="stylesheet" href="/ServiceP2p/ntps/assets/css/loader-style.css">
    <link rel="stylesheet" href="/ServiceP2p/ntps/assets/css/bootstrap.css">


    <link href="/ServiceP2p/ntps/assets/js/footable/css/footable.core.css" rel="stylesheet" type="text/css">
    <link href="/ServiceP2p/ntps/assets/js/footable/css/footable.standalone.css" rel="stylesheet" type="text/css">
    <link href="/ServiceP2p/ntps/assets/js/footable/css/footable-demos.css" rel="stylesheet" type="text/css">

    <link rel="stylesheet" href="/ServiceP2p/ntps/assets/js/dataTable/lib/jquery.dataTables/css/DT_bootstrap.css">
    <link rel="stylesheet" href="/ServiceP2p/ntps/assets/js/dataTable/css/datatables.responsive.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="/ServiceP2p/ntps/assets/ico/minus.png">
	
	<body> 
    <!-- Preloader -->
	<jsp:include page="./head/head.jsp"></jsp:include>

    <!--  PAPER WRAP -->
    <div class="wrap-fluid">
        <div class="container-fluid paper-wrap bevel tlbr">





            <!-- CONTENT -->
            <!--TITLE -->
            <div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <span class="entypo-menu"></span>
                            <span>银行卡管理表
                            </span>
                        </h2>

                    </div>

                    <div class="col-sm-7">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="tittle-middle-header">

                            <div class="alert">
                                <button type="button" class="close" data-dismiss="alert">×</button>
                                <span class="tittle-alert entypo-info-circled"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                Welcome back,&nbsp;
                                <strong>Dave mattew!</strong>&nbsp;&nbsp;Your last sig in at Yesterday
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="btn-group btn-wigdet pull-right visible-lg">
                        </div>
                    </div>
                </div>
            </div>
            <!--/ TITLE -->

            <!-- BREADCRUMB -->
            <ul id="breadcrumb">
                <li>
                    <span class="entypo-home"></span>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">表</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="bank/list" title="Sample page 1">银行卡管理表</a>
                </li>
                <li class="pull-right">
                    <div class="input-group input-widget">

                        <input style="border-radius:15px" type="text" placeholder="查找..." class="form-control">
                    </div>
                </li>
            </ul>

            <!-- END OF BREADCRUMB -->



            <div class="content-wrap">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="nest" id="FootableClose">
                            <div class="title-alt">
                                
                                <div class="titleToggle">
                                    <a class="nav-toggle-alt" href="#Footable">
                                        <span class="entypo-up-open"></span>
                                    </a>
                                </div>
                            </div>
							
							<!-- 修改拟态框（Modal） -->
							<div class="modal fade" id="myupdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							    <div class="modal-dialog">
							    <form action="loans/update" method="post">
							        <div class="modal-content">
							        	<input type="hidden" name="lid" id="lid">
							            <div class="modal-header">
							                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							                    &times;
							                </button>
							                <h4 class="modal-title" id="myModalLabel">
							                		    修改
							                </h4>
							            </div>
							            <div class="modal-body">
							                <div class="input-group">
												<div class="form-group">
													<label>放款用户id:</label>
										            <input name="lsuid" id="lsuid" type="text"  style="color:black;">
							                    </div>
							                    <div class="form-group">
							                        <label>借款用户id:</label>
							                		<input name="lsuids" id="lsuids" type="text"  style="color:black;">
							                    </div>
							                    <div class="form-group">
													<label>放款金额:</label>
										            <input name="lmoney" id="lmoney" type="text"  style="color:black;">
							                    </div>
							                    <div class="form-group">
													<label>放款时间:</label>
										            <input name="ltime" id="ltime" type="text" class="laydate-icon"  style="color:black;">
							                    </div>
							                    <div class="form-group">
													<label>放款状态:</label>
										            <input name="lstate" id="lstate" type="text"  style="color:black;">
							                    </div>
							                    
							                    <div class="form-group">
													<label>放款ip:</label>
										            <input name="lip" id="lip" type="text"  style="color:black;">
							                    </div>
							                    <div class="form-group">
													<label>借款ip:</label>
										            <input name="lips" id="lips" type="text"  style="color:black;">
							                    </div>
							                </div>
							            </div>
							            <div class="modal-footer">
							                <button type="button" class="btn btn-default" data-dismiss="modal">
							                	关闭
							                </button>
							               
							                <input type="submit" value="提交" class="btn btn-primary" id="id_">
							            </div>
							        </div>
							        </form>
							        <!-- /.modal-content -->
							    </div><!-- /.modal -->
							</div> 
							
							
                            <div class="body-nest" id="Footable">
                            	<a href="income/list"><span class="glyphicon glyphicon-plus"></span>新增</a>
                                <table class="table-striped footable-res footable metro-blue" data-page-size="7">
                                    <thead>
                                        <tr>
                                            <th>
                                               		编号
                                            </th>
                                            <th>
                                           			 放款用户id
                                            </th>
                                            <th>
                                           			 借款用户id
                                            </th>
                                            <th data-hide="phone,tablet">
                                        		     放款金额
                                            </th>
                                            <th data-hide="phone,tablet">
                          							放款时间
                                            </th>
                                            <th data-hide="phone,tablet">
                                                	放款状态
                                            </th>
                                            <th data-hide="phone,tablet">
                                                	放款人ip
                                            </th >
                                            <th data-hide="phone,tablet">
                                                	借款人ip
                                            </th >
                                            <th data-hide="phone,tablet">
													操作
                                            </th >
                                        </tr>
                                        <c:forEach items="${lloans}" var="loanss">
                                        <tbody>
											<tr>
												<td>${loanss.lid}</td>
												<td>${loanss.lsuid}</td>
												<td>${loanss.lsuids}</td>
												<td>${loanss.lmoney}</td>
												<td>${loanss.ltime}</td>
												<td>
													<c:if test="${loanss.lstate==1}">
														审核中
													</c:if>
													<c:if test="${loanss.lstate==2}">
														放款成功
													</c:if>
													<c:if test="${loanss.lstate==3}">
														放款失败
													</c:if>
												</td>
												<td>${loanss.lip}</td>
												<td>${loanss.lips}</td>
												
												<td><a href="javascript:void(-1);" onclick="show_update(${loanss.lid})"> <span class="glyphicon glyphicon-list-alt"></span>修改</a>|
													<a href="loans/delete/${loanss.lid}"><span class="glyphicon glyphicon-trash"></span>删除</a></td>
											</tr>
											</tbody>
										</c:forEach>
                                    </thead>
                                    <!-- <tbody>
                                        <tr>
                                            <td>Isidra</td>
                                            <td><a href="#">Boudreaux</a>
                                            </td>
                                            <td>Traffic Court Referee</td>
                                            <td data-value="78025368997">22 Jun 1972</td>
                                            <td data-value="1">
                                              <button type="button" class="btn  ladda-label">
                                    				<span class="entypo-pencil"></span>&nbsp;&nbsp;修改
                                    			</button>
                                    			
                                    			 <button type="button" class="btn  ladda-label">
                                    				<span class="entypo-plus-squared"></span>&nbsp;&nbsp;增加
                                    			</button>
                                            </td>
                                        </tr>

                                    </tbody> 
                                    -->
                                    <tfoot>
                                        <tr>
                                            <td colspan="9">
                                                <div class="pagination pagination-centered"></div>
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


          

            <!-- /END OF CONTENT -->



            <!-- FOOTER -->
            <div class="footer-space"></div>
            <div id="footer">
                <div class="devider-footer-left"></div>
                <div class="time">
                    <p id="spanDate">
                    <p id="clock">
                </div>
                <div class="copyright">Make with Love
                    <span class="entypo-heart"></span>Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> All Rights Reserved</div>
                <div class="devider-footer"></div>

            </div>
            <!-- / END OF FOOTER -->


        </div>
    </div>
    <!--  END OF PAPER WRAP -->

    <!-- RIGHT SLIDER CONTENT -->
    <div class="sb-slidebar sb-right">
        <div class="right-wrapper">
            <div class="row">
                <h3>
                    <span><i class="entypo-gauge"></i>&nbsp;&nbsp;MAIN WIDGET</span>
                </h3>
                <div class="col-sm-12">

                    <div class="widget-knob">
                        <span class="chart" style="position:relative" data-percent="86">
                            <span class="percent"></span>
                        </span>
                    </div>
                    <div class="widget-def">
                        <b>Distance traveled</b>
                        <br>
                        <i>86% to the check point</i>
                    </div>

                    <div class="widget-knob">
                        <span class="speed-car" style="position:relative" data-percent="60">
                            <span class="percent2"></span>
                        </span>
                    </div>
                    <div class="widget-def">
                        <b>The average speed</b>
                        <br>
                        <i>30KM/h avarage speed</i>
                    </div>


                    <div class="widget-knob">
                        <span class="overall" style="position:relative" data-percent="25">
                            <span class="percent3"></span>
                        </span>
                    </div>
                    <div class="widget-def">
                        <b>Overall result</b>
                        <br>
                        <i>30KM/h avarage Result</i>
                    </div>
                </div>
            </div>
        </div>

        <div style="margin-top:0;" class="right-wrapper">
            <div class="row">
                <h3>
                    <span><i class="entypo-chat"></i>&nbsp;&nbsp;CHAT</span>
                </h3>
                <div class="col-sm-12">
                    <span class="label label-warning label-chat">Online</span>
                    <ul class="chat">
                        <li>
                            <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-circle" src="http://api.randomuser.me/portraits/thumb/men/20.jpg">
                                </span><b>Dave Junior</b>
                                <br><i>Last seen : 08:00 PM</i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-circle" src="http://api.randomuser.me/portraits/thumb/men/21.jpg">
                                </span><b>Kenneth Lucas</b>
                                <br><i>Last seen : 07:21 PM</i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-circle" src="http://api.randomuser.me/portraits/thumb/men/22.jpg">
                                </span><b>Heidi Perez</b>
                                <br><i>Last seen : 05:43 PM</i>
                            </a>
                        </li>


                    </ul>

                    <span class="label label-chat">Offline</span>
                    <ul class="chat">
                        <li>
                            <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-offline img-circle" src="http://api.randomuser.me/portraits/thumb/men/23.jpg">
                                </span><b>Dave Junior</b>
                                <br><i>Last seen : 08:00 PM</i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-offline img-circle" src="http://api.randomuser.me/portraits/thumb/women/24.jpg">
                                </span><b>Kenneth Lucas</b>
                                <br><i>Last seen : 07:21 PM</i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-offline img-circle" src="http://api.randomuser.me/portraits/thumb/men/25.jpg">
                                </span><b>Heidi Perez</b>
                                <br><i>Last seen : 05:43 PM</i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-offline img-circle" src="http://api.randomuser.me/portraits/thumb/women/25.jpg">
                                </span><b>Kenneth Lucas</b>
                                <br><i>Last seen : 07:21 PM</i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-offline img-circle" src="http://api.randomuser.me/portraits/thumb/men/26.jpg">
                                </span><b>Heidi Perez</b>
                                <br><i>Last seen : 05:43 PM</i>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- END OF RIGHT SLIDER CONTENT-->


    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/preloader.js"></script>
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/app.js"></script>
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/load.js"></script>
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/main.js"></script>


    <!-- /MAIN EFFECT -->
    <!-- GAGE -->
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/toggle_close.js"></script>
    <script src="/ServiceP2p/ntps/assets/js/footable/js/footable.js" type="text/javascript"></script>
    <script src="/ServiceP2p/ntps/assets/js/footable/js/footable.sort.js" type="text/javascript"></script>
    <script src="/ServiceP2p/ntps/assets/js/footable/js/footable.filter.js" type="text/javascript"></script>
    <script src="/ServiceP2p/ntps/assets/js/footable/js/footable.paginate.js" type="text/javascript"></script>
    <script src="/ServiceP2p/ntps/assets/js/footable/js/footable.paginate.js" type="text/javascript"></script>
	 <script src="/ServiceP2p/ntps/js/laydate.js" type="text/javascript"></script>




    <script type="text/javascript">
    $(function() {
        $('.footable-res').footable();
    });
    </script>
    <script type="text/javascript">
    $(function() {
        $('#footable-res2').footable().bind('footable_filtering', function(e) {
            var selected = $('.filter-status').find(':selected').text();
            if (selected && selected.length > 0) {
                e.filter += (e.filter && e.filter.length > 0) ? ' ' + selected : selected;
                e.clear = !e.filter;
            }
        });

        $('.clear-filter').click(function(e) {
            e.preventDefault();
            $('.filter-status').val('');
            $('table.demo').trigger('footable_clear_filter');
        });

        $('.filter-status').change(function(e) {
            e.preventDefault();
            $('table.demo').trigger('footable_filter', {
                filter: $('#filter').val()
            });
        });

        $('.filter-api').click(function(e) {
            e.preventDefault();

            //get the footable filter object
            var footableFilter = $('table').data('footable-filter');

            alert('about to filter table by "tech"');
            //filter by 'tech'
            footableFilter.filter('tech');

            //clear the filter
            if (confirm('clear filter now?')) {
                footableFilter.clearFilter();
            }
        });
    });
    </script>
    
    <!-- 修改拟态框 -->
    <script>
    function show_update(id) {
    	var url =  "loans/getby";
    	$.post(
    			url,
    			{
    				lid:id
    			},
	    			function(data){
	    				var obj = JSON.parse(data);
	    				$('#lid').val(obj.lid);
	    				$('#lsuid').val(obj.lsuid);
	    				$('#lsuids').val(obj.lsuids);
	    				$('#lmoney').val(obj.lmoney);
	    				$('#ltime').val(obj.ltime);
	    				$('#lstate').val(obj.lstate);
	    				$('#lip').val(obj.lip);
	    				$('#lips').val(obj.lips);
	    			}
		    );	
	    	
	         $('#myupdate').modal('show');
	         
	         $('#tb_role').bootstrapTable('refresh');
	    }
	    
	</script>
    
    <!-- 时间控制 -->
	<script type="text/javascript">
	!function(){
		laydate.skin('molv');//切换皮肤，请查看skins下面皮肤库
		laydate({elem: '#ltime'});//绑定元素
	}();
	
	//日期范围限制
	var start = {
	    elem: '#start',
	    format: 'YYYY-MM-DD',
	    min: laydate.now(), //设定最小日期为当前日期
	    max: '2099-06-16', //最大日期
	    istime: true,
	    istoday: false,
	    choose: function(datas){
	         end.min = datas; //开始日选好后，重置结束日的最小日期
	         end.start = datas //将结束日的初始值设定为开始日
	    }
	};
	
	var end = {
	    elem: '#end',
	    format: 'YYYY-MM-DD',
	    min: laydate.now(),
	    max: '2099-06-16',
	    istime: true,
	    istoday: false,
	    choose: function(datas){
	        start.max = datas; //结束日选好后，充值开始日的最大日期
	    }
	};
	laydate(start);
	laydate(end);
	
	//自定义日期格式
	laydate({
	    elem: '#test1',
	    format: 'YYYY年MM月DD日',
	    festival: true, //显示节日
	    choose: function(datas){ //选择日期完毕的回调
	        alert('得到：'+datas);
	    }
	});
	
	//日期范围限定在昨天到明天
	laydate({
	    elem: '#hello3',
	    min: laydate.now(-1), //-1代表昨天，-2代表前天，以此类推
	    max: laydate.now(+1) //+1代表明天，+2代表后天，以此类推
	});
	</script>

	</body>
</html>