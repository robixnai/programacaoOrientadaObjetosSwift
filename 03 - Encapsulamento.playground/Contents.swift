import UIKit

class Maths {
    let a: Int!
    let b: Int!
    
    // Encupsulado
    private var result: Int?
    
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
    
    func add() {
        result = a + b
    }
    
    func displayResult() {
        print("Result = \(result ?? 0)")
    }
}
let calculation = Maths(a: 2, b: 3)
calculation.add()
calculation.displayResult()

open class OpenClass {
    open var age: Int = 23
    open func play(sport: String) {}
}

public class PublicClass {
    public var age: Int = 23
    public func play(sport: String) {}
}

internal class InternalClass {
    internal var age: Int = 23
    internal func play(sport: String) {}
}

fileprivate class FileprivateClass {
    fileprivate var age: Int = 23
    fileprivate func play(sport: String) {}
}

private class PrivateClass {
    private var age: Int = 23
    private func play(sport: String) {}
}
