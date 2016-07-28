$(document).ready(function(){
  var rating = $('.rating').children('span');
  var unlockClick = true;

  rating.click(function(e){
    if(unclockClick){
        $.ajax({
          type: "POST",
          url: "нуженЭкшон",
          data: { rating: this.attr('rating') },
          success: function(){
            nextChld(this);
            unlockClick = false;
          }
        })
        }
      })


  function nextChld(elem) {
      return elem.next() ?
          elem.next().addClass('yourRating'); nextChld(elem.next()) :
          elem.addClass('yourRating');
  }
})
