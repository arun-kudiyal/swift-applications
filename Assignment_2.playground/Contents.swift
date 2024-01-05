// Q.1 :-
func countVowels(str:String) -> Array<Int> {
    var noOfVowels:Int = 0
    var noOfConsonents:Int = 0
    var strArr = Array(str)
    for char in str {
        if(char == "a" || char == "A" || char == "e" || char == "E" || char == "i" || char == "I" || char == "o" || char == "O" || char == "u" || char == "U") {
            noOfVowels += 1
        } else {
            noOfConsonents += 1
        }
    }
    let arr = [noOfVowels, noOfConsonents]
    return arr
}
var result:[Int] = []
result = countVowels(str: "SomeRandomString")
print("No of Vowels \(result[0])")
print("No of Consonants \(result[1])")


// Q.2 :-
func pizzaOrdered(name:String, quantity:Int, coupon:String) -> Double {
    var total:Double = 999
    if(name == "Cheese Burst" && quantity > 5) {
        total -= (10/100) * total
    }
    return total;
}
print( pizzaOrdered(name: "Cheese Burst", quantity: 6, coupon:"SomeCoupon") )

// Q.3:-
struct Pizza {
    var name:String
    var toppings:[String]
    init(name:String, toppings:[String]) {
        self.name = name
        self.toppings = toppings
    }
    func getPizzaDetails() -> Void {
        print("\(self.name) is being preparing...")
        print("Toppings added are as follows - ")
        for topping in self.toppings {
            print(topping)
        }
    }
}
