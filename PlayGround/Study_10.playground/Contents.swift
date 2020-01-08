//8 if else, switch

//MARK: - if
//if <#condition#> {
//    <#statements#>
//} else {
//    <#statements#>
//}

var someInteger = 51

if someInteger < 50 {
    print("<50")
} else if someInteger < 100 {
    print("<100")
} else {
    print("else")
}

//스위프트의 조건에는 항상 Bool 타입이 들어와야합니다

//MARK: - switch

//switch <#value#> {
//case <#pattern#>:
//    <#code#>
//default:
//    <#code#>
//}

var someSwitch = "sun"


switch someSwitch {
case "snow":
    print("🌨")
case "rain", "shower":
    print("🌧")
default:
    print("☀️")
}

var someIntSwitch = 98

switch someIntSwitch {
case 0:
    print("zero")
case 1..<100:
    print("1~99")
case 100:
    print("100")
case 101...Int.max:
    print("over 100")
default:
    print("Unknown")
}

//9 반복문 for - in, while, repeat-while
var integers = [1, 2, 3]
let people = ["fuwax":10, "eric":15, "mike":12]

//MARK: - for -in

//for <#item#> in <#items#> {
//    <#code#>
//}

for integer in integers {
    print(integer)
}

//Dictionary의 item은 key와 value로 구성된 튜플타입입니다.
for (name, age) in people {
    print("\(name) : \(age)")
}

//MARK: while
//while <#condition#> {
//    <#code#>
//}

integers

while integers.count > 0 {
    integers.removeLast()
}

integers

integers = [4, 5, 6]

integers
//MARK: - repeat-while

repeat {
    print(integers[0])
    integers.removeFirst()
} while integers.count > 0

integers

//10 옵셔널
//값이 있을 수도, 없을 수도 있음

//nil값이 들어올 수 있는 가능성 ( 코드만으로 표현가능 )
//  문서/주석 작성 시간을 절약
//전달받은 값이 옵셔널이 아니라면 nil체크를 하지 않더라도 안심하고 사용
//  효율적인 코딩
//  예외 상황을 최소화하는 안전한 코딩

func foo(opNumber num: Int?) -> Int {
    return (num ?? 5) + 1
}

func boo(opNumber num: Int) -> Int {
    return num + 1
}

foo(opNumber: 1)
boo(opNumber: 1)

foo(opNumber: nil)

//Optional = enum + general
//enum Optional<Wrapped> : ExpressibleByNilLiteral {
//    case none
//    case some(Wrapped)
//}
//
//let optionalValue: Optional<Int> = nil
//let optionalValue: Int? = nil

// ! 암시적 추출 옵셔널
// 느낌표 표현
//

var optionalValue: Int! = 100

switch optionalValue {
case .none:
    print("This Optoonal variable is nil")
case .some(let value):
    print("Value is \(value)")
default:
    print("Unknown")
}

optionalValue += 100


var optionalValue2: Int? = 100

switch optionalValue {
case .none:
    print("This Optoonal variable is nil")
case .some(let value):
    print("Value is \(value)")
default:
    print("Unknown")
}

optionalValue2! += 100
optionalValue2

optionalValue2 = nil

optionalValue2 = 100

optionalValue2! += 200
optionalValue2

optionalValue2 = 300
optionalValue2

optionalValue = 300
optionalValue += 200
optionalValue

optionalValue = nil

optionalValue = 300


//11 옵셔널 추출
//Optional unwrapping
// - Optional Bindin
//   - nil체크 + 안전한 값 추출
// - Force Unwrapping
//   - 옵셔널의 값을 강제로 추출


func printName(_ name: [String]) {
    print("Printing name : \(name)")
}

func printName(solName name: String) {
    print("Printing name : \(name)")
}

var korName: [String]?

korName = ["Hana", "Eric"]
korName = nil
if let kor = korName {
    printName(kor)
} else {
    print("This Array is nil")
}


var myName: String? = "fuwax"

printName(solName: myName!)

myName = nil

var myName2: String! = "Eric"

printName(solName: myName2)

myName2 = nil
