class Corsa{
  const capacidad = 4
  var velocidadMaxima = 150
  var peso = 1300
  var color /*las variables pueden dejarse vacia */

  method color(){
    return color
  }
}

class Renault_kwid{
  var color 
  var tanque = false
  const peso = 1200
  var combustible = "gas"


  method tanque(){
    return tanque
  }

  method color(){
    return color
  }
    method cambiarTanque(){
    if (tanque == false){
      tanque = true
    } else{
      tanque = false
    }
  }

  method capacidad(){
    if (tanque == true){
      return 3
    } else
      return 4
    
  }

  method velocidad(){
    if (tanque == true){
      return 120
    } else{
      return 110
    }
  }

  method peso(){
    if (tanque == true){
      return peso + 150
    } else{
      return peso
    }
  }

 

}

object Trafic{ //incompleto
  var interior = Comodo
  var capacidad = 5
  var peso = 700
  var velocidad = 130
  var motor = Pulenta

  method cambiarMotor(nuevo){
    motor = nuevo
  }

  method velocidad(){
    return motor.velocidad()
  }


  method interiorComodo(){
    if (interior == Popular){
      interior = Comodo
      capacidad = 5
      peso = 700 
    }
  }

  method interiorPopular(){
    if(interior == Comodo){
      interior = Popular
      capacidad = 12
      peso = 1000
    }
  }

  method peso(){
    return interior.peso()
  }

  method capacidad(){
    return interior.capacidad()
  }

  method Pulenta(){

  }

}

object Bataton{
  const peso = 500
  const velocidad = 80

  method peso(){
    return peso
  }

  method velocidad(){
    return velocidad
  }
}

object Pulenta{
  const peso = 800
  const velocidad = 130

  method peso(){
    return peso
  }

  method velocidad(){
    return velocidad
  }


}

object Comodo{

}

object Popular{

}

class dependencia{

  const flotasDeRodados = []
  const cantidadEmpleados


  method agregarAFlota(rodado){
    flotasDeRodados.add(rodado)
  }

  method quitarDeFlota(rodado){
    flotasDeRodados.remove(rodado)
  }

  method estaBienEquipada(){
    return flotasDeRodados.size() >= 3 && flotasDeRodados.all({rodado => rodado.velocidad() >= 100})
  }

  method pesoTotalFlota(){
    return flotasDeRodados.sum({rodado => rodado.peso()})
  }

  method capacidadTotalEnColor(unColor){
    return flotasDeRodados.filter({rodado => rodado.color() == unColor}).sum({rodado => rodado.capacidad()})
  }

  method colorRodadoMasRapido(){
    return flotasDeRodados.max({rodado => rodado.velocidad()}).color()
  }

  method capacidadFaltante(){
    return cantidadEmpleados - flotasDeRodados.sum({rodados => rodados.capacidad()})
  }

  method esGrande(){
    return cantidadEmpleados >= 40 && flotasDeRodados.size() >= 5
  }

}