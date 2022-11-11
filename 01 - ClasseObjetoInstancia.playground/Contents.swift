import UIKit

class Person {
    // Atributos e habilidades pessoais podem ser definidos aqui
}

class Car {
    
    // Caracteristicas
    var color: String?
    var brand: String?
    var model: String?
    
    // Ações/Comportamentos
    func turnOn() {
        print("O carro está em funcionamento")
    }
    
    func speedUp(speed: Int) {
        print("O carro está acelerando \(speed) por hora.")
    }
    
    func turnOff() {
        print("O carro parou de funcionar.")
    }
    
}

let man = Person()
let car = Car()
car.color = "Vermelhor"
car.brand = "Fiat"
car.model = "Pulse"
car.turnOn()
car.speedUp(speed: 30)
car.turnOff()
