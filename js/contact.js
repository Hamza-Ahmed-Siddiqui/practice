$(".toggle").click(function(){
    $("#ver").toggle();
  });
  $("#options").click(function(){
    $(".categ-menu").toggle(1000);
    $(".categ-menu").css("display","block")
    $(".card1").css("top","100px");
  });