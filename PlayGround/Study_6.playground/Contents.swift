
var toDoDic = [17 : "Paly", 25 : "Watch Movies", 28 : "Travel"]
var toDoDic2 : Dictionary<Int, String> = [17 : "Paly", 25 : "Watch Movies", 28 : "Travel"]


toDoDic[17]

toDoDic[1] = "Study"

print(toDoDic)

toDoDic.removeValue(forKey: 1)
print(toDoDic)

toDoDic[17] = nil
print(toDoDic)

for (key, value) in toDoDic2 {
    print("key \(key), value \(value)")
}

for key in toDoDic2.keys {
    print(key)
}

for value in toDoDic2.values{
    print(value)
}

print(toDoDic2)
toDoDic.removeAll()
print(toDoDic)
