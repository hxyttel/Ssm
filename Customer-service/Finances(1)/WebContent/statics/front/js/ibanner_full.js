;(function(w) {
	//iBanner
  var iBanner = function (element, options) {
    this.$element = $(element)
    this.options = options
    this.$indicator = $(this.options.indicator) || $element.find('iBanner-nav') || null
    this.$active = this.$element.find('.box-active')
    this.init()
  }
  iBanner.prototype = {
    constructor: iBanner,
    init: function () {
      this.$indicator.hide()
      this.bindEvent()
      this.changeImgToBackground()
      if(this.$element.find('.box').length > 1){
        this.cycle()
        this.$element.find('.prev-mask, .next-mask').show()
        this.$indicator.css('marginLeft', - this.$indicator.width() / 2)
        this.$indicator.show()
      }
      this.bannerMask()
      return this
    },
    changeImgToBackground: function() {
      var box = this.$element.find('.box'), tmp
      for (var i = 0; i < box.length; i++) {
        tmp = $(box[i]).find('img').attr('src')
        $(box[i]).find('img').remove()
        $(box[i]).css('backgroundImage', 'url('+ tmp +')')
        if(this.options.backgroundColor) {
          $(box[i]).css('backgroundColor', this.options.backgroundColor[i])
        }
      };
    },
    getActiveIndex: function () {
      this.$boxs = this.$active.parent().children()
      return this.$boxs.index(this.$active)
    },
    slide: function () {
    },
    slideTo: function (pos) {
      var self = this
        , isCycling = this.interval
        , activeIndex = this.getActiveIndex()
        , $curTargetItem = this.$element.find('.iBanner-box .box').eq(pos)

      isCycling && this.pause()

      if(this.options.animate){
        this.options.animate(self.$active, $curTargetItem)
      }
      this.$active.removeClass('box-active')
      $curTargetItem.addClass('box-active')
      this.$active = $curTargetItem
      if(this.$indicator.length){
        this.$indicator.find('[data-ibanner]').removeClass('active').eq(pos).addClass('active')
      }
      isCycling && this.cycle()
      return this
    },
    next: function () {
      var self = this
        , activeIndex = this.getActiveIndex()
        , targetIndex = this.$active.next().length ? activeIndex + 1 : 0
      return this.slideTo(targetIndex)
    },
    prev: function () {
      var self = this
        , activeIndex = this.getActiveIndex()
        , targetIndex = this.$active.prev().length ? activeIndex - 1 : this.$element.find('.iBanner-box .box').length - 1
      return this.slideTo(targetIndex)
    },
    cycle: function (isPaused) {
      var self = this
      if (!isPaused) this.paused = false
      if (this.interval) clearInterval(this.interval);
      this.options.interval
        && !this.paused
        && (this.interval = setInterval($.proxy(this.next, this), this.options.interval))
      return this
    },
    pause: function () {
      this.paused = true
      clearInterval(this.interval)
      this.interval = null
      return this
    },
    bindEvent: function () {
      var self = this
      if(self.$indicator.length){
        self.$indicator.on('click', '[data-ibanner]', function (e) {
          var $this = $(this)
            , $target = $($this.data('ibanner'))
            , slideIndex = $this.attr('data-slide-to') || $this.attr('href').match(/^#(\d+)$/)[1]

          self.$indicator.find('.active').removeClass('active')
          self.slideTo(slideIndex)
          $this.addClass('active')
          e.preventDefault()
        })
      }
    },
    bannerMask: function() {
      var that = this;
  	  //banner-mask
  	  this.$element.find('.prev-mask').hover(function () {
  	    $(this).parent().addClass('iBanner-prev')
  	  },function () {
  	    $(this).parent().removeClass('iBanner-prev')
  	  })

  	  this.$element.find('.next-mask').hover(function () {
  	    $(this).parent().addClass('iBanner-next')
  	  },function () {
  	    $(this).parent().removeClass('iBanner-next')
  	  })
  	  this.$element.find('.next-mask').on('click', function(e) {
  	    that.next()
  	    e.preventDefault();
  	  });

  	  this.$element.find('.prev-mask').on('click', function(e) {
  	    that.prev()
  	    e.preventDefault();
  	  });
    }
  }
  w.iBanner = iBanner;
})(window);