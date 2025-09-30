import wollok.game.*
import gameCapos.*
import artefactos.*
import extras.*
import gameManager.*
import direcciones.*
import enemigos.*

object rolando {
    var property position = game.at(1,1)
    const inventario = []
    const capacidadInventario = 2
    const vivienda = castilloDePiedra

    method image(){
        return "rolando.png"
    }

    method artefactosEnInventario() = inventario

    method artefactosObtenidos() = self.artefactosEnInventario() + vivienda.artefactosEnCofre()

    method hayEspacioEnInventario() = inventario.size() <= capacidadInventario

    method estaEnRango(direccion) {
		const nuevaPosicion = direccion.siguiente(position)
		return (nuevaPosicion.x() > 0                  && 
				nuevaPosicion.y() > 0                  && 
				nuevaPosicion.x() < (game.width() - 1) && 
				nuevaPosicion.y() < (game.height() - 1)     )
	}

    method encontrarArtefacto(artefacto) {
        if (self.hayEspacioEnInventario()) {
            self.levantarArtefacto(artefacto)
        }
    }

    method levantarArtefacto(artefacto) {
        inventario.add(artefacto)
    }
    
    method mover(direccion){
		if (self.estaEnRango(direccion)){
			position = direccion.siguiente(position)
		}
	}
}