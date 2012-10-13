$(document).ready ->
  $('#query').autocomplete({
    source: '/complete'
    response: (e,u) ->
      target = $('.results')
      target.empty

  }).data("autocomplete")._renderItem = (_, item) ->
      target = $('.results')
      return $("<li>")
          .addClass('result')
          .data("item.autocomplete", item)
          .append(item.label)
          .appendTo('.results')
