import UIKit

/* Propiedades */
// Vamos usar a nossa clsse Person da etapa anterior, vamos adicionar algumas propriedades
class Person {
    var age: Int!
    var gender: String!
    var color: String!
    var maritialStatus: String!
}
/*
 Exemplo no iOS:
 A classe UIView tem muitas propriedades de si mesma, por exemplo. frame, backgroundColor, isHidden, etc.
 */

/* Métodos */
// Vamos criar uma nova classe para representar uma pessoa, NewPerson, vamos copiar as propriedades da classe anterior e adicionar um comportamento
class BehaviorPerson {
    var age: Int!
    var gender: String!
    var color: String!
    var maritialStatus: String!
    
    func play(sport: String) {
        // Ecreva aqui como sua instância da pessoa irá jogar.
    }
}

/* Inicializadores */
// Usamos o método init() para criar um inicializar
class Wall {
    init() {
        // execute a inicialização
    }
}
// Podemos usar o inicializar para iciar os atributos da nossa classe
class WhiteWall {
    var length: Double
    
    init() {
        length = 5.5
        print("Criando o objeto wall.")
        print("Length = ", length)
    }
}
var whiteWall = WhiteWall()
// Também podemos passar parâmetros para o nosso inicializaro, para mudar os atributos de nossa classe
class BlackWall {
    var length: Double
    
    init(length: Double) {
        self.length = length
    }
}
var blackWall = BlackWall(length: 10.5)
// Podemos passar parâmetros para iniciar os atributos e executar uma determinada ação
class LongWall {
    var length: Double
    var height: Double
    
    init(length: Double, height: Double) {
        self.length = length
        self.height = height
    }
    
    func calculateArea() -> Double {
        return length * height
    }
}
var longWall1 = LongWall(length: 10.5, height: 8.6)
var longWall2 = LongWall(length: 8.5, height: 6.3)
print("Área da Parede 1: ", longWall1.calculateArea())
print("Área da Parede 2: ", longWall2.calculateArea())
// Sobrecarga do inicializador
class PersonAge {
    var age: Int
    
    init() {
        age = 20
    }
    
    init(age: Int) {
        self.age = age
    }
    
    func getAge() -> Int {
        return age
    }
}
var personAge1 = PersonAge()
var personAge2 = PersonAge(age: 23)
print("Person1 Age:", personAge1.getAge())
print("Person1 Age:", personAge2.getAge())
/* Nos exemplos anteriores, o inicializador que definimos eram os inicializadores primários da classe.
 Esses inicializadores primários também são chamados de inicializadores designados.
 No entanto, também podemos definir um inicializador secundário/suporte para uma classe chamada inicializador de conveniência.
 
 Inicializador de conveniência
 */
class University {
    var name: String
    var rank: String
    
    init(name: String, rank: String) {
        self.name = name
        self.rank = rank
    }
    
    convenience init() {
        self.init(name: "Universidade de São Paulo", rank: "1º")
    }
}
var university1 = University()
print(university1.name)
print("Rank:", university1.rank)
// Inicializador com falha
class File {
    var folder: String
    
    init?(folder: String) {
        if folder.isEmpty {
            print("Folder Not Found")
            return nil
        }
        self.folder = folder
    }
}
var file  = File(folder: "")
if (file != nil) {
    print("Arquivo encontrado com sucesso")
} else {
    print("Erro ao encontrar o arquivo")
}
// No Swift, não somos obrigados a criar um inicializador enquanto trabalhamos com Structs. A linguagem gera automaticamente um memberwise para nós.
struct PersonStruct {
    var name: String
    var age: Int
}
var personStruct = PersonStruct(name: "Pedro", age: 43)
print("Nome:", personStruct.name)
print("Idade:", personStruct.age)
