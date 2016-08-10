$(document).ready(function() {
    // 轮播图的控制
    var index_leftnum1 = $("div.index_leftnum1>ul>li");
    var span_num = $("div.index_leftnum1>ul>li>span");
    var count = 0;
    var time;
    var before1 = $(".beforespan");
    var next1 = $(".next");
    var olActive = $("div.index_leftnum1>ol>li");
    var imgCount=index_leftnum1.size()-1;
    index_leftnum1.hide();
    span_num.hide();
    index_leftnum1.eq(0).show();
    timer();
    // 序号
    olActive.click(function(event) {
        count = $(this).index();
        index_leftnum1.hide();
        index_leftnum1.eq(count).show();
        olActive.removeClass('olActive');
        olActive.eq(count).addClass('olActive');
    });
    $("div.index_leftnum1").hover(function() {
        clearInterval(time);
        $(this).find("ul>li").stop(false, true);
        span_num.show();
    }, function() {
        clearInterval(time);
        span_num.hide();
        timer();
    });
    before1.click(function() {
        if (count >= 0) {
            count--;
            index_leftnum1.hide();
            index_leftnum1.eq(count).show();
            olActive.removeClass('olActive');
            olActive.eq(count).addClass('olActive');
        } else {
            count = imgCount;
            index_leftnum1.hide();
            index_leftnum1.eq(count).show();
            olActive.removeClass('olActive');
            olActive.eq(count).addClass('olActive');
        }
    });
    next1.click(function() {
        if (count <= 3) {
            count++;
            index_leftnum1.hide();
            index_leftnum1.eq(count).show();
            olActive.removeClass('olActive');
            olActive.eq(count).addClass('olActive');
        } else {
            count = 0;
            index_leftnum1.hide();
            index_leftnum1.eq(count).show();
            olActive.removeClass('olActive');
            olActive.eq(count).addClass('olActive');
        }
    });

    function timer() {
        time = setInterval(function() {
            if (count < imgCount) {
                count++;
                index_leftnum1.hide();
                if (count === 0) {
                    index_leftnum1.eq(count).show(1500);
                } else if (count == 1) {
                    index_leftnum1.eq(count).slideDown(1500);
                } else if (count == 2) {
                    index_leftnum1.eq(count).fadeIn(1500);
                } else {
                    index_leftnum1.eq(count).slideDown(1500);
                }
            } else {
                count = 0;
                index_leftnum1.hide();
                index_leftnum1.eq(count).show(1500);
            }
            olActive.removeClass('olActive');
            olActive.eq(count).addClass('olActive');
        }, 5000);
    }
});
