func greeting(friend: String, me: String = "gihyun")
{
  print("Hello \(friend)! I'm \(me)")
}

greeting(friend: "hana") // Hello hana! I'm gihyun

//전달인자 레이블
//매개변수의 역할을 좀 더 명확하게 하거나
//함수 사용자의 입장에서 표현하고자 할 때 사용한다.
func greeting(to friend: String, from me: String){
  print("Hello \(friend)! I'm \(me)")
}

//함수를 호출할 때에는 전달인자 레이블을 반드시 사용해야 한다.
greeting(to: "hana", from: "gihyun")

//가변 매개변수
func sayHelloToFriends(me: String, friends: String...) -> String{
  return "Hello \(friends)! I'm \(me)"
}
print(sayHelloToFriends(me: "gihyun", friends: "hana", "eric", "wing"))
//Hello ["hana", "eric", "Wing"]!  I'm gihyun!

print(sayHelloToFriends(me: "gihyun"))
//Hello []! I'm gihyun!

//스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어이다.
//스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장이 가능
//매개변수를 통해 전달할 수도 있다.

//반환값은 생략할 수가 없다. 반환값이 없다면 Void 라고 명시해줘야 한다.
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "gihyun") // Hello eric! I'm gihyun

someFunction = greeting(friend:me:)
someFunction("eric", "gihyun") // Hello eric! I'm gihyun

//타입이 다른 함수는 할당할 수 없다.
//someFuction = sayHelloToFriends(me: Friends:) // error!

func runAnother(function: (String, String) -> Void){
  function("jenny", "mike")
}

runAnother(function: greeting(friend:me:))
//Hello jenny! I'm mike

runAnother(function: someFunction)
//Hello jenny! I'm mike
