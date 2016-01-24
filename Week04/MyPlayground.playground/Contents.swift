//: Ejercicio Week04

import UIKit

enum Velocidades: Int {
    case Apagada = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 150
    
    init()
    {
        self = .Apagada
    }
    
    
}

class Auto {
    
    var velocidad = Velocidades()
    
    func cambioDeVelocidad()->(actual : Int, velocidadEnCadena: String)
    {
        var texto : String = "";
        var valor = Velocidades();
        valor  = self.velocidad
        
        switch (self.velocidad) {
        case Velocidades.Apagada:
            self.velocidad = Velocidades.VelocidadBaja;
            texto = "Apagada";
        case Velocidades.VelocidadBaja:
            self.velocidad = Velocidades.VelocidadMedia;
            texto = "VelocidadBaja";
        case Velocidades.VelocidadMedia:
            self.velocidad = Velocidades.VelocidadAlta;
            texto = "VelocidadMedia";
        case Velocidades.VelocidadAlta:
            self.velocidad = Velocidades.VelocidadMedia
            texto = "VelocidadAlta";
            
        }
        
        return (actual: valor.rawValue, velocidadEnCadena:texto)
    }
}

var auto = Auto()

for (var i = 0; i < 20; i++) {
    var result = auto.cambioDeVelocidad();
    print(result.actual, result.velocidadEnCadena)
}

