//function

func hello(name: String) -> String {
    let message = "Hello~ " + name
    return message
}

let massage = hello(name: "BCH")

print(massage, terminator : "--")



func addTwoNumbers(num1: Int, num2: Int = 100) -> Int {
    let sum = num1 + num2
    return sum
}

addTwoNumbers(num1: 5, num2: 10)
addTwoNumbers(num1: 5)

var sum = 10

func addNumbers(numbers: Int...) -> Int {
    var sum = 0
    
    for num in numbers {
        sum += num
    }
    return sum
}

addNumbers(numbers: 1, 2, 3, 4, 5)


func myInfo() -> (name: String, weight: Int) {
    return ("BCH", 64)
}

let info = myInfo()
print(info.name)
print(info.weight)

func calculate(_ num1: Int, _ num2: Int) -> Int{
    return num1 * num2
}

func calculate(devideFirstNumber num1: Int, _ num2: Int) -> Int{
    return num1 / num2
}

print( calculate(10,  5) )
print( calculate(devideFirstNumber: 10,  5) )


func output() {
    print("Good Morning!")
}
func output(text:String) {
    print(text)
}
func output(text:String, num:Int) {
    print("\(text)\(num)!")
}
output()
output(text: "Good Evening!")
output(text: "Good N", num: 8)

//inout
var number1 = 1
var number2 = 2

func Numbers(num1: Int, num2: inout Int) -> Int {
    num2 = 5
    return num1 * num2
}

Numbers(num1: number1, num2: &number2)

print("\(number1) : \(number2)" )


//Hex
0 == 0x0
255 == 0xff

print(0x100)
65535 == 0xffff

0b1111 == 0xf

0b11111111 == 0xff



