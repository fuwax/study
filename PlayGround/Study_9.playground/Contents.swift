//1 이름짓기, 콘솔로그, 문자열 보간법

let age: Int = 10
"안녕하세요! 저는 \(age)살입니다"
"안녕하세요! 저는 \(age+5)살입니다"

print("안녕하세요! 저는 \(age)살입니다")
print("\n#######################\n")

class Person{
    var name: String = "fuwax"
    var age: Int = 10
}

let fuwax: Person = Person()

print(fuwax)
print()
dump(fuwax)


//2 상수와 변수
let constant:String = "차후에 변경이 불가능한 상수 let"
var variable:String = "차후에 변경이 가능한 변수 var"

variable = "변수는 이렇게 차후에 다른 값을 할당할 수 있지만"
//constant = "상수는 차후에 값을 변경할 수 없습니다"

//상수 선언 후에 나중에 값 할당하기
//나중에 할당하려고 하는 상수나 변수는 타입을 꼭 명시
let sum: Int
let inputA:Int = 100
let inputB:Int = 200

//선언 후 첫 할당
sum = inputA + inputB

// sum = 1 그 이후에는 불가능

//변수도 가능
var nickName: String

nickName = "fuwax"

nickName = "팍스"

//3 기본 데이터 타입
//Bool, Int, UInt, Float, Double, Charater, String

//Bool
var someBool: Bool = true
someBool = false

//Int
var someInt:Int = -100

//UInt
var someUInt:UInt = 100

//Float
var someFloat:Float = 3.14

//Double
var someDouble:Double = 3.14
someDouble = Double(someFloat)

//Charater
var someCharater:Character = "🇰🇷"

//String
var someString:String = "fuwax"
someString += " is good-locking"


//4 Any AnyObject, nil
/*
 Any - Swift의 모든 타입을 지칭하는 키워드
 AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
 nil - 없음을 의미하는 키워드
 */

//MARK: - Any
var someAny: Any
someAny = "어떤 타입도 수용 가능합니다"
someAny = 123.12

//MARK: - AnyObject
class SomeClass {}

var someAnyObject: AnyObject = SomeClass()

//MARK: - nil
//someAny = nil
//someAnyObject = nil


//5 컬렉션 타입
/* Array Dictionary, Set */

/*
 Array - 순서가 있는 리스트 컬렉션
 Dictionary - 키와 값의 쌍으로 이루어진 컬렉션
 Set - 순서가 없고, 멤버가 유일한 컬렉션
 */

//MARK: - Array
//빈 Int Array 생성
var integers:Array<Int> = Array<Int>()
integers.append(1)
integers.append(100)

integers.contains(100)
integers.contains(99)

integers.remove(at: 0)
integers.removeLast()
integers.removeAll()

integers.count

//integers[0]

//빈 Double Array 생성
var doubles: Array<Double> = [Double]()

//빈 String Array 생성
var strings: [String] = [String]()

//빈 Character Array 생성
var characters: [Character] = []

//let을 사용하여 Array를 선언하면 불변
let immutableArray = [1, 2, 3]


//MARK - Dictionary
//Key가 String이고 Value가 Any인 빈 Dictionary 생성
var anyDictionary: Dictionary<String, Any> = [String:Any]()

anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100

anyDictionary

anyDictionary["someKey"] = "dictionary"
anyDictionary

anyDictionary.removeValue(forKey: "anotherKey")
anyDictionary["someKey"] = nil
anyDictionary

let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name": "fuwax", "gender": "male"]

//MARK - Set

//빈 Int Set 생성
var integerSet: Set<Int> = Set<Int>()
integerSet.insert(1)
integerSet.insert(100)
integerSet.insert(99)
integerSet.insert(99)
integerSet.insert(99)

integerSet
integerSet.contains(1)
integerSet.contains(2)

integerSet.remove(100)
integerSet.removeFirst()

integerSet.count

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

let union: Set<Int> = setB.union(setA)
let sortedUnion: [Int] = union.sorted()

let intersectionA: Set<Int> = setA.intersection(setB)
let intersectionB: Set<Int> = setB.intersection(setA)

let subtractingA: Set<Int> = setA.subtracting(setB)
let subtractingB: Set<Int> = setB.subtracting(setA)

var testArray: [Int] = union.reversed()
testArray
testArray.sort()


//6 함수
//MARK: - 함수의 선언

//MARK: 한수선언의 기본형태
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
//     함수 구현부
//     return 반환값
//}

func sum(a: Int, b: Int) -> Int {
    return a + b
}

sum(a:10, b:20)

//MARK: 반환값이 없는 함수
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> Void {
//     함수 구현부
//     return
//}

func printMyName(name: String) -> Void {
    print(name)
}

printMyName(name: "fuwax")

//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) {
//     함수 구현부
//     return
//}

func printYourName(name: String) {
    print(name)
}

printYourName(name: "Jhon")


//MARK: 매개변수가 없는 함수
//func 함수이름() {
//     함수 구현부
//     return
//}

func maximumIntegerValue() -> Int {
    return Int.max
}

maximumIntegerValue()

//MARK: 매개변수와 반환값이 없는 함수
//func 함수이름() -> Void {
//     함수 구현부
//     return
//}

func printLoading() -> Void {
    print("Loading...")
}

printLoading()

//func 함수이름() {
//     함수 구현부
//     return
//}

func printError(){
    print("Error...")
}

printError()

//7 함수 고급

//MARK: - 매개변수 기본값

// 기본값을 갖는 매개변수는 매개변수 목록 중에 뒤쪽에 위치하는 것이 좋습니다
//func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값 ...) -> 반환타입 {
//     함수구현부
//     return 반환값
//}

func greeting(friend: String, me: String = "fuwax") {
    print("Hello \(friend)! I'm \(me) ~~")
}

greeting(friend: "Hana")
greeting(friend: "John", me: "Eric")

//MARK: - 전달인자 레이블

//전달인자 레이블은 함수를 호출할 때
//매개변수의 역할을 좀 더 명확하게 하거나
//함수 사용자의 입장에서 표현하고자 할 때 사용합니다.
//func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
//     함수구현부
//     return 반환값
//}

func greeting(to friend: String, from me: String) -> Void {
    print("Hello \(friend)! I'm \(me) ~~")
}

greeting(to: "Hana", from: "fuwax")

//MARK: - 가변 매개변수

//전달 받을 값의 개수를 알기 어려울 때 사용할 수 있습니다.
//가변 매개변수는 함수당 하나만 가질 수 있습니다.

//func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입...) -> 반환타입 {
//     함수구현부
//     return 반환값
//}

func sayHelloToFriends(ME me: String = "fuwax", FRI friend: String...) -> String {
    return "Hello \(friend)! I'm \(me)!"
}

print(sayHelloToFriends(ME: "fuwax", FRI: "Hana", "Eric", "Devid"))
print(sayHelloToFriends(ME: "fuwax"))
print(sayHelloToFriends(FRI: "Baek", "Lee", "Kim"))


//MARK: - 데이터 타입으로서의 함수
//스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어닙니다.
//스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장이 가능하고
//매개변수를 통해 전달할 수도 있습니다.

//MARK: 함수의 타입표현
//반환타입을 생략할 수 없습니다
//(매개변수1타입, 매개변수2타입 ...) -> 반환타입
var someFunc: (String, String) -> Void

func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

func foo(pa: String, pb: String) -> String {
    return pa + " / " + pb
}

var someFunction: (String, String) -> String
//var someFunction: (String, String) -> Void = greeting(to:from:)
var someFunction2: (String, String) -> Void = greeting(friend:me:)
someFunction = foo(pa:pb:)
print(someFunction("Hello", "HiHi"))

runAnother(function: greeting(friend:me:))
