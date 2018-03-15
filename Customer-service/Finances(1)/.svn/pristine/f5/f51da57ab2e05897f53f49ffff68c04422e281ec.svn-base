   //提示框
		    function showMsg(text) {
		        $('#dialog-info-div').show();
		        $('#dialog-info-text').text(text);
		    }
		    //红包加息券弹窗
		    $(function () {
		
		        $('.m2-detHidesel-listPri').click(function () {
		            if ($(this).children('span').hasClass('m2-detHidecheck-unsel')) {
		                $(this).children('span').addClass('m2-detHidecheck-sel').removeClass('m2-detHidecheck-unsel');
		                $(this).siblings().children('span').addClass('m2-detHidecheck-unsel').removeClass('m2-detHidecheck-sel');
		                $('.m2-detHidecon-pri').show();//弹出层box显示隐藏
		                $('.m2-detHidecon-red').hide();
		                $('.m2-detHidecon-add').hide();
		            }
		        });
		
		        $('.m2-detHidesel-listRed').click(function () {
		            if ($(this).children('span').hasClass('m2-detHidecheck-unsel')) {
		                $(this).children('span').addClass('m2-detHidecheck-sel').removeClass('m2-detHidecheck-unsel');
		                $(this).siblings().children('span').addClass('m2-detHidecheck-unsel').removeClass('m2-detHidecheck-sel');
		                $('.m2-detHidecon-pri').hide();//弹出层box显示隐藏
		                $('.m2-detHidecon-red').show();
		                $('.m2-detHidecon-add').hide();
		            }
		        });
		
		        $('.m2-detHidesel-listAdd').click(function () {
		            if ($(this).children('span').hasClass('m2-detHidecheck-unsel')) {
		                $(this).children('span').addClass('m2-detHidecheck-sel').removeClass('m2-detHidecheck-unsel');
		                $(this).siblings().children('span').addClass('m2-detHidecheck-unsel').removeClass('m2-detHidecheck-sel');
		                $('.m2-detHidecon-pri').hide();//弹出层box显示隐藏
		                $('.m2-detHidecon-red').hide();
		                $('.m2-detHidecon-add').show();
		            }
		        });
		
		        //关闭红包奖励弹窗
		        $('.m2-detHide-submit,.m2-detHide-close').click(function () {
		            $('.m2-detHide').hide();
		            $('.m2-tranBg').hide();
		        });
		
		        //close
		        $('.m2-userCentercommon-confirmClose,.m2-user-confirmBtn').click(function(){
		            $('#dialog-info-div').hide();
		            $('#dialog-info-text').text("");
		        });
		
		        //打开红包奖励弹窗
		        $('#m2-detRigjust-lef,.m2-detRigjust-btn').click(function () {
		
		            var uid = "305497";
		            if(uid == 0){
		                showMsg('您还没有登录，请先登录！');
		            } else if ($('#invest_money').val() == '' || $('#invest_money').val() == 0) {
		                showMsg('请输入投资金额！');
		            } else {
		                $('.m2-detHide').show();
		                $('.m2-tranBg').show();
		                $('.m2-detHide').css('top', $(document).scrollTop() + 131)
		            }
		
		        });
		
		    });