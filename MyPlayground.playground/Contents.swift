// ******************* PART 1: CLASS ***********************
//
// This is an example of classes. Through this example, you can see the drawbacks of class
//

// MARK: - The base class
class Footballer {
  var fullName: String?
  var numberOfGoals: Int?
  init(fullName: String?, numberOfGoals: Int?) {
    self.fullName = fullName
    self.numberOfGoals = numberOfGoals
  }
  func canDribble() {
    print("Yes, I can")
  }
}

// MARK: - Classes
class Striker: Footballer {
  override init(fullName: String?, numberOfGoals: Int?) {
    super.init(fullName: fullName, numberOfGoals: numberOfGoals)
  }
}

class Defender: Footballer {
  override init(fullName: String?, numberOfGoals: Int?) {
    super.init(fullName: fullName, numberOfGoals: numberOfGoals)
  }
  // You can override this function
  override func canDribble() {
    // if you don't want to use default implementation, you could remove this one
    super.canDribble()
    print("Yes, but in general, I am not good ")
  }
}

// Here is an instance
let nesta = Defender(fullName: "Nesta", numberOfGoals: 1)
nesta.canDribble()
//**********************************************************


// ******************* PART 2: PROTOCOL ***********************
// MARK: - Protocols
protocol Principal {
  var fullName: String? { get set }
}

protocol Goals {
  var number: Int? { get set }
}

protocol Skills {
  func canDribble()
}

// MARK: - Extensions
extension Skills {
  func canDribble() {
    print("Yes, I can")
  }
}

// MARK: Structs
struct StrikerV2: Principal, Skills, Goals {
  var fullName: String?
  var number: Int?
  
  func canDribble() {
    print("Yes, I am really good at this")
  }
}

struct DefenderV2: Principal, Skills, Goals {
  var fullName: String?
  var number: Int?
}

struct GoalKeeper: Principal {
  var fullName: String?
}

// MARK: - Instances
// Create some instances
let ronaldo = StrikerV2(fullName: "Ronaldinho", number: 100)
ronaldo.canDribble()

let pepe = DefenderV2(fullName: "Pepe", number: 10)
pepe.canDribble()

let deGea = GoalKeeper(fullName: "De Gea")
//**********************************************************




