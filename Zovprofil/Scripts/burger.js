/*<!-- Hamburger menu -->*/
$(document).ready(function () {
	$('.header-burger').click(function (event) {
		$('.header-burger, .menu-overlay').toggleClass('active');
	});
});