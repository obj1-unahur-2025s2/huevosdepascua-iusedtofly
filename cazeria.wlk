import huevosDePascua.*
import chicos.*

object cazeria {
    const porEncontrar = []
    method ocultarHuevos(listaHuevos) = porEncontrar.addAll(listaHuevos)
    method porEncontrar() = porEncontrar 

    const participantes = #{ana,tito,jose}
//Averiguar si un determinado huevo aún no fue encontrado
    method fueEncontrado(unHuevo) = not porEncontrar.contains(unHuevo)

//Hacer que un/a chico/a encuentre un huevo en particular
    method ChicoEncontroUnHuevo(unChico,unHuevo) {
        porEncontrar.remove(unHuevo)
        unChico.agregarHuevo(unHuevo)
    }
//Hacer que un/a chico/a encuentre el primero de los huevos escondidos
    method encontrarPrimerHuevoEscondido(unChico) {
        unChico.agregarHuevo(porEncontrar.first())
        porEncontrar.remove(porEncontrar.first())  
    }

//Hacer que un/a chico/a encuentre todos los huevos restantes
    method chicoEncuentraHuevosRestantes(unChico) {
        unChico.encontrarRestantes(porEncontrar)
        porEncontrar.removeAll(porEncontrar)
    }
//Averiguar si un/a chico/a está enfermo:
    method hayChicoEnfermo() = participantes.any({participante => participante.estaEnfermo()}) 

/*De los huevos que falta encontrar:
    - Cuales son con chocolate blanco
    - El de mayor cantidad de calorías*/
    method sonDeChocolateBlanco() {
        return(porEncontrar.filter({huevo => huevo.esChocolateBlanco()}))
    }
    method masCaloricoEs(){
        return (porEncontrar.max({objeto => objeto.cal()}))
    }
}