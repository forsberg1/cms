$("#page-change").on("click", function(event){
  $("div.controls").removeClass("controlls");
  $("div.controls").addClass("control-group success");
  $(".input-xlarge").css("background", "#ABEBB4");
  $("#<%= @page.id %>").css("background", "#ABEBB4");
  setTimeout(function(){
      $("div.controls").removeClass("control-group success"); 
      $(".input-xlarge").css("background", "white");
      $("#<%= @page.id %>").css("background", "#3A87AD");
  }, 1000);
});
 
$("#option-activate").on("click", function(event){
  $("div.controls").removeClass("controlls");
  $("div.controls").addClass("control-group success");
  $(".input-xlarge").css("background", "#ABEBB4");
  $("#<%= @page.id %>").css("background", "#ABEBB4");
  setTimeout(function(){
      $("div.controls").removeClass("control-group success"); 
      $(".input-xlarge").css("background", "white");
      $("#<%= @page.id %>").css("background", "#3A87AD");
  }, 1000);
});

   $('.hidden').hide();
   $('#myModal').hide();
   $(".create-page").on("click", function(){
      $('.new_page').submit();
     });
  $(".delete-page").on("click", function(event){
    event.preventDefault();
    $(".delete-page").fadeOut("fast");
    $('.hidden').fadeIn("fast");
    
  });
  $('#editable_form').on("click", function(event){
      if($("#option-editable").attr("value") == 0)
      {
        $("#option-editable").attr("value", 1)
      }
      else
      {
        $("#option-editable").attr("value", 0)
      } 
  });
  setTimeout(function(){
      $('.enable').on("click", function(event){
      if($("#option-activate").attr("value") == 0)
      {
        $("#option-activate").attr("value", 1)
      }
      else if($("#option-activate").attr("value") == 1)
      {
        $("#option-activate").attr("value", 0)
      } 
  });
  }, 1000);
  $( "#sortable" ).sortable({
    receive: function(event, ui) { 
    
}
  });
  $( "#sortable" ).bind( "sortupdate", function(event, ui) {
    console.log($(ui.item.context.children).attr("id"))
  });
 $( "#sortable" ).disableSelection();
