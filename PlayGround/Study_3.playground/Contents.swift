let dust = 51123123

if dust <= 30 {
    print("아 공기 상쾌하다~~")
}
else if dust > 30 && dust <= 50 {
    print("뭐 이 정도면 나쁘지 않군")
}
else {
  print("나쁜데..?")
}

switch dust {
case 0...10:
    print("악!!!")
case 11...499:
    print("높다!!!")
case 500...:
    print("짱높다!!!")
default:
    print("디폴트~~~")
}

let weather = "장마"
switch weather {
case "맑음":
    print("☀️")
case "흐림":
    print("⛅️")
case "비", "장마", "소나기":
    print("☔️")
case "눈":
    print("🌨")
default:
    print("🌤")
}
