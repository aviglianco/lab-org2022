.include "data.s"
.include "graphics.s"

.globl main
main:
	// X0 contiene la direccion base del framebuffer
	mov x26, SCREEN_HEIGH //  Guardamos la altura de la pantalla en x26
	mov x25, SCREEN_WIDTH // Guardamos el ancho de la pantalla en x25
 	mov x27, x0	// Guardamos la dirección base del framebuffer en x27
	//---------------- CODE HERE ------------------------------------
	
	bl background

	ldr x3, yellow
	mov x0, 320
	mov x1, 200
	mov x2, 8
	bl triangle

//---------------------------------------------------------------
	// Infinite Loop 

InfLoop: 
	b InfLoop