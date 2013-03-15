$(function(){
  setInterval(updateMessages,1000);
});

function updateMessages(){
        var after = $('.message:last').attr('data-time');
      	$.getScript("/?after=" + after);
}
