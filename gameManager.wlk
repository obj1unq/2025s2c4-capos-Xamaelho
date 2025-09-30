import wollok.game.*
import gameCapos.*
import capos.*
import artefactos.*
import extras.*
import direcciones.*
import enemigos.*

object manager {
    method inicializar(){
        // game.addVisual(personajes)
		game.addVisual(castilloDePiedra)
		game.addVisual(rolando)	// Ultimo el player para que este encima
		
		keyboard.up().onPressDo( { rolando.mover(arriba) } )
		keyboard.down().onPressDo( { rolando.mover(abajo) } )
		keyboard.left().onPressDo( { rolando.mover(izquierda) } )
		keyboard.right().onPressDo( { rolando.mover(derecha) } )

		// game.onCollideDo(rolando, {algo => algo.teCruzasteCon(rolando)})
		// game.onTick(tiempo_en_ms, "que hace", { acciones })
    }
}