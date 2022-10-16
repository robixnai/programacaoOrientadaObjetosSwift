import UIKit

/* Polimorfismo */
// Vamos criar alguns exemplos e depois discutir
class Player {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func play() { }
}

class Batsman: Player {
    
    override func play() {
        bat()
    }
    
    private func bat() {
        print("\(name) está rebatendo 🏏")
    }
}

class Bowler: Player {
    
    override func play() {
        bowl()
    }
    
    private func bowl() {
        print("\(name) está jogando boliche 🏏")
    }
}

class CricketTeam {
    let name: String
    let team: [Player]
    
    init(name: String, team: [Player]) {
        self.name = name
        self.team = team
    }
    
    func play() {
        team.forEach { $0.play() }
    }
}
let maria = Batsman(name: "Maria")
let pedro = Bowler(name: "Pedro")
let rioCricket = CricketTeam(name: "Rio Cricket", team: [maria, pedro])
rioCricket.play()
/*
 Criamos uma classe Player e herdamos as classes Batsman e Bowler que substituem a função play() de sua classe pai.
 A classe CricketTeam tem um nome e consiste em diferentes jogadores.
 Inicializamos um objeto Batsman e um Bowler e os adicionamos ao time de críquete rioCricket.
 Quando o time rioCricket começa a jogar invocando play(), você pode ver Maria começar a rebater enquanto Pedro começa a jogar boliche porque o primeiro é um batedor enquanto o segundo é um jogador de boliche.
 Para a classe CricketTeam, todos os jogadores pertencem à classe Player.
 Não importa quais subclasses eles herdam ou como eles jogam.
 */
