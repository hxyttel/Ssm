<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%String path = request.getContextPath();%>
<html>
	<base href="<%=path%>/">
	<meta charset="utf-8">
    <title>后台管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <link rel="stylesheet" href="/ServiceP2p/ntps/assets/css/style.css">
    <link rel="stylesheet" href="/ServiceP2p/ntps/assets/css/loader-style.css">
    <link rel="stylesheet" href="/ServiceP2p/ntps/assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="/ServiceP2p/ntps/assets/js/progress-bar/number-pb.css">
		
    <style type="text/css">
    canvas#canvas4 {
        position: relative;
        top: 20px;
    }
    </style>

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
                    <div class="col-lg-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-window"></i> 
                            <span>首页
                            </span>
                        </h2>

                    </div>

                    <div class="col-lg-7">
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
                    <div class="col-lg-2">
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
                <li><a href="/ServiceP2p/ntps/index.jsp" title="Sample page 1">首页</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">详情</a>
                </li>
                <li class="pull-right">
                    <div class="input-group input-widget">

                        <input style="border-radius:15px" type="text" placeholder="Search..." class="form-control">
                    </div>
                </li>
            </ul>

          
            <!--  / DEVICE MANAGER -->










          




            <div class="content-wrap">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="chart-wrap">
                            <div class="chart-dash">
                                <!-- <div id="sparkline"></div> -->
                                <div id="placeholder" style="width:100%;height:200px;"></div>
                            </div>
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="speed">
                                        <h2>Speed Avarage</h2>
                                        <h1>74
                                            <span>Km / hours</span>
                                        </h1>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="traffic">
                                        <h2>Traffic per day</h2>
                                        <h1>2.5874</h1>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="traffic-rates">
                                        <h4>Traffic Rates</h4>
                                        <h1>76 %
                                            <span>-1,2 %</span>
                                        </h1>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="traffic-rates">
                                        <h4>Traffic Rates</h4>
                                        <h1>25 %
                                            <span>-1,8 %</span>
                                        </h1>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="traffic-rates">
                                        <h4>Traffic Rates</h4>
                                        <h1>83 %
                                            <span>-1,9 %</span>
                                        </h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                    <div class="col-lg-6">
                        <div class="weather-wrap">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="temperature"><b>Monday</b>, 07:30 AM
                                        <span>F</span>
                                        <span><b>C</b>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="weather-icon">
                                        <i class="wi-day-lightning"></i>
                                    </div>
                                </div>
                                <div class="col-lg-8">
                                    <div class="weather-text">
                                        <h2>Berlin
                                            <br><i>Day Lightning</i>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="weather-text">
                                        <h3><i class="wi-thermometer"></i>18<i class="wi-celcius"></i>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                            <div class="weather-dash">
                                <div class="row">
                                    <div class="col-lg-2">
                                        <div class="daily-weather">
                                            <h2>Mon</h2>
                                            <h3>85
                                                <span><i class="wi-fahrenheit"></i>
                                                </span>
                                            </h3>
                                            <h4>
                                                <span><i class="wi-day-lightning"></i>
                                                </span>
                                            </h4>
                                            <h5>15
                                                <i>km/h</i>
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="daily-weather">
                                            <h2>Tue</h2>
                                            <h3>81
                                                <span><i class="wi-fahrenheit"></i>
                                                </span>
                                            </h3>
                                            <h4><i class="wi-day-cloudy"></i>
                                            </h4>
                                            <h5>12
                                                <i>km/h</i>
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="daily-weather">
                                            <h2>Wed</h2>
                                            <h3>83
                                                <span><i class="wi-fahrenheit"></i>
                                                </span>
                                            </h3>
                                            <h4><i class="wi-rain-mix"></i>
                                            </h4>
                                            <h5>14
                                                <i>km/h</i>
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="daily-weather">
                                            <h2>Thu</h2>
                                            <h3>80
                                                <span><i class="wi-fahrenheit"></i>
                                                </span>
                                            </h3>
                                            <h4><i class="wi-day-sunny"></i>
                                            </h4>
                                            <h5>15
                                                <i>km/h</i>
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="daily-weather">
                                            <h2>Fri</h2>
                                            <h3>79
                                                <span><i class="wi-fahrenheit"></i>
                                                </span>
                                            </h3>
                                            <h4><i class="wi-day-storm-showers"></i>
                                            </h4>
                                            <h5>11
                                                <i>km/h</i>
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="daily-weather">
                                            <h2>Sat</h2>
                                            <h3>82
                                                <span><i class="wi-fahrenheit"></i>
                                                </span>
                                            </h3>
                                            <h4><i class="wi-cloudy"></i>
                                            </h4>
                                            <h5>10
                                                <i>km/h</i>
                                            </h5>
                                        </div>
                                    </div>
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
                        <span class="entypo-heart"></span>Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">后台管理</a> All Rights Reserved</div>
                    <div class="devider-footer"></div>


                </div>
                <!-- / END OF FOOTER -->


            </div>
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
                <div class="col-lg-12">

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
                <div class="col-lg-12">
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
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/jquery.js"></script>
    <script src="/ServiceP2p/ntps/assets/js/progress-bar/src/jquery.velocity.min.js"></script>
    <script src="/ServiceP2p/ntps/assets/js/progress-bar/number-pb.js"></script>
    <script src="/ServiceP2p/ntps/assets/js/progress-bar/progress-app.js"></script>



    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/preloader.js"></script>
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/app.js"></script>
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/load.js"></script>
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/main.js"></script>




    <!-- GAGE -->


    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/chart/jquery.flot.js"></script>
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/chart/jquery.flot.resize.js"></script>
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/chart/realTime.js"></script>
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/speed/canvasgauge-coustom.js"></script>
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/countdown/jquery.countdown.js"></script>



    <script src="/ServiceP2p/ntps/assets/js/jhere-custom.js"></script>

    <script>
    var gauge4 = new Gauge("canvas4", {
        'mode': 'needle',
        'range': {
            'min': 0,
            'max': 90
        }
    });
    gauge4.draw(Math.floor(Math.random() * 90));
    var run = setInterval(function() {
        gauge4.draw(Math.floor(Math.random() * 90));
    }, 3500);
    </script>


    <script type="text/javascript">
    /* Javascript
     *
     * See http://jhere.net/docs.html for full documentation
     */
    $(window).on('load', function() {
        $('#mapContainer').jHERE({
            center: [52.500556, 13.398889],
            type: 'smart',
            zoom: 10
        }).jHERE('marker', [52.500556, 13.338889], {
            icon: 'assets/img/marker.png',
            anchor: {
                x: 12,
                y: 32
            },
            click: function() {
                alert('Hallo from Berlin!');
            }
        })
            .jHERE('route', [52.711, 13.011], [52.514, 13.453], {
                color: '#FFA200',
                marker: {
                    fill: '#86c440',
                    text: '#'
                }
            });
    });
    </script>
    <script type="text/javascript">
    var output, started, duration, desired;

    // Constants
    duration = 5000;
    desired = '50';

    // Initial setup
    output = $('#speed');
    started = new Date().getTime();

    // Animate!
    animationTimer = setInterval(function() {
        // If the value is what we want, stop animating
        // or if the duration has been exceeded, stop animating
        if (output.text().trim() === desired || new Date().getTime() - started > duration) {
            console.log('animating');
            // Generate a random string to use for the next animation step
            output.text('' + Math.floor(Math.random() * 60)

            );

        } else {
            console.log('animating');
            // Generate a random string to use for the next animation step
            output.text('' + Math.floor(Math.random() * 120)

            );
        }
    }, 5000);
    </script>
    <script type="text/javascript">
    $('#getting-started').countdown('2015/01/01', function(event) {
        $(this).html(event.strftime(

            '<span>%M</span>' + '<span class="start-min">:</span>' + '<span class="start-min">%S</span>'));
    });
    </script>

		<div style="text-align:center;">
		<p>More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">后台管理</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
		</div>
	</body>
</html>