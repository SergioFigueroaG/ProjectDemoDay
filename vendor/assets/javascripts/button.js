$(document).ready( function(){
	var buttons7Click = Array.prototype.slice.call( document.querySelectorAll( '#button-click button' ) ),
	buttons9Click = Array.prototype.slice.call( document.querySelectorAll( 'button.button-8g' ) ),
	totalButtons7Click = buttons7Click.length,
	totalButtons9Click = buttons9Click.length;

	buttons7Click.forEach( function( el, i ) { el.addEventListener( 'click', activate, false ); } );
	buttons9Click.forEach( function( el, i ) { el.addEventListener( 'click', activate, false ); } );

	function activate() {
		var self = this, activatedClass = 'button-activated';

		if( classie.has( this, 'button-7h' ) ) {
			// if it is the first of the two button-7h then activatedClass = 'button-error';
			// if it is the second then activatedClass = 'button-success'
			activatedClass = buttons7Click.indexOf( this ) === totalButtons7Click-2 ? 'button-error' : 'button-success';
		}
		else if( classie.has( this, 'button-8g' ) ) {
			// if it is the first of the two button-8g then activatedClass = 'button-success3d';
			// if it is the second then activatedClass = 'button-error3d'
			activatedClass = buttons9Click.indexOf( this ) === totalButtons9Click-2 ? 'button-success3d' : 'button-error3d';
		}

		if( !classie.has( this, activatedClass ) ) {
			classie.add( this, activatedClass );
			setTimeout( function() { classie.remove( self, activatedClass ) }, 1000 );
		}
	}

});




