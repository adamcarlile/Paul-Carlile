// Init Cufon
Cufon.replace('.cufon, div#banner h3, div#main h1, div#main h2, div#main h3, div#main h4, div#main h5, div#footer h4', {
				textShadow: '#000 1px 1px'
			});
Cufon.replace('div.sidebar h4', {
				textShadow: '#000 1px 1px'
			});



//Fade
$(document).ready(
	function(){
   	$('div#banner ul').innerfade({
     	speed: 2000,
     	timeout: 5000,
     	type: 'sequence',
     	containerheight: 	'233px'
   	});
});