$(document).ready(function(){
  var results = [
    "Whether 'tis nobler",
    "all is mended",
    "cry havoc and let slip the dogs of war",
    "cry into my drink",
    "cry like a baby"
  ];
  $('#query').autocomplete({source: '/complete', position: {my: 'left+10 top'} });

  console.log("ready");
});
