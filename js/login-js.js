let container = document.getElementById('container')

toggle = () => {
	container.classList.toggle('sign-in')
	container.classList.toggle('sign-up')
}


setTimeout(() => {
	container.classList.add('sign-in')
}, 200)



$("#homebtn").click(function(){
	$(".back-home").css("margin-left", "200px");
	$("#welco").css("display", "none");
  });

  $("#ziad").click(function(){
	$(".back-home").css("margin-left", "1000px");
	$("#welco").css("display", "block");
  });
