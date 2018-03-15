/**
 * url字符串解析
 * @param str
 * @returns {{}}
 */
function parseQueryString (str) {
	var res = {}
	var q = str.indexOf('#') !== -1 ? str.match(/(\S+)(?=#)/g)[0] : str;
	q = q.indexOf('?') !== -1 ? q.slice(q.indexOf('?') + 1) : '';
	if (!q) return res;
	var arr = q.split('&')
	arr.forEach(function(item) {
		var eqIdx = item.indexOf('=');
		if (eqIdx !== -1) {
			var k = item.slice(0, eqIdx);
			var v = item.slice(eqIdx+1);
			res[k] = v;
		} else{
			res[item] = null;
		}
	})
	return res
}

//cookie tool
var cookieJar = {
	set: function (name, value, days) {
		/* TODO */
		var cookieText = encodeURIComponent(name) + '=' + encodeURIComponent(value)
		if (days) {
			var ss = new Date().getTime() + parseInt(days) * 24 * 60 * 60 * 1000
			cookieText += '; expires=' + new Date(ss).toGMTString()
		}
		document.cookie = cookieText
	},
	get: function (name) {
		/* TODO */
		var cookieName = encodeURIComponent(name) + '='
		var cookieStart = document.cookie.indexOf(cookieName)
		var cookieValue = null
		if (cookieStart > -1) {
			var cookieEnd = document.cookie.indexOf(';', cookieStart)
			if (cookieEnd == -1) {
				cookieEnd = document.cookie.length
			}
			cookieValue = decodeURIComponent(document.cookie.substring(cookieStart + cookieName.length, cookieEnd))
		}
		return cookieValue
	},
	remove: function (name) {
		/* TODO */
		cookieJar.set(name, '')
	}
};

//左侧菜单随动
	$(function() {
		        fitBottom();
		      //左侧菜单栏随动
				$(window).scroll(function(){
				if ($(window).scrollTop()>150){
				$(".m2-userCentermain-aside").stop().animate({top:"15px"},300);
		}else {
				if($(window).scrollTop()<150){
				$(".m2-userCentermain-aside").stop().animate({top:"150px"},50);
			}else{
				$("#back-to-top").css('top','150px');
				}
				}
			});
			//table详情展开底部背景随动
	hoverHeight();

	var queryObj = parseQueryString(location.href);
	if (queryObj['userfrom']) {
		cookieJar.set('userfrom', queryObj['userfrom'], 1);
	}
	//当前菜单
	var index = $('.m2-commonNavul-fir-new').attr('data_page');
	var $a = $('#' + index);
	var $li = $a.parent();
	$a.css('color','#fa5b2b');
	// 我的账户
	myAccountAccordion();
		});
     
	function postData(url, dataPost, callBack) {
	    $.ajax({
	        url: url,
	        data: dataPost,
	        timeout: 5000,
	        cache: false,
	        type: "post",
	        dataType: "json",
	        success: function(d, s, r) {
	            if (d) {
	                callBack(d);
	            } else {
	               
	            }
	        }
	    });
	}
	function hideDialog(){
		$('.m2-userCoin-confirm').hide();
		$('.m2-userCentercommon-bg').hide();
	}
	function showDialog(title,msg){
		$('.m2-userCentercommon-bg').show();
		var dialog='<span class="m2-userCoin-confirmClose" onclick="hideDialog()"></span>'
			+'<p class="m2-userCoin-confirmTit">'+title+'</p>'
			+'<p class="m2-userCoin-confirmTip">'+msg+'</p>'
			+'<p class="m2-userCoin-confirmBtn"><a class="m2-user-confirmBtnsure" onclick="hideDialog()">确定</a>';
		$('.m2-userCoin-confirm').html(dialog);
		$('.m2-userCoin-confirm').show();
	}
	function dialog(msg,status,func,args,callback){
		var dom = '<span class="m2-userCentercommon-confirmClose" onclick="closeDialog()"></span>';
		if(status == 1){
			dom += '<p class="m2-userCommon-confirmSuc"><i></i>';
		}else{
			dom += '<p class="m2-userCommon-confirmWar"><i></i>';
		}
		dom += msg+'</p>';
		if(func){
			dom += '<p class="m2-userCommon-confirmBtn"><a class="m2-user-confirmBtn" onclick="closeDialog();'+func+'('+args+')">确&nbsp;定</a></p>';
		}
		$('.m2-userCentercommon-confirm').html(dom);
		$('.m2-userCentercommon-confirm').show();
		$('.m2-userCentercommon-bg').show();
	}
	function closeDialog(){
		$('.m2-userCentercommon-confirm').hide();
		$('.m2-userCentercommon-bg').hide();
	}
	function getParam(param) {
	   //取url参数
	   var url = location.search;
	   var theRequest = new Object();
	   if (url.indexOf("?") != -1) {
	      var str = url.substr(1);
	      strs = str.split("&");
	      for(var i = 0; i < strs.length; i++) {
	         theRequest[strs[i].split("=")[0]] = unescape(strs[i].split("=")[1]);
	      }
	   }
	   return theRequest[param];
	}
	//窗口高度自适应函数		
	function fitBottom(){	 
			$(function(){
				var minHeight =$(document).height()-271; //最小高度为 窗口高度减去header高度和底内边距
				if (minHeight>$('.m2-userCentermain').height()) {
				$('.m2-userCentermain').css('min-height',minHeight);
			}
			else{
				return false;
			}
		});
	}
	//table详情展开底部背景随动
	function hoverHeight(){
	    var docHeight =$(document).height();   //doc现有高度
	    var docHeightnew =$(document).height();    //doc改变后的高度
	    var conHeigh=$('.m2-userCentermain').height();   //有背景的容器高度
	    var conHeightadd=$(document).height()-$('.m2-userCentermain').height();   //doc与容器高度差
	
	  $('.m2-userInevst-proReview,.m2-userInevst-linkShow').mouseenter(function(){
	
	    docHeightnew = $(document).height();
	    if (docHeightnew>docHeight) {
	      $('.m2-userCentermain').css("min-height",docHeightnew-conHeightadd+140);
	    };
	  });
	
	  $('.m2-userInevst-proReview,.m2-userInevst-linkShow').mouseleave(function(){
	    $('.m2-userCentermain').css("min-height",conHeigh);
	  });
	}
	//检查用户名的合法性
	function isLegal(str){
		if(/[!,@,#,$,%,^,&,*,?,~,\s+]/gi.test(str)) return false;
		if(/[\u4e00-\u9fa5]/gi.test(str)) return false;
		return true;
	}
	//根据id获取表单元素值
	function makevar(v) {
	    var d = {};
	    for (i in v) {
	        var id = v[i];
	        d[id] = jQuery("#" + id).val();
	        if (!d[id])
	            d[id] = jQuery("input[name='" + id + "']:checked").val();
	    }
	    return d;
	}
	// 判断身份合法
	 function isIdCard(cardid) {
	     // 身份证正则表达式(18位)
	     var isIdCard2 = /^[1-9]\d{5}(19\d{2}|[2-9]\d{3})((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])(\d{4}|\d{3}X)$/i;
	     var stard = "10X98765432"; // 最后一位身份证的号码
	     var first = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2]; // 1-17系数
	     var sum = 0;
	     if (!isIdCard2.test(cardid)) {
	         return false;
	     }
	     var year = cardid.substr(6, 4);
	     var month = cardid.substr(10, 2);
	     var day = cardid.substr(12, 2);
	     var birthday = cardid.substr(6, 8);
	     if (birthday != dateToString(new Date(year + '/' + month + '/' + day))) { // 校验日期是否合法
	         return false;
	     }
	     for (var i = 0; i < cardid.length - 1; i++) {
	         sum += cardid[i] * first[i];
	     }
	     var result = sum % 11;
	     var last = stard[result]; // 计算出来的最后一位身份证号码
	     if (cardid[cardid.length - 1].toUpperCase() == last) {
	         return true;
	     } else {
	         return false;
	     }
	 }
	 // 判断输入的是否是数字
	    function onlyNum() {
	        if(!(event.keyCode==46)&&!(event.keyCode==8)&&!(event.keyCode==37)&&!(event.keyCode==39))
	        if(!((event.keyCode>=48&&event.keyCode<=57)||(event.keyCode>=96&&event.keyCode<=105)))
	        event.returnValue=false;
	  }
		// 判断身份证号是否正确
	var vcity={ 11:"北京",12:"天津",13:"河北",14:"山西",15:"内蒙古",  
	            21:"辽宁",22:"吉林",23:"黑龙江",31:"上海",32:"江苏",  
	            33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",41:"河南",  
	            42:"湖北",43:"湖南",44:"广东",45:"广西",46:"海南",50:"重庆",  
	            51:"四川",52:"贵州",53:"云南",54:"西藏",61:"陕西",62:"甘肃",  
	            63:"青海",64:"宁夏",65:"新疆",71:"台湾",81:"香港",82:"澳门",91:"国外"  
	           };  
	  
	function checkCard(cardid) {
	    var card = cardid;  
	    //是否为空  
	    if(card === '')  
	    {  
	    	$('#idcard').next('.m2-regist-errMsg').html('身份证号不能为空');  
	      
	        return false;  
	    }  
	    //校验长度，类型  
	    if(isCardNo(card) === false)  
	    {  
	    	$('#idcard').next('.m2-regist-errMsg').html('您输入的身份证号码不正确');  
	        
	        return false;  
	    }  
	    //检查省份  
	    if(checkProvince(card) === false)  
	    {  
	    	$('#idcard').next('.m2-regist-errMsg').html('您输入的身份证号码不正确');  
	        
	        return false;  
	    }  
	    //校验生日  
	    if(checkBirthday(card) === false)  
	    {  
	    	$('#idcard').next('.m2-regist-errMsg').html('您输入的身份证号码生日不正确');  
	        
	        return false;  
	    }  
	    //检验位的检测  
	    if(checkParity(card) === false)  
	    {  
	    	$('#idcard').next('.m2-regist-errMsg').html('您的身份证校验位不正确');  
	       
	        return false;  
	    }  
	    $('#idcard').next('.m2-regist-errMsg').html('');  
	    return true;  
	};  
	//检查号码是否符合规范，包括长度，类型  
	isCardNo = function(card)  
	{  
	    //身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X  
	    var reg = /(^\d{15}$)|(^\d{17}(\d|X)$)/;  
	    if(reg.test(card) === false)  
	    {  
	        return false;  
	    }  
	  
	    return true;  
	};  
	  
	//取身份证前两位,校验省份  
	checkProvince = function(card)  
	{  
	    var province = card.substr(0,2);  
	    if(vcity[province] == undefined)  
	    {  
	        return false;  
	    }  
	    return true;  
	};  
	  
	//检查生日是否正确  
	checkBirthday = function(card)  
	{  
	    var len = card.length;  
	    //身份证15位时，次序为省（3位）市（3位）年（2位）月（2位）日（2位）校验位（3位），皆为数字  
	    if(len == '15')  
	    {  
	        var re_fifteen = /^(\d{6})(\d{2})(\d{2})(\d{2})(\d{3})$/;   
	        var arr_data = card.match(re_fifteen);  
	        var year = arr_data[2];  
	        var month = arr_data[3];  
	        var day = arr_data[4];  
	        var birthday = new Date('19'+year+'/'+month+'/'+day);  
	        return verifyBirthday('19'+year,month,day,birthday);  
	    }  
	    //身份证18位时，次序为省（3位）市（3位）年（4位）月（2位）日（2位）校验位（4位），校验位末尾可能为X  
	    if(len == '18')  
	    {  
	        var re_eighteen = /^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/;  
	        var arr_data = card.match(re_eighteen);  
	        var year = arr_data[2];  
	        var month = arr_data[3];  
	        var day = arr_data[4];  
	        var birthday = new Date(year+'/'+month+'/'+day);  
	        return verifyBirthday(year,month,day,birthday);  
	    }  
	    return false;  
	};  
	  
	//校验日期  
	verifyBirthday = function(year,month,day,birthday)  
	{  
	    var now = new Date();  
	    var now_year = now.getFullYear();  
	    //年月日是否合理  
	    if(birthday.getFullYear() == year && (birthday.getMonth() + 1) == month && birthday.getDate() == day)  
	    {  
	        //判断年份的范围（3岁到100岁之间)  
	        var time = now_year - year;  
	        if(time >= 3 && time <= 100)  
	        {  
	            return true;  
	        }  
	        return false;  
	    }  
	    return false;  
	};  
	  
	//校验位的检测  
	checkParity = function(card)  
	{  
	    //15位转18位  
	    card = changeFivteenToEighteen(card);  
	    var len = card.length;  
	    if(len == '18')  
	    {  
	        var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);   
	        var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');   
	        var cardTemp = 0, i, valnum;   
	        for(i = 0; i < 17; i ++)   
	        {   
	            cardTemp += card.substr(i, 1) * arrInt[i];   
	        }   
	        valnum = arrCh[cardTemp % 11];   
	        if (valnum == card.substr(17, 1))   
	        {  
	            return true;  
	        }  
	        return false;  
	    }  
	    return false;  
	};  
	  
	//15位转18位身份证号  
	changeFivteenToEighteen = function(card)  
	{  
	    if(card.length == '15')  
	    {  
	        var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);   
	        var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');   
	        var cardTemp = 0, i;     
	        card = card.substr(0, 6) + '19' + card.substr(6, card.length - 6);  
	        for(i = 0; i < 17; i ++)   
	        {   
	            cardTemp += card.substr(i, 1) * arrInt[i];   
	        }   
	        card += arrCh[cardTemp % 11];   
	        return card;  
	    }  
	    return card;  
	}; 
	
	/**
	* 我的账户 展开收缩
	*/
	function myAccountAccordion() {
	var $myAcc  = $('#threepage');
	var $accIcon = $myAcc.children('.myacc-icon');
	var $accSpan = $myAcc.children('.myacc-txt');
	var $myaccPanel = $('#myaccPanel');
	var timer;
	$myAcc.on('mouseenter mouseleave', function (e) {
		var type = e.type;
		if (type === 'mouseenter') {
			$(this).addClass('myacc-hover');
			$accIcon.addClass('myacc-icon-hover');
			$accSpan.addClass('myacc-txt-hover');
			$myaccPanel.show();
		} else {
			timer = setTimeout(function () {
				$myAcc.removeClass('myacc-hover');
				$accIcon.removeClass('myacc-icon-hover');
				$accSpan.removeClass('myacc-txt-hover');
				$myaccPanel.hide();
			},200);
		}
	});
	$myaccPanel.on('mouseenter mouseleave', function (e) {
		var type = e.type;
		if (type === 'mouseenter') {
			clearTimeout(timer);
		} else {
			$myAcc.removeClass('myacc-hover');
			$accIcon.removeClass('myacc-icon-hover');
			$accSpan.removeClass('myacc-txt-hover');
			$(this).hide();
		}
	});
	}
	
	
	