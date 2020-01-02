
for i in 1...10 {
    print(i)
}

for i in stride(from: 1, to: 10, by: 2) {
    print(i)
}

for i in stride(from: 10, to: 1, by: -2) {
    print(i)
}


for i in 2...9{
    print("\(i)단 시작")
    for j in 1...9{
//        print(String(i) + " X " + String(j) + " = " + String(i*j))
        print("\(i) X \(j) = \(i*j)")
    }
}

var i = 0
while i < 10 {
    i += 1
    print(i)
}

i = 0
repeat {
    i += 1
    print(i)
} while i < 10
