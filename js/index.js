//============ navigation js=================//
$(".toggle").click(function(){
    $("#ver").toggle();
  });
  $("#options").click(function(){
    $(".categ-menu").toggle(1000);
    $(".categ-menu").css("display","block")
  });

// spin loader
$(window).on("load",function(){
  $(".page-loader").fadeOut(5000)
  $(".status").fadeOut(4000)
});