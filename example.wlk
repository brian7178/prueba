

object gandalf {

  var vida = 0
  var poder = 0
  const armas = #{}
  method poder() = poder
  method vida() = vida
  method cantidadDearmas() = armas.size()
  method elejirvida(algo){
        vida = algo.max(0).min(100)
    }
    method agregarArmas(_mision) { 
      armas.add(_mision) }
   method calcularPoder() {
    return armas.map({m => m.poder()}).sum()
    }
    
  method calcularPoderFinal() {
    if (vida > 10) {
        poder = vida * 15 +  self.calcularPoder() * 2
    } else {
        poder = vida * 300 +  self.calcularPoder() * 2
    }
    armas.clear()
    return poder
}
 method restarvida(cantidad) {
    vida = vida - cantidad
  }
   method sumarvida() {
    vida = vida + 1
  }
}
object baculo {
  method poder() = 400
}
object espadaelfica {
    method poder() = 10 * 25
  
}
object espadaenana {
    method poder() = 10 * 20
  
}
object espadahumana {
    method poder() = 10 * 15
  
}
// Punto 2

object lebennin {
   method puedepasar(persona) {
     persona.calcularPoderFinal()>1500
   }
   method atravezar(persona){
    return persona.vida()
   }
}


object minastirith {
   method puedepasar(persona) {
     persona.cantidadDearmas() >= 1
  }
  
   method atravezar(persona) {
     persona.restarvida(10)
     return persona.vida()
   }
}
object lossarnach {
   method puedepasar(persona)= true
   method atravezar(persona){
    persona.sumarvida()
    return persona.vida()
  }

 }

 object caminogondor {
    const camino = #{}
    method ruta(_camino) { 
      camino.add(_camino) }
    method hacerlaruta(persona) { 
     
    if (camino.all({ s => s.puedepasar(persona) })) {
        camino.forEach({ a => a.atravezar(persona) })
    }
    return persona.vida()

}


}



object tomBombadil {
    var vidatom = 0
    method poder() = 2000
    method cantidadDearmas() = 1
    method elejirvida(algo){
        vidatom = algo
    }
    method vida() = vidatom
    method restarvida(cantidad) = vidatom 
    method sumarvida() = vidatom 
   
}
