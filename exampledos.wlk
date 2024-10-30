
  class Espada{
   var poderespada = 0
   var poderorigen=0
   var individuo= toro
  method llevada(_individuo) {  
  individuo = _individuo
 
  }
  method saber() = individuo

method poderFinalEspada(multiplicador) {
       if (individuo=== enano){
        poderorigen=20
       }
       else if (individuo=== elfico){
        poderorigen=25
       }
       else if (individuo=== humano){
        poderorigen=15
       }else{
        poderorigen = 10 * individuo.cantidadDearmas();
       }

        poderespada = multiplicador * poderorigen
      return poderespada
 

} 
method espadafinal() = poderespada


}

const espada2 = new Espada()

const espada4 = new Espada()
const espada6 = new Espada()


class Guerrero{
var listaDeArmas = #{}
method agregarArma(arma) {
        listaDeArmas.add(arma)
    }
method cantidadDearmas() = listaDeArmas.size()
  method calcularPoder() {
    return listaDeArmas.map({m => m.espadafinal()}).sum()
    }

var property vidaactual=100
var objetoelegido=null
var cantidaddeobejto=0
method contador()=cantidaddeobejto

var cantidaditems=0
var destrezaBase=2
var destrezaPropia=0
var limitadorpoder=1 
var factoractual=1
var factorpoder=1
var dos =1
var cantidaddearmas=self.cantidadDearmas()
var tipo = "" 

 method poder() {
        if (tipo == "enano") {
            return vidaactual + factorpoder * self.calcularPoder()
        } else if (tipo == "elfico") {
            return vidaactual + (destrezaBase + destrezaPropia) * self.calcularPoder()
        } else if (tipo == "humano") {
            return vidaactual + self.calcularPoder() / limitadorpoder
        } else if (tipo == "maiar") {
            return vidaactual * factoractual + 2 * self.calcularPoder()
        } else if (tipo == "hobbit") {
            return vidaactual + cantidaditems * self.calcularPoder()
        } else {
            return vidaactual + self.calcularPoder()
        }
    }



}

const enano= new Guerrero(tipo="enano")
const elfico= new Guerrero()
const humano= new Guerrero()
const toro= new Guerrero()
const frodo=new Guerrero(tipo="hobbit",cantidaditems= 0,vidaactual= 50)
const hobbit=new Guerrero()
const gimli=new Guerrero(tipo="enano",factorpoder=3,vidaactual=75)


class Daga inherits Espada{

override  method poderFinalEspada(multiplicador){
    poderespada = super(multiplicador) / 2
    return poderespada
}


}
const daga1=new Daga()

class Baculo{
     var poder=0
     method poderbaculo(_poder) {
       poder=_poder
       return poder
     }
}

class Hacha {
    var poder=0
    var  largomango=0
    var pesohoja=0
      method poderFinalhacha() {
            poder=largomango * pesohoja
            return poder
      }
      method mango(_mango) {
         largomango=_mango
      }
        method hoja(_pesohoja) {
         pesohoja=_pesohoja
      
      }
      method espadafinal()=poder
}
const hacha1=new Guerrero()
const hacha2=new Guerrero()


const grupo = #{enano, elfico}
object lebennin inherits Guerrero(objetoelegido=elemneot,cantidaddeobejto=cantidad){
  var cantidad=0
  var elemneot=null
  method puedepasar(objeto)= objeto.cantidadDearmas()>1
        
 method puedepasarengrupo()= grupo.all({persona => self.puedepasar(persona) })

 method requirimenot(_cantidad) {
      cantidad=_cantidad
 }

method requirimenotobjeto(_objeto) {
  elemneot=_objeto
}

method requirimientoelemento(_elemento)= grupo.map({m => m.contador()}).sum() >= cantidad

method requerimientoguerrero() = grupo.filter({ s => s.cantidadDearmas()>1 || s.poder()  })

var vidarrr=0
var poderrrr=0
method vidarequerimiento(_vida) {
  vidarrr= _vida
}
method poderrequerimiento(_poder){
  poderrrr =_poder
      
}

method condicion(objeto) {
    if(objeto.cantidadDearmas()>1){
      return true
    }else if( objeto.poder()>poderrrr){
      return true
    }else if (objeto.vidaactual()>vidarrr){
      return true
    }else{
      return false
    } 
}


}

object minasTirith {

  method puedepasar(objeto)= objeto.cantidadDearmas()>1 && objeto.vidaactual(objeto.vidaactual()-10)

  method puedepasarengrupo()= grupo.all({persona => self.puedepasar(persona) })
}

object lossarnach  {
      method puedepasar(objeto)=true
  
     method puedepasarengrupo()= grupo.all({persona => self.puedepasar(persona) })
 

}
