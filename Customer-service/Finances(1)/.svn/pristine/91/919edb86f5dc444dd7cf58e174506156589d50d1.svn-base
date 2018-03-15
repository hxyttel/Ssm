 //奖励金使用限制
		    var reward_money_limit = 10000;
		    //投资标id
		    var borrow_id = 'moxOeTwTZaOw8TY79g';
		    //最小投资额
		    var invest_limit = Number("100");
		    invest_limit = invest_limit > 0 ? invest_limit : 100;
		    //最小投资份数
		    var invest_limit_num = Number("1");
		    //投资金额
		    var invest_money = 0;
		    //还需金额
		    var money_need = 0;
		    //使用奖励id
		    var reward_id = 0;
		    //使用奖励类型，1红包，2加息券
		    var reward_type = 0;
		    //使用奖励金
		    var reward_money = 0;
		    //项目利率
		    var interest_rate = Number("9");
		    //加息券利率
		    var reward_interest_rate = 0;
		    //使用红包金额
		    var reward_redpacket_money = 0;
		    //红包加息券使用条件
		    var reward_condition = 0;
		    //徽商账户余额
		    var account_money = Number("0");
		    //账户奖励金余额
		    var account_reward = Number("0");
		    //已投资金额
		    var have_invest = Number("");
		    //剩余投资天数
		    var days = Number("26");
		    //剩余可投资金额
		    var left_money = Number($('#left_money').text().replace(/元/g, '').replace(/,/g, ''));
		    //邀请码
		    var invite_code = 0;
		    //标分类
		    var borrow_catalog = Number("5");
		    //输入的投资金额
		    var input_invest_money = 0;
		    //电子账号
		    var cardnbr = "";
		    //真实姓名
		    var real_name = "";
		    //身份证号
		    var id_no = "";
		    //电话号码
		    var phone = "13737301354";
		    // 绑定卡
		    var cardbind = "";
		    //用户注册时间、用于区分新老用户（分割点2016年1月1号）
		    var regtime = Number("1473038992");
		    //用户id
		    var uid = '305497';
		    //新手标标志
		    var borrow_flag=1;
		    //最大购买份数
		    var borrow_max=0;
		
		    var setword_status="0";//是否设置投资密码 1 是 0 否
		    //================================
		    //主界面的投资输入框
		    $('#invest_money').keyup(function () {
		        var invest = $('#invest_money').val();
		        investValidation(invest);
		    });
		    //收益计算器中的投资输入框
		    $('#invest_money1').keyup(function () {
		        var invest = $('#invest_money1').val();
		        investValidation(invest);
		    });
		    //投资金额处理
		    function investValidation(invest, flag) {
		        if (!isNaN(invest)) {
		            var im = Number(invest);
		            if (left_money > 0 && im > left_money) {
		                im = left_money;
		            }
		            input_invest_money = im;
		            if (flag) {
		                im = im < invest_limit * invest_limit_num ? invest_limit * invest_limit_num : Math.floor(im / invest_limit) * invest_limit;
		            }
		            if(borrow_flag==1&&borrow_max>0&&im>borrow_max*invest_limit){
		                im=borrow_max*invest_limit;
		            }
		            invest_money = im;
		            if (reward_id > 0 && reward_condition > invest_money) {
		                cancelReward();
		            } else if (reward_money > 0 && invest_money + have_invest < reward_money_limit) {
		                cancelReward();
		            } else if (reward_money > 0 && reward_money > invest_money) {
		                rewardMoney(invest_money);
		            }
		            calMoneyNeed();
		        }
		        investSync();
		    }
		    //投资数据界面显示同步
		    function investSync() {
		        $('#invest_money').val(invest_money);
		        $('#invest_money1').val(invest_money);
		        $('#invest_money2').html(invest_money + '元');
		        $('#invest_money3').html(invest_money + '元');
		        var otitm = Math.round(days * interest_rate * invest_money / 365) / 100;
		        $('#interest_money').text(otitm + '元');
		        interestSync();
		        $('#qb_coin').text(Math.round(invest_money * days / 30000) + '个');
		        var hongbao = 0;
		        var jiaxiquan = 0;
		        var next=0;
		        var nextmoney=0;
		        var hbcount=0;
		        $('.reward-item').each(function () {
		            if (invest_money >= Number($(this).data('condition'))) {
		                $(this).show();
		                if ($(this).data('rewardtype') == 1) {
		                    hongbao = Number($(this).data('rewardval')) > Number(hongbao) ? $(this).data('rewardval') : hongbao;
		                } else {
		                    jiaxiquan = Number($(this).data('rewardval')) > Number(jiaxiquan) ? $(this).data('rewardval') : jiaxiquan;
		                }
		            } else {
		                nextnew=Number($(this).data('condition'))-invest_money;
		                if(next==0){
		                    next=nextnew;
		                    nextmoney=Number($(this).data('rewardval'));
		                }
		                if(nextnew<next){
		                    next=nextnew;
		                    nextmoney=Number($(this).data('rewardval'));
		                }
		                $(this).hide();
		
		            }
		        });
		        if (account_reward || hongbao > 0 || jiaxiquan > 0) {
		            var t = '&nbsp;您有';
		            if (account_reward > 0) {
		                t += account_reward + '元奖励金 ';
		            }
		            if (hongbao > 0) {
		                hbcount=hbcount+1;
		                t += hongbao + '元红包 ';
		            }
		            if (jiaxiquan > 0) {
		                t += jiaxiquan + '%的加息券';
		            }
		            t += '可供选择';
		            if (next > 0&&hbcount==0) {
		                //您差XX元可用XX元红包
		                t +=  '，您差'+ next + '元可用'+ nextmoney + '元红包';
		                //  t += next + '元';
		            }
		
		            $('#reward_tip').html(t);
		        }
		        if (reward_id > 0 && reward_type == 2) {
		            var extram = Math.round(days * reward_interest_rate * invest_money / 365) / 100;
		            $('#reward_money').text(extram + '元');
		        }
		    }
		    //同步利息明细
		    function interestSync() {
		        //var titm = Math.round(Number($('#interesttotal').data('totalinterest')) * invest_money) / 100;
		        var titm = Math.floor(days * (interest_rate + reward_interest_rate) * invest_money / 365) / 100;
		        $('#interesttotal').text(titm + '元');
		        $('.m2-tranHide-num').each(function () {
		            //var itm = Math.round(Number($(this).data('interest')) * invest_money) / 100;
		            var itm = Math.floor(Number($(this).data('days')) * (interest_rate + reward_interest_rate) * invest_money / 365) / 100;
		            $(this).find('span').html(itm + '元');
		        });
		    }
		    //全部投资
		    $('.invest_all').click(function () {
		        investValidation(account_money, true);
		    });
		    //收益计算器-确认返回
		    $('.m2-tranHidenum-btn').click(function () {
		        $('.m2-tranBg').hide();
		        $('.m2-tranHide').hide();
		        var invest = $('#invest_money1').val();
		        investValidation(invest, true);
		    });
		    //奖励金
		    function rewardMoney(money) {
		        if (!isNaN(money)) {
		            if (money.toString().lastIndexOf('.') == money.toString().length - 1) {
		                return;
		            }
		            money = Number(money);
		            if (money > account_reward) {
		                money = account_reward;
		            }
		            if (money > invest_money) {
		                money = invest_money;
		            }
		            if (money + invest_money + have_invest < reward_money_limit) {
		                money = 0;
		                $('#rewardmoneyerror').text('投资满' + reward_money_limit + '元才可以使用奖励金');
		            } else {
		                $('#rewardmoneyerror').text('');
		            }
		            reward_money = money;
		            reward_id = 0;
		            reward_type = 0;
		            reward_interest_rate = 0;
		            reward_redpacket_money = 0;
		            reward_condition = 0;
		            calMoneyNeed();
		            interestSync();
		            $('.reward-item').removeClass('m2-detHidered-sel');
		            $('.reward-item').addClass('m2-detHidered-unsel');
		            $('.reward-select').remove();
		            $('#reward_money').text(reward_money + '元');
		            var rwd = '<span class="m2-detJust-tit reward-select" style="padding-left: 23px;"><i class="m2-detRigjust-icon m2-detRigicon-pri"></i>使用奖励金额：<span class="m2-detjustRed-num">' + money + '元</span></span>';
		            $('#reward_info').after(rwd);
		        }
		        $('#rewardmoney').val(reward_money);
		    }
		    //计算所需金额
		    function calMoneyNeed() {
		        if (invest_money - reward_money > account_money && reward_money > 0) {
		            money_need = calMinus(invest_money, calPlus(reward_money, account_money));
		        } else if (invest_money - reward_redpacket_money > account_money && reward_redpacket_money > 0) {
		            money_need = calMinus(invest_money, calPlus(reward_redpacket_money, account_money));
		        } else {
		            money_need = invest_money > account_money ? calMinus(invest_money, account_money) : 0;
		        }
		    }
		    //红包，加息券
		    function rewardID(id, type, val, condition) {
		        if (!isNaN(id) && id > 0) {
		            reward_money = 0;
		            reward_id = id;
		            reward_condition = condition;
		            $('.reward-select').remove();
		            $('#rewardmoney').val(0);
		            var rwd = '<span class="m2-detJust-tit reward-select" style="padding-left: 23px;">';
		            if (type == 1) {
		                reward_type = 1;
		                reward_interest_rate = 0;
		                reward_redpacket_money = Number(val);
		                calMoneyNeed();
		                $('#reward_red').text(val + '元');
		                $('#reward_coupon').text('0元');
		                $('#reward_money').text(val + '元');
		                interestSync();
		                rwd += '<i class="m2-detRigjust-icon m2-detRigicon-red"></i>选中红包金额：<span class="m2-detjustAdd-num">' + val + '元</span></span>';
		            } else if (type == 2) {
		                reward_type = 2;
		                $('#reward_red').text('0元');
		                reward_interest_rate = Number(val);
		                reward_redpacket_money = 0;
		                calMoneyNeed();
		                var extram = Math.round(days * reward_interest_rate * invest_money / 365) / 100;
		                $('#reward_coupon').text(extram + '元');
		                $('#reward_money').text(extram + '元');
		                interestSync();
		                rwd += '<i class="m2-detRigjust-icon m2-detRigicon-add"></i>选中加息券：<span class="m2-detjustAdd-num">' + val + '%加息券</span></span>';
		            } else {
		                rwd = '<span class="m2-detJust-tit reward-select"><i></i>未使用任何奖励</span>';
		            }
		            $('#reward_info').after(rwd);
		        }
		    }
		    //取消奖励
		    function cancelReward() {
		        reward_money = 0;
		        reward_id = 0;
		        reward_type = 0;
		        reward_interest_rate = 0;
		        reward_redpacket_money = 0;
		        reward_condition = 0;
		        interestSync();
		        $('#rewardmoney').val('');
		        $('#reward_red').text('0元');
		        $('#reward_coupon').text('0元');
		        $('#reward_money').text('0元');
		        $('.reward-select').remove();
		        $('.reward-item').removeClass('m2-detHidered-sel');
		        $('.reward-item').addClass('m2-detHidered-unsel');
		        rwd = '<span class="m2-detJust-tit reward-select"><i></i>未使用任何奖励</span>';
		        $('#reward_info').after(rwd);
		    }
		    //取消奖励选择
		    $('.m2-detHidered-cancle').click(function () {
		        cancelReward();
		    });
		    //弹出层奖励金 点击‘全用’
		    $('.m2-detHidepri-ipt span').click(function () {
		        rewardMoney(account_reward);
		    });
		    //奖励金输入
		    $('#rewardmoney').keyup(function () {
		        var rm = $('#rewardmoney').val();
		        rewardMoney(rm);
		    });
		    //选择奖励
		    $('.reward-item').click(function () {
		        $('.reward-item').removeClass('m2-detHidered-sel');
		        $('.reward-item').addClass('m2-detHidered-unsel');
		        $(this).addClass('m2-detHidered-sel');
		        var id = $(this).data('rewardid');
		        var type = $(this).data('rewardtype');
		        var val = $(this).data('rewardval');
		        var condition = $(this).data('condition');
		        rewardID(id, type, val, condition);
		    });
		    //立即投资
		    $('#invest_now').click(function () {
		        if(!uid){
		            window.location.href = '/login';
		            return;
		        }
		        if (cardnbr) {
		            if (!cardbind) {
		                confirmDialog('bindcard');
		                return;
		            }
		            if(setword_status!="1"){
		                confirmDialog('steword');
		                return;
		            }
		            investValidation(invest_money, true);
		            if (invest_money - reward_money > account_money && reward_money > 0) {
		                confirmDialog('charge');
		            } else if (invest_money - reward_redpacket_money > account_money && reward_redpacket_money > 0) {
		                confirmDialog('charge');
		            } else if (invest_money > account_money && reward_money == 0 && reward_redpacket_money == 0) {
		                confirmDialog('charge');
		            } else {
		                $('#form_invest_num').val(Math.floor(invest_money / invest_limit));
		                $('#form_reward_money').val(reward_money);
		                $('#form_reward_id').val(reward_id);
		                confirmDialog('invest');
		                //$('#invest_form').submit();
		            }
		        } else {
		            showOpenDialog();
		        }
		    });
		    // 确认弹窗
		    function confirmDialog(action) {
		        var content = '<p class="m2-detConfirm-nor">尊敬的用户：</p>';
		        if (action == 'charge') {
		            $('#msgtitle').text('充值确认');
		            if (input_invest_money % invest_limit > 0) {
		                content += '<p class="m2-detConfirm-nor">投资金额应为' + invest_limit + '的整倍数</p>';
		            }
		            if (input_invest_money < invest_limit * invest_limit_num) {
		                content += '<p class="m2-detConfirm-nor">最小投资金额为' + invest_limit * invest_limit_num + '元</p>';
		            }
		            content += rewardUseDialog();
		            content += '<p class="m2-detConfirm-nor">您投资金额为<span style="color:#f48a3f;">' + invest_money + '</span>元</p>';
		            content += '<p class="m2-detConfirm-nor">您的账户余额为' + account_money + '元，还需支付<span style="color:#f48a3f;">' + money_need + '</span>元</p>';
		            $('#msgcontent').html(content);
		            $('#msgbtn1').hide();
		            $('#msgbtn2').hide();
		            $('#msgbtn3').show();
		        } else if (action == 'invest') {
		            $('#msgtitle').text('投资确认');
		            if (input_invest_money % invest_limit > 0) {
		                content += '<p class="m2-detConfirm-nor">投资金额应为' + invest_limit + '的整倍数</p>';
		            }
		            if (input_invest_money < invest_limit * invest_limit_num) {
		                content += '<p class="m2-detConfirm-nor">最小投资金额为' + invest_limit * invest_limit_num + '元</p>';
		            }
		            content += rewardUseDialog();
		            if(borrow_flag){
		                content += '<p class="m2-detConfirm-nor">您确认投资 <span style="color:#f48a3f;">' + invest_money + '</span>元吗?<span style="color:#fa533d;">（每位新用户仅限投资一次新手标。)</span></p>';
		            }else{
		                content += '<p class="m2-detConfirm-nor">您确认投资 <span style="color:#f48a3f;">' + invest_money + '</span>元吗?</p>';
		            }
		
		            $('#msgcontent').html(content);
		            $('#msgbtn1').hide();
		            $('#msgbtn2').show();
		            $('#msgbtn3').hide();
		        } else if (action == 'bindcard') {
		//            msgDialog('为了保障您正常投资，请先进行绑卡操作！');
		            showOpenDialog();
		            return;
		        }else if(action=="steword"){
		            $('#msgtitle').text('投资确认');
		            content += '<p class="m2-detConfirm-nor">投资需要验证交易密码，您当前尚未设置，确认设置么？</p>';
		            $('#msgcontent').html(content);
		            $('#msgbtn1').hide();
		            $('#msgbtn2').hide();
		            $('#msgbtn3').hide();
		            $('#msgbtn4').show();
		
		        }
		        $('.m2-detConfirm,.m2-tranBg').show();
		    }
		    //使用奖励确认
		    function rewardUseDialog() {
		        var dom = '';
		        if (reward_money > 0) {
		            dom += '<p class="m2-detConfirm-nor">您投资使用奖励金<span style="color:#f48a3f;">' + reward_money + '</span>元</p>';
		        } else if (reward_type == 1) {
		            dom += '<p class="m2-detConfirm-nor">您投资使用<span style="color:#f48a3f;">' + reward_redpacket_money + '</span>元红包</p>';
		        } else if (reward_type == 2) {
		            dom += '<p class="m2-detConfirm-nor">您投资使用<span style="color:#f48a3f;">' + reward_interest_rate + '%</span>加息券</p>';
		        }
		        if (invite_code != 0) {
		            dom += '<p class="m2-detConfirm-nor">您投资使用邀请码：<span style="color:#f48a3f;">' + invite_code + '</span></p>';
		        }
		        return dom;
		    }
		    //消息弹窗
		    function msgDialog(msg) {
		        $('#msgtitle').text('消息确认');
		        var content = '<p class="m2-detConfirm-nor">' + msg + '</p>';
		        $('#msgcontent').html(content);
		        $('#msgbtn1').show();
		        $('#msgbtn2').hide();
		        $('#msgbtn3').hide();
		        $('.m2-detConfirm,.m2-tranBg').show();
		    }
		    //关闭弹窗
		    $('.m2-detConfirm-close,.m2-detConfirm-btn a').click(function () {
		        $('.m2-detConfirm,.m2-tranBg').hide();
		    });
		    // 邀请码弹窗
		    $('.m2-detCode').click(function () {
		        $('.m2-detCodehide').show();
		    });
		    $('.m2-detCodehead-rig').click(function () {
		        $('.m2-detCodehide').hide();
		    });
		    //邀请码变化
		    $('#invitecode').blur(function () {
		        inviteCodeBlur();
		    });
		    //主界面的投资输入框
		    $('#invest_money').blur(function () {
		        inviteCodeBlur();
		    });
		    //收益计算器中的投资输入框
		    $('#invest_money1').blur(function () {
		        inviteCodeBlur();
		    });
		    //邀请码变化
		    function inviteCodeBlur() {
		        var invite_code_t = $('#invitecode').val();
		        $.ajax({
		            url: "/invest-saverecommphone.shtml",
		            type: 'POST',
		            data: {
		                id: borrow_id,
		                reward: reward_money,
		                invest_capital: invest_money,
		                recommphone: invite_code_t
		            },
		            success: function (data) {
		                var obj = eval('(' + data + ')');
		                if (obj['status'] === 0) {
		                    invite_code = invite_code_t;
		                } else {
		                    invite_code = 0;
		                }
		                if (obj['status'] != 7) {
		                    $('#invitereward').html(obj['message']);
		                } else {
		                    $('#invitereward').html('');
		                }
		            }
		        });
		    }
		    //隐藏无内容区域
		    $(function () {
		        $('.m2-detSit').each(function () {
		            if ($.trim($(this).find('p').text()) == '') {
		                $(this).hide();
		            }
		        });
		        $('.m2-detImgbox').each(function () {
		            if ($.trim($(this).find('ul').html()) == '') {
		                $(this).hide();
		            }
		        });
		        if ($.trim($('#borrowactivity').text()) == '') {
		            $('.m2-detialsAct').hide();
		        }
		    });
		