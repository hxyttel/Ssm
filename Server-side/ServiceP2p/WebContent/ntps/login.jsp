<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <meta charset="utf-8">
    <title>亿信终端管理系统 </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
   

   <!--  <link rel="stylesheet" href="assets/css/style.css"> -->
    <link rel="stylesheet" href="/ServiceP2p/ntps/assets/css/loader-style.css">
    <link rel="stylesheet" href="/ServiceP2p/ntps/assets/css/bootstrap.css">
    <link rel="stylesheet" href="/ServiceP2p/ntps/assets/css/signin.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="/ServiceP2p/ntps/assets/ico/minus.png">
    
       <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/preloader.js"></script>
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/app.js"></script>
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/load.js"></script>
    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/main.js"></script>

    <script type="text/javascript" src="/ServiceP2p/ntps/assets/js/map/gmap3.js"></script>
    <script type="text/javascript">
    $(function() {

        $("#test1").gmap3({
            marker: {
                latLng: [-7.782893, 110.402645],
                options: {
                    draggable: true
                },
                events: {
                    dragend: function(marker) {
                        $(this).gmap3({
                            getaddress: {
                                latLng: marker.getPosition(),
                                callback: function(results) {
                                    var map = $(this).gmap3("get"),
                                        infowindow = $(this).gmap3({
                                            get: "infowindow"
                                        }),
                                        content = results && results[1] ? results && results[1].formatted_address : "no address";
                                    if (infowindow) {
                                        infowindow.open(map, marker);
                                        infowindow.setContent(content);
                                    } else {
                                        $(this).gmap3({
                                            infowindow: {
                                                anchor: marker,
                                                options: {
                                                    content: content
                                                }
                                            }
                                        });
                                    }
                                }
                            }
                        });
                    }
                }
            },
            map: {
                options: {
                    zoom: 15
                }
            }
        });

    });
    </script>

 
</head>

<body> 
<script type="text/javascript" src="/ServiceP2p/ntps/assets/js/jquery.min.js"></script>
<script type="text/javascript">
 $(document).ready(function() {
		//记住密码功能
		var str = getCookie("loginInfo");
		str = str.substring(0, str.length);
		var username = str.split("#")[0];
		var password = str.split("#")[1];
		//自动填充用户名和密码
		$("#aphone").val(username);
		$("#apassword").val(password);
		if(username!=""|password!=""){
			/* $('#remFlag').val(true); */
			var chk = document.getElementById('remFlag');
			chk.checked =true;
		}
	});

	//获取cookie
	function getCookie(cname) {
		var name = cname + "=";
		var ca = document.cookie.split(';');
		for (var i = 0; i < ca.length; i++) {
			var c = ca[i];
			while (c.charAt(0) == ' ')
				c = c.substring(1);
			if (c.indexOf(name) != -1)
				return c.substring(name.length, c.length);
		}
		return "";
	}

	//记住密码功能
	function remember() {
		var remFlag = $("input[type='checkbox']").is(':checked');
		if (remFlag == true) { //如果选中设置remFlag为1
			//cookie存用户名和密码,回显的是真实的用户名和密码,存在安全问题.
			//var conFlag = confirm("记录密码功能不宜在公共场所(如网吧等)使用,以防密码泄露.您确定要使用此功能吗?");
			if (conFlag) { //确认标志
				$("#remFlag").val("1");
			} else {
				$("input[type='checkbox']").removeAttr('checked');
				$("#remFlag").val("");
			}
		} else { //如果没选中设置remFlag为""
			$("#remFlag").val("");
		}
	}
</script>
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    
    <div class="container">



        <div class="" id="login-wrapper">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div id="logo-login">
                        <h1>亿信终端管理系统
                            <span>v1.3</span>
                        </h1>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="account-box"> 
                        <form role="form" action="../admin/login" method="post">
                            <div class="form-group">
                                <!--a href="#" class="pull-right label-forgot">Forgot email?</a-->
                                <label for="inputUsernameEmail">用户名/手机号码</label>
                                <input type="text" name="aphone" id="aphone" class="form-control">
                            </div>
                            <div class="form-group">
                                <!--a href="#" class="pull-right label-forgot">Forgot password?</a-->
                                <label for="inputPassword">密码</label>
                                <input type="password" name="apassword"  id="apassword" class="form-control">
                            </div>
                            <div class="form-group">
                                <!--a href="#" class="pull-right label-forgot">Forgot password?</a-->
                                <label for="inputPassword"><font color="red">${message }</font></label>
                               
                            </div>
                            <div class="checkbox pull-left">
                                <label>
                                    <input type="checkbox" name="remFlag" id="remFlag">記住用戶名</label>
                            </div>
                            <input type="submit" class="btn btn btn-primary pull-right" value="登录">
                           <!--  <button class="btn btn btn-primary pull-right" type="submit">
                                登 录
                            </button> -->
                        </form>
                        <a class="forgotLnk" href="index.html"></a>
                        
                        <div class="row-block">
	                        <div class="row">
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

 		<p>&nbsp;</p>

    </div>
    <div id="test1" class="gmap3"></div>


</body>

</html>
