$(document).ready(function(){

    var scrollTopList = $('[playing=true]').position();
    $('.playlist').scrollTop(scrollTopList.top);

    var rating = $('.rating').children('span');
    var unlock = $('.rating');

    rating.click(function(e){
        if(unlock.attr('clickOne') === 'true'){
            var rait = $(this).attr('rating');
            rait = $(rait).serialize();
            $.ajax({
                type: "PUT",
                url: unlock.attr('action'),
                data: { mark: rait },
                success: function(){
                    unlock.attr('clickOne', 'false');
                    nextChld(this);
                }
            })
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
