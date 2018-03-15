    var timeLeft = Number("-87812");
		    timeLeft = timeLeft > 0 ? timeLeft : 0; //剩余时间
		    function timeDown() {
		        if (timeLeft < 86400 & timeLeft > 0) {
		            var minLeft1 = Number(parseInt(timeLeft % 3600 / 60 / 10)).toString();//分钟第一位
		            var minLeft2 = Number(parseInt(timeLeft % 3600 / 60 % 10)).toString();//分钟数第二位
		            var secLeft1 = Number(parseInt(timeLeft % 3600 % 60 / 10)).toString(); //秒第一位
		            var secLeft2 = Number(parseInt(timeLeft % 10)).toString();//秒第二位
		            $('.m2-detDay').hide(); //隐藏天
		            $('.m2-detSec').show(); //显示秒
		            $('.m2-detHou').children('i').html(parseInt(timeLeft / 3600)); //小时
		            $('.m2-detMin').children('i').html(minLeft1 + minLeft2); //分钟
		            $('.m2-detSec').children('i').html(secLeft1 + secLeft2); //秒
		            timeLeft--;
		            setTimeout("timeDown()", 1000); //设置1秒以后执行一次本函数
		        }
		        else if (timeLeft >= 86400) {
		            var houLeft1 = Number(parseInt(timeLeft % 86400 / 3600 / 10)).toString();//小时第一位
		            var houLeft2 = Number(parseInt(timeLeft % 86400 / 3600 % 10)).toString();//小时数第二位
		            var minLeft1 = Number(parseInt(timeLeft % 86400 % 3600 / 60 / 10)).toString();//分钟第一位
		            var minLeft2 = Number(parseInt(timeLeft % 86400 % 3600 / 60 % 10)).toString();//分钟数第二位
		            $('.m2-detDay').show(); //隐藏天
		            $('.m2-detSec').hide(); //显示秒
		            $('.m2-detDay').children('i').html(parseInt(timeLeft / 86400)); //天
		            $('.m2-detHou').children('i').html(houLeft1 + houLeft2); //小时
		            $('.m2-detMin').children('i').html(minLeft1 + minLeft2); //分钟
		            timeLeft--;
		            setTimeout("timeDown()", 1000); //设置1秒以后执行一次本函数
		        }
		        else if (timeLeft == 0) {
		            $('.m2-detDay').hide(); //隐藏天
		            $('.m2-detSec').show(); //显示秒
		            $('.m2-detHou').children('i').html(0); //小时
		            $('.m2-detMin').children('i').html('00'); //分钟
		            $('.m2-detSec').children('i').html('00'); //秒
		            $('.m2-detItemtim').hide();
		            $('.m2-detItemrig').show();
		        }
		    }
		    timeDown();