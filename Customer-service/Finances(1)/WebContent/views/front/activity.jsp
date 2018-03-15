<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
    <meta name="keywords" content="最好的理财项目,网贷,互联网金融,网贷平台,网络赚钱项目">
    <meta name="description" content="爱钱帮作为安全合规的网贷平台，积极推动网贷行业规范发展；爱钱帮将继续为中国金融业的创新和发展尽一份力量。网络赚钱项目，最好的理财项目，就在网贷平台爱钱帮。">
    <title>活动专区丨亿信金融 </title>
    <link  rel="Shortcut  Icon"  href="/Finances/statics/other/lco/6.png">
    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-commonNew.css">
    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/m2-main.css">
    <link rel="stylesheet" href="/Finances/statics/front/statics/newcommon/css/m2-common.css">
    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/front.css">
    
    <script type="text/javascript" src="/Finances/statics/front/statics/home/js/jquery.min.js"></script>
    <script type="text/javascript" src="/Finances/statics/front/statics/newcommon/js/common.js"></script>
    <script type="text/javascript" src="/Finances/statics/front/statics/common/js/common.js"></script>
	</head>

<body>
	<!-- 右侧边栏 start -->
	<jsp:include page="include/sidebar.jsp"></jsp:include>
	<!-- 右侧边栏 end -->
    
    <!-- 头部start -->
    <jsp:include page="include/head.jsp"></jsp:include>
    <!-- 头部end -->
    
    <!-- 内容 -->
    <title>活动中心--爱钱帮</title>
    <link rel="stylesheet" href="/Finances/statics/front/statics/home2/css/front.css">
    <script type="text/javascript" src="/Finances/statics/front/statics/common/js/common.js"></script>
    <!--头部end-->
        <div class="m2-actCenMain">
        <div class="m2-actCen-con">
			
            <h2><i></i>活动中心</h2>
         
        </div>
    </div>
    <div class="m2-reportNews-box">  
		    <ul class="m2-reportNews-list">
			   <c:forEach items="${listActivity}" var="activity">
			    <li>
			      <div class="m2-reportNews-listMain">
			         <img class="m2-reportLogo" src="/Finances/statics/front/uploadData/ad/20151229133918775.png" alt="${activity.attitle}">					<a href="${pageContext.request.contextPath}/activityName?atid=${activity.atid}" target="_blank" title="${activity.attitle}">
			             <h3 style="color: #09c;font-size: 16px; line-height: 25px;" >${activity.attitle}</h3></a>
			                <a href="${pageContext.request.contextPath}/activityName?atid=${activity.atid}" target="_blank" title="${activity.attitle}">
			                   <p class="m2-reportNews-listNor">${activity.atcontent}</p></a>
			                  	<p class="m2-reportNews-listLink" ><a href="#" target="_blank" title="${activity.attitle}">显示全部</a></p>
			       </div>
			       <div class="m2-reportNews-listTime">
			                    <p><i></i>${activity.atstarttime}</p>
			       </div>
			     </li>
			    </c:forEach> 
			</ul>
		</div>
		<div class="m2-reportNews-box">  
		    <ul class="m2-reportNews-list">
			   <c:forEach items="${activityName}" var="acname">
			    <li>
			      <div class="m2-reportNews-listMain">
			         <img class="m2-reportLogo" src="/Finances/statics/front/uploadData/ad/20151229133918775.png" alt="${acname.attitle}">					<a href="${pageContext.request.contextPath}/activityName" target="_blank" title="${acname.attitle}">
			             <h3 style="color: #09c;font-size: 16px; line-height: 25px;" >${acname.attitle}</h3></a>
			                <a href="${pageContext.request.contextPath}/activityName" target="_blank" title="${acname.attitle}">
			                   <p class="m2-reportNews-listNor">${acname.atcontent}</p></a>
			                  	<p class="m2-reportNews-listLink" ><a href="dashiji_show.html#16027.html" target="_blank" title="${acname.attitle}">显示全部</a></p>
			       </div>
			       <div class="m2-reportNews-listTime">
			                    <p><i></i>${activity.atstarttime}</p>
			       </div>
			     </li>
			    </c:forEach> 
			</ul>
		</div>
    </body>
    <script>
        var index = 0;
        $('#loadmore').click(function () {
            $.ajax({
                url: '${pageContext.request.contextPath }/listActivity',
                type: 'POST',
                data: {
                    index: index
                },
                success: function (data) {
                    var obj = eval('(' + data + ')');
                    for (var i in obj['listActivity']) {
                        var li = '<li class="m2-actItem"><i class="m2-actItem-corner"></i>';
                        li += '<i class="m2-actItem-circle"></i>';
                        li += '<h3>' + obj['list'][i]['cate'] + '</h3>';
                        li += '<div class="m2-actBox">';
                        li += '<h4>' + obj['list'][i]['title'] + '</h4>';
                        li += '<div class="m2-actBox-con">';
                        if (obj['list'][i]['endtime']) {
                            li += '<p class="m2-actBox-time">活动时间：' + obj['list'][i]['starttime'] + '——' + obj['list'][i]['endtime'] + '</p>';
                        } else {
                            li += '<p class="m2-actBox-time">活动时间：' + obj['list'][i]['starttime'] + '——长期</p>';
                        }
                        if (obj['list'][i]['link_url']) {
                            li += '<a href="' + obj['list'][i]['link_url'] + '" target="_blank"><img src="' + obj['list'][i]['img_type1'][0]['img'] + '" alt=""></a>';
                        } else {
                            li += '<a><img src="' + obj['list'][i]['img_type1'][0]['img'] + '" alt=""></a>';
                        }
                        li += '<p class="m2-actBox-det">' + obj['list'][i]['content'] + '</p>';
                        li += '</div></div></li>';
                        $('#activityul').append(li);
                    }
                    index = obj['index'];
                    if (obj['pages'] == obj['index']) {
                        $('#loadmore').unbind('click');
                        $('#loadmore').css('cursor','default');
                        $('#loadmoretext').text('敬请期待');
                        $('#loadmoretext').css('color', '#898989');
                    }
                }
            });
        });
        $(document).ready(function () {
            $('#loadmore').click();
        });
    </script>
   
</body>
</html>