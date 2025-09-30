import wollok.game.*
import gameCapos.*
import artefactos.*
import capos.*
import gameManager.*
import enemigos.*

object castilloDePiedra {
    var property position = game.at(1,1)
    const cofre = []

    method image(){
        return "castillo_piedra.png"
    }

    method artefactosEnCofre() = cofre
}

object fortalezaDeAcero {
    //var property position = game.at(0,1)

    method image(){
        return "fortaleza.png"
    }

}

object palacioDeMarmol {
    //var property position = game.at(0,1)

    method image(){
        return "palacio.png"
    }

}

object torreDeMarfil {
    //var property position = game.at(0,1)

    method image(){
        return "torre.png"
    }

}

object tierraDeErethia {
    // var property position = game.at(0,1)

    method image(){
        return "foto.png"
    }

}

