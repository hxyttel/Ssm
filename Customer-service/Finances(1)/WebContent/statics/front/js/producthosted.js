  //开通托管部分
		    function showOpenDialog() {
		
		        var html = '';
		        investValidation(invest_money, true);
		        html += '您投资金额为<span style="color:#f48a3f;">' + invest_money + '</span>元';
		        if (reward_money > 0) {
		            html += '，投资使用奖励金<span style="color:#f48a3f;">' + reward_money + '</span>元';
		        } else if (reward_type == 1) {
		            html += '，投资使用<span style="color:#f48a3f;">' + reward_redpacket_money + '</span>元红包';
		        } else if (reward_type == 2) {
		            html += '，投资使用<span style="color:#f48a3f;">' + reward_interest_rate + '%</span>加息券';
		        }
		
		        html += '，您还需支付<span style="color:#f48a3f;">' + money_need + '</span>元。';
		        $('#openaccounttext').html(html);
		        $('.m2-tranBg,.m2-truPop').show();
		    }
		
		    //开户*********************与开户页面一致
		    function checkUserName() {
		        if ($('#realname').val() == '') {
		            $('#realname').next('.m2-regist-errMsg').html('真实姓名不能为空!');
		            return false;
		        }
		        $('#realname').next('.m2-regist-errMsg').html('');
		    }
		
		    function checkIdNo() {
		        var bankNum = $('#idcard').val();
		        if (bankNum == '') {
		            $('#idcard').next('.m2-regist-errMsg').html('身份证号不能为空!');
		            return false;
		        }
		        if (!checkCard(bankNum)) {
		            $('#idcard').next('.m2-regist-errMsg').next('span').html('身份证格式不合法!');
		            return false;
		        }
		        $('#idcard').next('.m2-regist-errMsg').next('span').html('');
		    }
		
		    function checkBankCard() {
		        var bankcard = $('#bankcardid').val();
		        if (bankcard == '') {
		            $('#bankcardid').next('.m2-regist-errMsgcard').children('span').html('银行卡不能为空!');
		            return false;
		        }
		        //        $('#bankcardid').next('.m2-regist-errMsgcard').children('span').html('');
		    }
		    $(function () {
		        $('#realname').blur(function () {
		            checkUserName();
		        });
		        $('#idcard').blur(function () {
		            var bankNum = $('#idcard').val();
		            checkCard(bankNum);
		        });
		        $('#bankcardid').blur(function () {
		            checkBankCard();
		            if ($('#bankcardid').val().length > 5) {
		                getCardInfo();
		            }
		        });
		        $("#openbank").click(function () {
		            checkUserName();
		            checkIdNo();
		            checkBankCard();
		            var canSubmit = true;
		            var p = makevar(['realname', 'bankcardid', 'idcard']);
		            p['user_phone'] = "13737301354";
		            if (($('#realname').val() == '') || ($('#bankcardid').val() == '') || ($('#idcard').val() == '')) {
		                canSubmit = false;
		            }
		
		            $(".m2-openbank-card").each(function () {
		                if ($(this).html().length > 0) {
		                    canSubmit = false;
		                }
		            });
		
		            //            if ($('#bankcardid').next('.m2-regist-errMsgcard').children('span').html().length > 0) {
		            if ($('#bankcardid').val() == '') {
		                canSubmit = false;
		            }
		            if (!$("#service").is(":checked")) {
		                //                showInfoDialog("必须先同意服务协议!", 0);
		                canSubmit = false;
		            }
		            if (canSubmit !== true)
		                return false;
		
		            if (!p['realname']) {
		                p['realname'] = real_name;
		            }
		            if (!p['idcard']) {
		                p['idcard'] = id_no;
		            }
		            if (cardnbr && !cardbind) {
		                bondcard();
		            } else {
		                $.ajax({
		                    url: "/home-register-openbankactive",
		                    data: p,
		                    type: "POST",
		                    dataType: 'json',
		                    success: function (data) {
		                        if (data.status == 1) {
		                            //实名认证成功
		                            rechargeInvest();
		                        } else {
		                            $('#bankcardid').next('.m2-regist-errMsgcard').children('span').html(data.info);
		                        }
		                    }
		                });
		            }
		        });
		        $('.m2-reg-voice').click(function () {
		            $('.m2-loginBg').show();
		            $('.m2-login-voice').show();
		            $('.m2-regTel-det').html('秒后重新获取');
		            tim_Down();
		        });
		        $('.m2-logVoi-sur,.m2-logVoi-can').click(function () {
		            $('.m2-loginBg').hide();
		            $('.m2-login-voice').hide();
		        });
		        $('.m2-regTeltips').click(function () {
		
		            if ($(this).hasClass('m2-regTel-step1')) {
		                $(this).addClass('m2-regTel-step2').removeClass('m2-regTel-step1');
		                $('.m2-regTel-det').html('秒后重新获取');
		                $('.m2-regTel-sec').show().html('60');
		                tim_Down();
		            }
		
		        });
		    });
		    //********************************开户结束
		
		    var send_flag = true;
		    var show_flag = true;
		    var card_no;
		
		    $('#bankcardid').keyup(function () {
		
		        var tcard_no = $('#bankcardid').val();
		        if (tcard_no.length < 6) {
		            $('#bankcardid').next('.m2-regist-errMsgcard').children('span').html('');
		            show_flag = false;
		            return;
		        } else if (card_no) {
		            if (tcard_no.substr(0, 6) == card_no.substr(0, 6)) {
		                return;
		            } else {
		                show_flag = false;
		            }
		        }
		        getCardInfo();
		    });
		
		    //卡充值限额
		    function getCardInfo() {
		
		        if (send_flag) {
		            card_no = $('#bankcardid').val();
		            send_flag = false;
		            show_flag = true;
		            $.ajax({
		                url: '/cupdata-card-getCardInfo',
		                data: {
		                    card: card_no
		                },
		                success: function (data) {
		                    send_flag = true;
		                    if (show_flag) {
		                        var obj = eval('(' + data + ')');
		                        if (obj['day_limit'] >= 500000 && obj['single_limit'] >= 500000) {
		                            $('#bankcardid').next('.m2-regist-errMsgcard').children('span').html('');
		                        } else if (obj['day_limit'] > 0 && obj['single_limit'] >= 0) {
		                            $('#bankcardid').next('.m2-regist-errMsgcard').children('span').html(obj['inst_name'] + '充值限额：单笔'
		                            + (obj['single_limit'] / 10000) + '万，单日' + (obj['day_limit'] / 10000) + '万');
		                        } else {
		                            $('#bankcardid').next('.m2-regist-errMsgcard').children('span').html('您的银行卡不支持充值，但可用于提现操作。');
		                        }
		                    }
		                }
		            });
		        }
		    }
		
		    //绑卡
		    function bondcard() {
		
		        $.ajax({
		            url: '/cupdata-card-changeCard',
		            data: {
		                card: card_no
		            },
		            success: function (data) {
		                var obj = eval('(' + data + ')');
		                if (obj === null) {
		                    $('#bankcardid').next('.m2-regist-errMsgcard').children('span').html('绑卡失败');
		                    return;
		                }
		                if (obj['success'] == 1) {
		                    $('#bankcardid').next('.m2-regist-errMsgcard').children('span').html('绑卡完成');
		                    cardbind = card_no;
		                    if (money_need > 0) {
		                        rechargeInvest();
		                    } else {
		                        $('#invest_now').click();
		                    }
		                } else {
		                    $('#bankcardid').next('.m2-regist-errMsgcard').children('span').html('绑卡失败：' + obj['iqbresult']['promptInfo']);
		                }
		            }
		        });
		    }
		
		    //充值投资
		    function rechargeInvest() {
		
		        if (money_need > 0) {
		            /* $('#charge_amount').val(money_need);
		             $('#charge_invest_num').val(Math.floor(invest_money / invest_limit));
		             $('#charge_reward_money').val(reward_money);
		             $('#charge_reward_id').val(reward_id);
		             //取消2016年1月1号新用户充值去网银、老用户充值去快捷
		             //if (regtime > 1451577600){
		             //$('#charge_invest_form_newuser').submit();
		             //}else{
		             $('#charge_invest_form').submit();
		             //} */
		            window.location.href="	#";
		        } else {
		            $('.m2-tranBg,.m2-truPop').hide();
		        }
		    }
		
		    //加
		    function calPlus(num1, num2) {
		        var sq1, sq2, m;
		        try {
		            sq1 = num1.toString().split(".")[1].length;
		        } catch (e) {
		            sq1 = 0;
		        }
		        try {
		            sq2 = num2.toString().split(".")[1].length;
		        } catch (e) {
		            sq2 = 0;
		        }
		        m = Math.pow(10, Math.max(sq1, sq2));
		        return Math.round((num1 * m + num2 * m) / m * 100) / 100;
		    }
		
		    //减
		    function calMinus(num1, num2) {
		        var sq1, sq2, m;
		        try {
		            sq1 = num1.toString().split(".")[1].length;
		        } catch (e) {
		            sq1 = 0;
		        }
		        try {
		            sq2 = num2.toString().split(".")[1].length;
		        } catch (e) {
		            sq2 = 0;
		        }
		        m = Math.pow(10, Math.max(sq1, sq2));
		        return Math.round((num1 * m - num2 * m) / m * 100) / 100;
		    }
		
		    //活动加息
		    $(".huodongjiaxi").mouseover(function(){
		        $(this).find(".jiaxishow").show();
		    })
		    $(".huodongjiaxi").mouseout(function(){
		        $(this).find(".jiaxishow").hide();
		    })