import huevosDePascua.*
object ana {
    const coleccionHuevos = []
    method coleccionHuevos() = coleccionHuevos 
    method caloriasTotales() = coleccionHuevos.sum({h => h.cal()}) 
    method estaEnfermo(){
        return (self.caloriasTotales() < 5000 || coleccionHuevos.any({objeto => objeto.esChocolateBlanco()}))
    }

    method agregarHuevo(unHuevo) = coleccionHuevos.add(unHuevo)   
}

object jose {
    const coleccionHuevos = []
    method coleccionHuevos() = coleccionHuevos 

    method estaEnfermo() = coleccionHuevos.last().esChocolateAmargo()

    method agregarHuevo(unHuevo) = coleccionHuevos.add(unHuevo)
    method encontrarRestantes (lista) = coleccionHuevos.addAll(lista) //este metodo deberían tenerlo todos los chicos !!!!!!
}

object tito {
  const coleccionHuevos = []
  method coleccionHuevos() = coleccionHuevos 

  method estaEnfermo() = false

  method agregarHuevo(unHuevo) = coleccionHuevos.add(unHuevo)
}