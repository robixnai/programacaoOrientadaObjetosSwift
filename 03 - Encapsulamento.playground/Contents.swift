import UIKit

/* Encapsulamento */
class Maths {
    let a: Int!
    let b: Int!
    private var result: Int?
    
    init(a: Int,b: Int) {
        self.a = a
        self.b = b
    }
    
    func add() {
        result = a + b
    }
    
    func displayResult() {
        print("Result - \(result ?? 0)")
    }
}
let calculation = Maths(a: 2, b: 3)
calculation.add()
calculation.displayResult()
/*
 Vamos entender esse nosso exemplo:
 Declaramos uma classe de para executar cálculos matemáticos - Maths.
 Declaramos duas variáveis necessárias para a entrada de valores - a e b.
 Inicialize as variáveis - init().
 Declaramos um método para adicionar as duas variáveis - add()
 E então outro método para exibir o resultado - displayResult()
 Nesse nosso exemplo, encapsulamos a variável “result” usando o especificador de acesso “private”.
 Dessa forma escondemos os dados da variável “result” de qualquer intervenção e uso externo.
 */

/* Controle de Acessos */
// No exemplo anterior vimos um especificador de acesso, private. Vamos ver outros
// Acesso open
open class OpenClass {
    open var age: Int = 23
    open func play(sport: String) { }
}
// Acesso public
public class PublicClass {
    public var age: Int = 23
    public func play(sport: String) { }
}
// Acesso internal
internal class InternalClass {
    internal var age: Int = 23
    internal func play(sport: String) { }
}
// Acesso fileprivate
fileprivate class FileprivateClass {
    fileprivate var age: Int = 23
    fileprivate func play(sport: String) { }
}
// Acesso private
private class PrivateClass {
    private var age: Int = 23
    private func play(sport: String) { }
}
