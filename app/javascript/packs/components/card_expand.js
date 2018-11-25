$('.card-expand').click(function(){
  $(this).parent().parent().toggleClass('expanded');
})

let cardHeight = $('.card.expanded').innerHeight()

$('.card.expanded .card-inner').css('max-height', cardHeight);
