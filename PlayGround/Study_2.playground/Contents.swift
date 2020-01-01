//인프런 최완택 강사님 영상 보고 작성했습니다.

//산술 연산자
var weight = 65
weight = weight + 10
weight = weight - 10
weight = weight * 10
weight = weight / 10
weight = weight % 10

weight = 65
weight += 10
weight -= 10
weight *=  10
weight /= 10
weight %= 10

//비교 연산자
// <, >, ==, !=
let age = 10
let isAdult = age >= 20
let 중1 = age == 10
if 중1 {
    print("Hello Middle")
} else {
    print("else")
}

//논리연산자
//&&, ||, !
//조건식1 && 조건식2 => 두 가지 조건식 모두 true일 때 결과 true
true && true
//조건식1 || 조건식2 => 두 가지 조건식 중 하나 이상 true일 때 결과 ture
true || false
//! => ture, false 바꿈
let isTest = true
!isTest
let 초등학생 = age >= 8 && age <= 13
