import wollok.game.*
import gameCapos.*
import artefactos.*
import extras.*
import managerGame.*
import enemigos.*

object rolando {
    var property position = game.at(0,1)
    const inventario = []
    const capacidadInventario = 2
    const vivienda = castilloDePiedra

    method image(){
        return "foto.png"
    }

    method artefactosEnInventario() = inventario

    method artefactosObtenidos() = self.artefactosEnInventario() + vivienda.artefactosEnCofre()

    method hayEspacioEnInventario() = inventario.size() <= capacidadInventario

    method encontrarArtefacto(artefacto) {
        if (self.hayEspacioEnInventario()) {
            self.levantarArtefacto(artefacto)
        }
    }

    method levantarArtefacto(artefacto) {
        inventario.add(artefacto)
    }

}