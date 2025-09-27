import wollok.game.*
import gameCapos.*
import artefactos.*
import capos.*
import managerGame.*
import enemigos.*

object castilloDePiedra {
    var property position = game.at(0,1)
    const cofre = []

    method image(){
        return "foto.png"
    }

    method artefactosEnCofre() = cofre
}

object fortalezaDeAcero {
    var property position = game.at(0,1)

    method image(){
        return "foto.png"
    }

}

object palacioDeMarmol {
    var property position = game.at(0,1)

    method image(){
        return "foto.png"
    }

}

object torreDeMarfil {
    var property position = game.at(0,1)

    method image(){
        return "foto.png"
    }

}

object tierraDeErethia {
    var property position = game.at(0,1)

    method image(){
        return "foto.png"
    }

}

