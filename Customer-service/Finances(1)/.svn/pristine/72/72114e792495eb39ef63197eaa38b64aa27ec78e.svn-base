    //banner切换
    var ulLeft;
    $(function () {
        //项目列表切换
        $('.m2-indexSteplist li').click(function () {
            var stepIndex = 0;
            if ($(this).hasClass('m2-indexStep-unsel')) {
                stepIndex = $(this).index();
                $(this).addClass('m2-indexStep-sel').removeClass('m2-indexStep-unsel');
                $(this).siblings('.m2-indexStep-sel').addClass('m2-indexStep-unsel').removeClass('m2-indexStep-sel');
                $('.m2-indexStepimg-list li').eq(stepIndex).show();
                $('.m2-indexStepimg-list li').eq(stepIndex).siblings().hide();
                if (stepIndex == 0) {
                    //直投
                    borrowcate(0);
                    $('#statistics-title').html('<i class="m2-indexStepfoot-icon"></i>项目直投统计数据');
                } /*else if (stepIndex == 1) {
                 //爱小贷
                 borrowcate(4);
                 $('.m2-indexItem').hide();
                 $('.borrow-cate-4').show();
                 $('#statistics-title').html('<i class="m2-indexStepfoot-icon"></i>爱小贷统计数据');
                 } else if (stepIndex == 2) {
                 //海鲜帮
                 borrowcate(2);
                 $('.m2-indexItem').hide();
                 $('.borrow-cate-2').show();
                 $('#statistics-title').html('<i class="m2-indexStepfoot-icon"></i>海鲜帮统计数据');
                 }*/ else if (stepIndex == 1) {
                    //债转
                    transcate();
                    $('.m2-indexStepfoot').hide();
                }
                ulLeft = 0;
                $('.m2-indexItemlist').animate({left: ulLeft}, 400);
            }
        });
        //项目分类显示
        borrowcate(0);
        function borrowcate(cate) {
            $('.trans').hide();
            $('.borrow').show();
            $('.m2-indexStepfoot').show();
            if ($('#statistics-' + cate).data('bnum') > 0) {
                $('#statistics-bnum').text($('#statistics-' + cate).data('bnum'));
                $('#statistics-pnum').text($('#statistics-' + cate).data('pnum'));
                $('#statistics-inum').text($('#statistics-' + cate).data('inum'));
            } else {
                $('#statistics-bnum').text(0);
                $('#statistics-pnum').text(0);
                $('#statistics-inum').text(0);
            }
        }
        //显示债转
        function transcate() {
            $('.trans').show();
            $('.borrow').hide();
        }
        //项目列表翻页
        itemListpage();
        //视频列表翻页
        vodListpage();
        //新闻列表tab切换
        $('.m2-indNewstablist li').click(function () {
            if ($(this).hasClass('m2-indNewtab-unsel')) {
                $(this).addClass('m2-indNewtab-sel').removeClass('m2-indNewtab-unsel');
                $(this).siblings('.m2-indNewtab-sel').addClass('m2-indNewtab-unsel').removeClass('m2-indNewtab-sel');
            }
        });
        // 新闻列表tab切换下方展示
        $('.m2-indNewstablist li').click(function () {
            if ($(this).index() == 0) {
                //媒体报道
                $('.newslist').hide();
                $('#newslist1').show();
                $('#article-more').prop('href', 'meitibaodao_aiqianbang_licaiwang/');
            } else if ($(this).index() == 1) {
                //行业动态
                $('.newslist').hide();
                $('#newslist2').show();
                $('#article-more').prop('href', 'touzi_licaiwang_xinwendongtai/');
            } else if ($(this).index() == 2) {
                //网站公告
                $('.newslist').hide();
                $('#newslist3').show();
                $('#article-more').prop('href', 'aiqianbang_licaiwang_gonggao/');
            } else if ($(this).index() == 3) {
                //网站公告
                $('.newslist').hide();
                $('#newslist4').show();
                $('#article-more').prop('href', 'aiqianbang_touzi_licai_chanpin_gonggao/');
            } else if ($(this).index() == 4) {
                //还款公告
                $('.newslist').hide();
                $('#newslist5').show();
                $('#article-more').prop('href', 'aiqianbang_touzi_licai_chanpin_jieshu_gonggao/');
            } else if ($(this).index() == 5) {
                //活动公告=爱钱帮动态
                $('.newslist').hide();
                $('#newslist6').show();
                $('#article-more').prop('href', 'aiqianbang_licaiwang_xinwendongtai/');
            } else if ($(this).index() == 6) {
                //活动公告=爱钱帮动态
                $('.newslist').hide();
                $('#newslist7').show();
                $('#article-more').prop('href', 'touzi_licaijianyi/');
            }
        });
        
        // 视频播放
        $('.m2-indVodlist li').click(function () {
            $('.m2-indVoditem').remove();
            var vedio = $(this).data('vedio');
            $('.m2-indexVod-con').prepend('<div class="m2-indVoditem"><i></i><video class="m2-indexVideo" data-setup="{}" preload="none" loop="false" controls="controls"><source src="' + vedio + '" type="video/mp4">您的浏览器版本过低,不能播放此视频</video></div>');
            $('.m2-indexVideo').attr("autoplay", "autoplay");
            closeVideo();
        });
        function closeVideo() {
            $('.m2-indVoditem i').click(function () {
                $('.m2-indVoditem').remove();
            })
        }
    });
    
    //项目列表翻页
    function itemListpage() {
        ulLeft = 0;
        $('.m2-indexItemlist-next').click(function () {
            var maxLeft = ($('.m2-indexItemlist li:visible').length - 3) * 341;
            if (ulLeft > -maxLeft) {
                ulLeft -= 341;
                $('.m2-indexItemlist').animate({left: ulLeft}, 400);
            }
        });
        $('.m2-indexItemlist-prev').click(function () {
            if (ulLeft < 0) {
                ulLeft += 341;
                $('.m2-indexItemlist').animate({left: ulLeft}, 400);
            }
        });
    }

    //视频列表翻页
    function vodListpage() {
        var ulLeft = 0;
        var maxLeft = ($('.m2-indVodlist li').length - 4) * 220;
        $('.m2-indexVodbtn-next').click(function () {
            if (ulLeft > -maxLeft) {
                ulLeft -= 220;
                $('.m2-indVodlist').animate({left: ulLeft}, 300);
            }
        });
        $('.m2-indexVodbtn-prev').click(function () {
            if (ulLeft < 0) {
                ulLeft += 220;
                $('.m2-indVodlist').animate({left: ulLeft}, 300);
            }
        });
    }
    
    //圆环进度条
    $(function () {
        //加载进度条
        $(".m2-indKnob").knob();
        //显示进度条百分比
        $('.m2-indPercent').each(function () {
            $(this).html($(this).siblings().children('input').attr('value') + "%");
        })
    });
    
    //倒计时
    var timeLeft = Number('0');
    function timeDown() {
        if (timeLeft < 86400 & timeLeft > 0) {
            var minLeft1 = Number(parseInt(timeLeft % 3600 / 60 / 10)).toString(); //分钟第一位
            var minLeft2 = Number(parseInt(timeLeft % 3600 / 60 % 10)).toString(); //分钟数第二位
            var secLeft1 = Number(parseInt(timeLeft % 3600 % 60 / 10)).toString(); //秒第一位
            var secLeft2 = Number(parseInt(timeLeft % 10)).toString(); //秒第二位
            $('.m2-invDay').hide(); //隐藏天
            $('.m2-invSec').show(); //显示秒
            $('.m2-invHou').children('i').html(parseInt(timeLeft / 3600)); //小时
            $('.m2-invMin').children('i').html(minLeft1 + minLeft2); //分钟
            $('.m2-invSec').children('i').html(secLeft1 + secLeft2); //秒
            timeLeft--;
            setTimeout("timeDown()", 1000); //设置1秒以后执行一次本函数
        }
        else if (timeLeft >= 86400) {
            var houLeft1 = Number(parseInt(timeLeft % 86400 / 3600 / 10)).toString(); //小时第一位
            var houLeft2 = Number(parseInt(timeLeft % 86400 / 3600 % 10)).toString(); //小时数第二位
            var minLeft1 = Number(parseInt(timeLeft % 86400 % 3600 / 60 / 10)).toString(); //分钟第一位
            var minLeft2 = Number(parseInt(timeLeft % 86400 % 3600 / 60 % 10)).toString(); //分钟数第二位
            $('.m2-invDay').show(); //隐藏天
            $('.m2-invSec').hide(); //显示秒
            $('.m2-invDay').children('i').html(parseInt(timeLeft / 86400)); //天
            $('.m2-invHou').children('i').html(houLeft1 + houLeft2); //小时
            $('.m2-invMin').children('i').html(minLeft1 + minLeft2); //分钟
            timeLeft--;
            setTimeout("timeDown()", 1000); //设置1秒以后执行一次本函数
        }
        else if (timeLeft == 0) {
            $('.m2-invDay').hide(); //隐藏天
            $('.m2-invSec').show(); //显示秒
            $('.m2-invHou').children('i').html(0); //小时
            $('.m2-invMin').children('i').html('00'); //分钟
            $('.m2-invSec').children('i').html('00'); //秒
        }

    }

    timeDown();

    