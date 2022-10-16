import UIKit

/* Classes */
class Person {
    // Atributos e habilidades pessoais podem ser definidos aqui.
}
/*
 Declaramos uma classe chamada Person.
 Exemplo no iOS:
 UIView, a principal classe de interface do usuário do iOS, pode ser considerada uma classe.
 */

/* Abstração */
// Entidade
class Car {
    
    // Caracteristicas
    var color: String?
    var brand: String?
    var model: String?
    
    // Ações/Comportamentos
    func turnOn() {
        print("Carro em funcionamento")
    }
    
    func speedUp(speed: Int) {
        print("O carro está acelerando \(speed) por hora.")
    }
    
    func turnOff() {
        print("Carro parou de funcionar")
    }
}

/* Objeto e Instância */
let man = Person() // criamos um objeto de pessoa
/*
 Criamos um objeto da classe Person instanciando-o.
 Exemplo no iOS:
 Quando criamos uma saída de UITableView, criamos um objeto da classe UITableView.
 */
