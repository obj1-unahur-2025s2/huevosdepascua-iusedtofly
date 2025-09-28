


object huevoRepostero {
    method esChocolateBlanco() = true
    method esChocolateAmargo() = false

    method cal() = 750
}

object huevoMixto {
    method esChocolateBlanco() = true
    method esChocolateAmargo() = false
    method caloriasChocolateBlanco() = 500
    method caloriasChocolateConLeche() = 400

    method cal() = self.caloriasChocolateBlanco() + self.caloriasChocolateConLeche() 
}

object conejo {
    method esChocolateBlanco() = false
    method esChocolateAmargo() = true

    var peso = 0 //podría ser un property
    method peso() = peso
    method peso(nuevoPeso) {
        peso = nuevoPeso
    }

    method cal() = self.peso()* 10
   
}

object blisterHuevitos {
    method esChocolateBlanco() = false
    method esChocolateAmargo() = true
    var property cantidadDeHuevos = 5 //podría ser property

    method cal() = cantidadDeHuevos * 100 + ((cantidadDeHuevos.div(5)) * 150) 
}

object matrioshka {
    method esChocolateBlanco() = huevoInterior.esChocolateBlanco()
    method esChocolateAmargo() = true


    var property decoracion = arbol
    var huevoInterior = conejo
    method nuevoHuevoInterior(unHuevo){
        huevoInterior = unHuevo
    }

    method cal() = 3000 +  huevoInterior.cal() + decoracion.cal()
}

object arbol {
    method cal() = 150
}
object flor {
    var property petalos = 4
    method cal() = petalos * 150 
}
