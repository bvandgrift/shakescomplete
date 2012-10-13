$(document).ready(function(){
  console.log("ready");
  $('#query').autocomplete({
    source: '/complete',
    position: {my: 'left+10 top'} ,
    response: function(e, u) {
      target = $('.results');
      target.empty();
    },
  }).data("autocomplete")._renderItem = function( ul, item ) {
      console.log(item);
      target = $('.results');
      return $( "<li>" )
          .addClass('result')
          .data( "item.autocomplete", item )
          .append(item.label)
          .appendTo('.results')
  };
});
