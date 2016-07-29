$(document).ready(function(){

    var scrollTopList = $('[playing=true]').position();
    $('.playlist').scrollTop(scrollTopList.top);

    var rating = $('.rating').children('span');
    var unlock = $('.rating');

   rating.click(function(e){
    if(unlock.attr('clickOne') === 'true'){
        // $.ajax({
        //   type: "POST",
        //   url: "нуженЭкшон",
        //   data: { rating: this.attr('rating') },
        //   success: function(){
        //     nextChld(this);
        //     UserRating.unlockClick = false;
        //   }
        // })
        unlock.attr('clickOne', 'false');
        nextChld(this);
        }
      })


  function nextChld(elem) {
          $(elem).addClass('yourRating offhiden');
          if( $(elem).next('span') ) {
            $(elem).next('span').addClass('yourRating offhiden');
            nextChld($(elem).next('span'));
          }
        }
})
