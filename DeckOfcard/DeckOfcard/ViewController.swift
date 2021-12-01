import UIKit

enum Color{
    case Red
    case Blue
    case Green
}

class Player {
    var name: String = ""
    var hand : [Card] = []
    
    init(name: String, hand: [Card]){
        self.hand = hand
        self.name = name
        print("Player Name \(name)")
    }
        
    func draw (deck:Deck)->Card{
        let user = deck.Deackdeals()
        self.hand.append(user)
        return user
    }
    func roll()->Int{
        Int.random(in: 1...6)
    }
    func  equalcard(color:Color,number:Int)->Int{
        
        var count:Int=0
        for card in self.hand{
            if card.color == color && card.Roll == number{
                count += 1
                
            }
        }
        return count
        
    }
        
    
        
    }
class Deck {
    
    var card = [Card]()
    init(){
        for _ in 1...10{
            let cardred = Card(color: .Red)
            self.card.append(cardred)
        }
        
        for _ in 1...10{
            var cardblue = Card(color: .Blue)
            self.card.append(cardblue)
        }
        
        for _ in 1...10{
            var cardgreen = Card(color: .Green)
            self.card.append(cardgreen)
        }    }
    // remove and return  last element
    func Deackdeals()->Card{
        self.card.removeLast()
    }
    func DeackShuffle(){
        self.card.shuffle()
    }
    func DeackIsEmpty()->Bool{
        self.card.isEmpty
    }
    
    
  
}


//this is for deck
  let  test2 = Deck()

  for card in test2.card {
      print("colors: \(card.color),ROLL:\(card.Roll)")
  }

  test2.DeackShuffle()
  for card in test2.card{
      print("color:\(card.color),roll\(card.Roll)")
  }

  print("total card \(test2.card.count)")
      let deals = test2.Deackdeals()
  print("color:\(test2.color),roll:\(test.Roll)")
  print("total"\(test2.card.count))

   





struct Card{
    var color: Color
    var Roll :Int
    
    init(color:Color){
        self.color = color
        switch color{
        case .Red:
            self.Roll=Int.random(in: 1...2)
        case .Blue:
            self.Roll=Int.random(in: 3...4)
        case .Green:
            self.Roll=Int.random(in: 4...6)
        }
    }
 

    //this is for card
    let test = Card(color: .Blue)
      print("color: \(test.color),roll:\(test.Roll)")

}


