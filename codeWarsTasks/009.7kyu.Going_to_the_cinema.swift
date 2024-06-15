import Foundation

func goingToTheCinema() {
    let card = 500
    let ticket = 15
    let perc = 0.9
    print(movie(card: Double(card), ticket: Double(ticket), perc: perc))
}

func movie(card: Double, ticket: Double, perc: Double) -> Int {
    var n = 0
    var systemA = 0.0
    var systemB = card
        
    while ceil(systemB) >= ceil(systemA){
        systemA += ticket
        systemB = (systemB + ticket * pow(perc, Double(n + 1)))
        n += 1
    }
    return n
}
