<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<title>个人中心</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta name="description" content="">
	    <meta name="author" content="">
	    <!-- Le styles -->
	    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/jquery.js"></script>
	    <link rel="stylesheet" href="/ServiceP2p/ntps/assets/css/style.css">
	    <link rel="stylesheet" href="/ServiceP2p/ntps/assets/css/loader-style.css">
	    <link rel="stylesheet" href="/ServiceP2p/ntps/assets/css/bootstrap.css">
	    <link rel="stylesheet" href="/ServiceP2p/ntps/assets/css/profile.css">
	
		
	    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
	    <!--[if lt IE 9]>
	        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	        <![endif]-->
	    <!-- Fav and touch icons -->
	    <link rel="shortcut icon" href="/ServiceP2p/ntps/assets/ico/minus.png">
	</head>
	
	<body> 
    <!-- Preloader -->
   <jsp:include page="./head/head.jsp"></jsp:include>
    <!-- END OF SIDE MENU -->



    <!--  PAPER WRAP -->
    <div class="wrap-fluid">
        <div class="container-fluid paper-wrap bevel tlbr">

            <!-- CONTENT -->
            <!--TITLE -->
            <div class="row">
                <div id="paper-top">
                    <div class="col-sm-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-media-record"></i> 
                            <span>个人中心</span>
                        </h2>

                    </div>

                    <div class="col-sm-7">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="tittle-middle-header">

                            <div class="alert">
                                <button type="button" class="close" data-dismiss="alert">×</button>
                                <span class="tittle-alert entypo-info-circled"></span>
                                Welcome back,&nbsp;
                                <strong>Dave mattew!</strong>&nbsp;&nbsp;Your last sig in at Yesterday, 16:54 PM
                            </div>


                        </div>

                    </div>
                    <div class="col-sm-2">
                        <div class="devider-vertical visible-lg"></div>
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
                <li><a href="#" title="Sample page 1">个人中心</a>
                </li>

            </ul>

            <!-- END OF BREADCRUMB -->

            <div class="content-wrap">
                <!-- PROFILE -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="well profile">
                            <div class="col-sm-12">
                                <div class="col-xs-12 col-sm-4 text-center">
									
                                    <ul class="list-group">
                                        <li class="list-group-item text-left">
                                            <span class="entypo-user"></span>&nbsp;&nbsp; 详细信息</li>
                                        <li class="list-group-item text-center">
                                            <img src="/ServiceP2p/ntps/assets/img/307327_205.jpg" alt="" class="img-circle img-responsive img-profile">

                                        </li>
										<li class="list-group-item text-right">
                                            <span class="pull-left">
                                                <strong>昵称</strong>
                                            </span>${admin.aname }</li>
                                        
                                    </ul>
									
                                </div>
                                <div class="col-xs-12 col-sm-8 profile-name">
                                    <h2>管理员信息
                                        <span class="pull-right social-profile">
                                            <i class="entypo-facebook-circled"></i>  <i class="entypo-twitter-circled"></i>  <i class="entypo-linkedin-circled"></i>  <i class="entypo-github-circled"></i>  <i class="entypo-gplus-circled"></i>
                                        </span>
                                    </h2>
                                    
                                    <hr>
                                    <dl class="dl-horizontal-profile">
                                        <dt>Id</dt>
                                        <dd>${admin.aid }</dd>

                                        <dt>姓名</dt>
                                        <dd>${admin.aname}</dd>

                                        <dt>邮箱</dt>
                                        <dd>${admin.amail}</dd>

                                        <dt>电话</dt>
                                        <dd>${admin.aphone}</dd>

                                    </dl>
                                    <hr>
									
                                   
                                </div>

                            </div>
                            <div class="col-xs-12 divider text-center">
                                <div class="col-xs-12 col-sm-4 emphasis">
                                    
                                    <button class="btn btn-success btn-block">
                                        <span class="fa fa-plus-circle"></span>&nbsp;&nbsp;</button>
                                </div>
                                <div class="col-xs-12 col-sm-4 emphasis">
                                    
                                    <button class="btn btn-info btn-block">
                                        <span class="fa fa-user"></span>&nbsp;&nbsp;</button>
                                </div>
                                <div class="col-sm-4 emphasis">
                                    
                                    <button class="btn btn-default btn-block">
                                        <span class="fa fa-user"></span>&nbsp;&nbsp;</button>
                                </div>
                                
                            </div>
                        </div>
                    </div>




                    <div class="row">


                        <div class="col-sm-12">
                            <!-- BLANK PAGE-->

                            <div style="margin:-20px 15px;" class="nest" id="Blank_PageClose">
                                <div class="title-alt">
                                    <h6>
                                     		   编辑个人资料</h6>
                                    <div class="titleClose">
                                        <a class="gone" href="#Blank_PageClose">
                                            <span class="entypo-cancel"></span>
                                        </a>
                                    </div>
                                    <div class="titleToggle">
                                        <a class="nav-toggle-alt" href="#Blank_Page_Content">
                                            <span class="entypo-up-open"></span>
                                        </a>
                                    </div>

                                </div>

                                <div class="body-nest" id="Blank_Page_Content">
                                    <div class="row">

                                        <!-- left column -->
                                        <div class="col-md-3">
                                            <div class="text-center">
                                                <img src="http://placehold.it/150" class="avatar img-circle" alt="avatar">
                                                <h6>上传图片</h6>

                                                <div class="input-group">
                                                    <span class="input-group-btn">
                                                        <span class="btn btn-primary btn-file">
                                                          			  浏览
                                                            <input type="file" multiple="">
                                                        </span>
                                                    </span>
                                                    <input type="text" class="form-control">
                                                </div>

                                            </div>
                                        </div>

                                        <!-- edit form column -->
                                        <div class="col-md-9 personal-info">
                                            <div class="alert alert-info alert-dismissable">
                                                <a class="panel-close close" data-dismiss="alert">×</a> 
                                                <i class="fa fa-coffee"></i>
												这是一个
                                                <strong>警报</strong>.使用此来向用户显示重要消息。
                                            </div>
                                            <h3>个人信息</h3>
                                            <form class="form-horizontal" role="form" action="update" method="post">
                                            <input type="hidden" name="aid" value="${admin.aid}">
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">用户名:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control" value="${admin.aname }" type="text" name="aname">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">身份证:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control" value="${admin.acard }" type="text" name="acard">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">手机号码:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control" value="${admin.aphone }" type="text" name="aphone">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-lg-3 control-label">邮箱:</label>
                                                    <div class="col-lg-8">
                                                        <input class="form-control" value="${admin.amail }" type="text" name="amail">
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label">密码:</label>
                                                    <div class="col-md-8">
                                                        <input class="form-control" value="111111" type="password" name="apassword">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-md-3 control-label"></label>
                                                    <div class="col-md-8">
                                                        <input class="btn btn-primary" type="submit" value="提交">
                                                        <span></span>
                                                        <input class="btn btn-default" value="取消" type="reset">
                                                    </div>
                                                </div>
                                                </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END OF BLANK PAGE -->

                    </div>
                </div>
                <!-- END OF PROFILE -->


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


		</div>
		
	</body>
</html>