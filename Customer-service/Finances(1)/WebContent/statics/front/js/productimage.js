  //图片列表弹出和上下页
		    imgView('.img-view1');
		    imgView('.img-view2');
		    imgView('.img-view3');
		    function imgView(selector) {
		        var docTop = $(document).scrollTop() + 142; //弹出层top
		        var tolPage = $(selector + ' li').length; //总页数
		
		        var curPage = 1; //当前页
		        var imgSrc = "" //弹出层图片src
		        var imgTit = "" //图片标题
		        var this_selector = '';
		        $('.m2-parPagetotal').html(tolPage);
		        /*点击弹出蒙板*/
		        $(selector + ' li img').click(function () {
		            this_selector = selector;
		            tolPage = $(selector + ' li').length; //总页数
		            $('.m2-parPagetotal').html(tolPage);
		            curPage = $(this).parent().index() + 1; //当前页
		            docTop = $(document).scrollTop() + 142; //滚动条高度
		            $(this).prop('src', $(this).data('fullpic'));
		            imgSrc = $(this).attr('src'); //图片src
		            imgTit = $(this).siblings('p').html();
		            $('.m2-parHidebox').css('top', docTop); //改变图片box的top
		            $('.m2-parHideimg img').attr('src', imgSrc); //替换图片
		            $('.m2-parPagecurrent').html(curPage); //改变当前页值
		            $('.m2-parHidebox h2').html(imgTit); //改变图片标题
		            btnShow();
		            $('.m2-tranBg,.m2-parHidebox').show() //显示蒙板和图片box
		        });
		
		        /*上一页点击*/
		        $('.m2-parPageprev,.m2-parHideimg-lef').click(function () {
		            if (this_selector == selector) {
		                curPage -= 1;
		                curPage = curPage < 1 ? 1 : curPage;
		                $(selector + ' ul li').eq(curPage - 1).children('img').prop('src', $(selector + ' ul li').eq(curPage - 1).children('img').data('fullpic'));
		                imgSrc = $(selector + ' ul li').eq(curPage - 1).children('img').attr('src');
		                imgTit = $(selector + ' ul li').eq(curPage - 1).children('p').html();
		                $('.m2-parHideimg img').attr('src', imgSrc); //替换图片
		                $('.m2-parPagecurrent').html(curPage); //改变当前页值
		                $('.m2-parHidebox h2').html(imgTit); //改变图片标题
		                btnShow();
		            }
		
		        });
		
		        /*下一页点击*/
		        $('.m2-parPagenext,.m2-parHideimg-rig').click(function () {
		            if (this_selector == selector) {
		                curPage += 1;
		                curPage = curPage > tolPage ? tolPage : curPage;
		                $(selector + ' ul li').eq(curPage - 1).children('img').prop('src', $(selector + ' ul li').eq(curPage - 1).children('img').data('fullpic'));
		                imgSrc = $(selector + ' ul li').eq(curPage - 1).children('img').attr('src');
		                imgTit = $(selector + ' ul li').eq(curPage - 1).children('p').html();
		                $('.m2-parHideimg img').attr('src', imgSrc); //替换图片
		                $('.m2-parPagecurrent').html(curPage); //改变当前页值
		                $('.m2-parHidebox h2').html(imgTit); //改变图片标题
		                btnShow();
		            }
		        });
		
		        /*点击关闭弹窗*/
		        $('.m2-parHideclose').click(function () {
		            this_selector = '';
		            $('.m2-tranBg').hide();
		            $('.m2-parHidebox').hide();
		        });
		
		        /*判断翻页是否显示*/
		        function btnShow() {
		            if (curPage <= 1) {
		                $('.m2-parPageprev').fadeOut(200);
		                $('.m2-parPagenext').show();
		                curPage = 1;
		                $('.m2-parPagecurrent').html(curPage);
		            } else if (curPage >= tolPage) {
		                $('.m2-parPagenext').fadeOut(200);
		                $('.m2-parPageprev').show();
		                curPage = tolPage;
		                $('.m2-parPagecurrent').html(curPage);
		            } else {
		                $('.m2-parPageprev').show();
		                $('.m2-parPagenext').show();
		            }
		        }
		    }