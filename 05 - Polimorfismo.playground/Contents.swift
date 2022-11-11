import UIKit

class Player {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func play() {
        print("Comportamento padrão")
    }
    
}

class Batsman: Player {
    
    override func play() {
        bat()
    }
    
    private func bat() {
        print("\(name) está rebatendo a bola!")
    }
}

class Bowler: Player {
    
    override func play() {
        bowl()
    }
    
    private func bowl() {
        print("\(name) está jogando a bola!")
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

let pedro = Bowler(name: "Pedro")
let maria = Batsman(name: "Maria")
let rioCricket = CricketTeam(name: "Rio Cricket", team: [pedro, maria])
rioCricket.play()
