
//This file contains the site's javascript.

function openNav() {
	document.getElementById("mySidenav").style.width = "250px";
	document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
	document.getElementById("mySidenav").style.width = "0";
	document.body.style.backgroundColor = "white";
}

$(function () {
	$("#tabs").tabs();
});

$(function () {
	$(window).on("load resize", function () {
		$(".fill-screen").css("height", window.innerHeight);
	});
});
