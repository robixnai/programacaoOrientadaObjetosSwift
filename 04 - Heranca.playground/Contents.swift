import UIKit

/* Herança */
/*
 Vamos usar a nossa clsse Person que definimos na Etapa 2, com suas propriedade e comportamento.
 Vamos criar um inicializador para as nossa propriedades
 */
class Person {
    var age: Int!
    var gender: String!
    var color: String!
    var maritialStatus: String! // Estado Civil
    
    init(age: Int, gender: String, color: String, maritialStatus: String) {
        self.age = age
        self.gender = gender
        self.color = color
        self.maritialStatus = maritialStatus
    }

    func play(sport: String) {
        print("Esporte: \(sport)")
    }
    
}
// Vamos criar uma nova classe que vai herdar a nossa classe pai Person
class Men: Person {
    
}
let andy = Men(age: 20, gender: "Masculino", color: "Banco", maritialStatus: "Solteiro")
print(andy.age)
/*
 O que fizemos aqui:
 Declaramos uma classe filho Men que herdam a classe Presson.
 E como a classe Men herda da classe pai Person, ela também pode acessar suas propriedades.
 Exemplo no iOS:
 A classe UIButton herda de UIView, portanto, é capaz de acessar suas propriedades como backgroundColor, frame, etc.
 */

/* Sobrecarga de Métodos */
// Crie o seguinte método na classe Person.
func play(instrument: String) {
}
/*
 Agora temos duas funções play com argumentos diferentes.
 Uma pessoa pode praticar um esporte, bem como tocar um instrumento.
 */

/* Substituição de Métodos */
class FootballPlayer: Person {
    
    override func play(sport: String) {
        print("Jogador de \(sport)")
    }
}
let footballPlayer = FootballPlayer(age: 35, gender: "Masculino", color: "Branco", maritialStatus: "Casado")
footballPlayer.play(sport: "futebol")
class Pilot: Person {
    
    override func play(sport: String) {
        print("Piloto de \(sport)")
    }
}
let pilot = Pilot(age: 22, gender: "Masculino", color: "Branco", maritialStatus: "Solteiro")
pilot.play(sport: "formula 1")
