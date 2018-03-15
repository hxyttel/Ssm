<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>预约发标</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Event Registration Form Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<!-- //custom-theme -->
<link href="/Finances/statics/front/css/styley.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="/Finances/statics/front/js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- 弹出层美化 -->
		<link rel="stylesheet" href="/Finances/statics/front/css/jquery-ui.css" />
		<script type="text/javascript" src="/Finances/statics/front/js/ui.js" ></script>
		<link rel="stylesheet"  href="/Finances/statics/front/css/style.css" ></link>
		<style type="text/css">
			.box{width: 100%;margin:0rem auto;display: -webkit-box;display: -webkit-flex;display: -ms-flexbox;display: flex;-webkit-flex-wrap: wrap;-ms-flex-wrap: wrap;flex-wrap: wrap;}
			.box-items {-ms-flex-align: center;-webkit-align-items: center;-webkit-box-align: center;align-items: center;}
			.flex-1{display: block;-webkit-box-flex: 1;-webkit-flex: 1;-ms-flex: 1;flex: 1;width: 0;-webkit-flex-basis: 0;-ms-flex-preferred-size: 0;flex-basis: 0;}
			.pwd-control {text-align: center; width: 200px;}
			.pwd-control .item {margin: 0 0.1rem;position: relative;}
			.pwd-control .item.circle:after {content: "";width: 8px;height: 8px;background: #000;border-radius: 50%;position: absolute;top: 50%;left: 50%;margin-top: -4px;margin-left: -4px;}
			.pwd-control .normal input {color: #000;}
			.pwd-control input {display: block;width: inherit;border-radius: 3px;text-align: center;border: 1px solid #c79f62;width: 100%;color: #fff;line-height: 35px}
			.pwd-control input:focus {box-shadow: 0px 0px 20px #c79f62;}
			.pwd-control .box {padding: 0rem;}
		</style>
<script type="text/javascript" src="/Finances/statics/back/static/js/laydate.js"></script>
<!-- font-awesome-icons -->
<!-- //font-awesome-icons -->
</head>
<body >
<!-- banner -->
<div class="center-container" style="color:#444444;  ">
	<div class="main">
		<h1 class="w3layouts_head">请完善发标的基本信息</h1>
			<div class="w3layouts_main_grid">
				<form method="post" id="editForm" class="w3_form_post">
				<div class="w3_agileits_main_grid w3l_main_grid">
						<span class="agileits_grid">
							<label>发标类型</label>
							<select name="fpart">
								<option value="none" selected="" disabled="">请选择</option>
								<option value="爱车贷">爱车贷</option>
								<option value="爱房贷">爱房贷</option>
								<option value="消费基金">消费基金</option>  
								<option value="爱公益">爱公益</option>
							</select>
						</span>
					</div>
					<div class="w3_agileits_main_grid w3l_main_grid">
						<span class="agileits_grid">
							<label>发标名称： </label>
							<input type="text" name="ftitle">
						</span>
					</div>
					<div class="w3_agileits_main_grid w3l_main_grid">
						<span class="agileits_grid">
							<label>发标概要： </label>
							<textarea rows="4" cols="20" type="text" name="fcontent">
							</textarea>
						</span>
					</div>
					<div class="w3_agileits_main_grid w3l_main_grid">
						<span class="agileits_grid">
							<label>发标金额： </label>
							<input type="text" name="fmoney"  onkeyup="value=value.replace(/[^\d]/g,'') " ng-pattern="/[^a-zA-Z]/" >
						</span>
					</div>
					<div class="w3_agileits_main_grid w3l_main_grid">
						<span class="agileits_grid">
							<label>风险措施： </label>
							<input type="text" name="fsecuritymea">
						</span>
					</div>
					<div class="w3_agileits_main_grid w3l_main_grid">
						<span class="agileits_grid">
							<label>投标截止时间： </label>
							<input placeholder="请选择日期" name="fendtime" onClick="laydate({istime: true, format: 'YYYY-MM-DD'})">
							</span>
					</div>
					<div class="w3_agileits_main_grid w3l_main_grid">
						<span class="agileits_grid">
							<label>代表图： </label>
							<input type="file"  name="upfiles" >
							</span>
					</div>
					<div class="w3_agileits_main_grid w3l_main_grid">
						<span class="agileits_grid">
							<label>担保措施： </label>
							<input type="file"  name="upfile" >
							</span>
					</div>
					<div class="w3_agileits_main_grid w3l_main_grid">
						<span class="agileits_grid" id="filecontr">
							<label>详情图片： </label>
							<input type="file" name="upfiles" id="upfile"><span id="tisspan" onclick="addimgs()">添加</span>
							</span>
					</div>
				<div class="w3_main_grid">
					<div class="w3_main_grid_right">
						<input type="button" value="马上预约" onclick="register();">
					</div>
				</div>
			</form>
		</div>
	<!-- Calendar -->
		
			<script src="/Finances/statics/front/js/jquery-ui.js"></script>
				<script>
					$(function() {
						$( "#datepicker" ).datepicker();
					});
				</script>
				<script type="text/javascript">
					function addimgs(){
						$('#tisspan').remove();
						var html = '<input type="file" name="upfile"><span id="tisspan" onclick="addimgs()">添加</span>';
						$("#filecontr").append(html);		
					};
				</script>
				<script type="text/javascript">
				function register() {
			        
			        var formobj =  document.getElementById("editForm");
					var formdata = new FormData(formobj);
					var tt =$("div[class*='checked']").attr("datevalue");
					formdata.append("fmoney",tt);
					$.ajax({
						url:  "${pageContext.request.contextPath }/userFabiao/insertFabiao",
					    type: 'POST',
					    cache: false,
					    data: formdata,
					    processData: false,
					    contentType: false,
					    success:function(data){
					    	//后台返回int类型的数据
		       					if(data>0){
		       						mizhu.toast('预约成功');
		       						window.location.href='http://127.0.0.1:8080/Finances/toindex';
		       					}else{
		       						//新增失败
		       						mizhu.toast('预约失败');
		       					}
		       	          },
		       	          error:function(e){
		       	        	mizhu.toast('预约错误');
		       	          }
					}); 
			    }
				
				</script>
				
	<!-- //Calendar -->
		<div class="w3layouts_copy_right">
			<div class="container">
				<p>© 2018 Event Registration Form. All rights reserved | Design by 亿信金融</p>
			</div>
		</div>
	</div>
</div>
<!-- //footer -->
</body>
</html>