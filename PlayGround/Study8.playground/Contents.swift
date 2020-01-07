var radius: Double = 10.0
let pi = 3.1415926535

func area(r: Double) -> Double {
    return r * r * pi
}

area(r: 10.0)
area(r: 20.0)
area(r: 30.0)
 
class Circle {
    var radius : Double
    let pi = 3.1415926535
    
    init() {
        radius = 10.0
    }
    
    init(radius: Double) {
        self.radius = radius
    }
    
    
    
    func area() -> Double {
        return radius * radius * pi
    }
}

let circle = Circle.init(radius: 40) //Circle.init()
circle.area()

circle.radius = 20.0
circle.area()

circle.radius = 30.0
circle.area()

var weight = Int.init(65) // = Int(65)
var message = String.init("Hello") // = String("Hello")

var evenNumber = [2, 4, 6, 8]
var evenNumber2 = [Int].init(arrayLiteral: 2, 4, 6, 8)
var evenNumber3 = [Int](arrayLiteral: 2, 4, 6, 8)

var oddNumbers = Array<Int>.init()

//Inheritance

class NoteBook{
    var name = ""
    
    func turnOn() {
        print("Booting...")
    }
}

class MacBook: NoteBook {
    var hasTouchBar = true
    var macOSVersion = "10.13"
    
    func turnOnTouchBar() {
        
    }
    
    override func turnOn() {
        super.turnOn()
        print("\(name)'s current macOSVersion is \(macOSVersion)")
    }
}

let macBook = MacBook()
macBook.name = "MacBook Pro"
macBook.turnOn()


class Foo {
    var radius = 0
    
    init() {
        print("Initializer called")
    }
    
    deinit {
        print("Deinitializer called")
    }
}

var foo1 = Foo()
var foo2 = foo1

foo2.radius = 10

print(foo1.radius)
print(foo2.radius)


//enum

enum AppleOS: Int{
    case iOS = 0
    case macOS
    case tvOS
    case watchOS
}

var osType1: AppleOS = .iOS
print(osType1.rawValue)

func printAppleDevice(osType: AppleOS){
    switch osType {
    case .iOS:
        print("iPhone")
    case .macOS:
        print("MacBook")
    case .tvOS:
        print("Apple TV")
    case .watchOS:
        print("Apple watch")
    }
}

printAppleDevice(osType: osType1)
