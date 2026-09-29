import UIKit

// Set

var meyveler = Set<String>() // set tanımlaması böyle olacak

//Veri ekleme

meyveler.insert("elma") // setlerde ekleme insert ile insert icine bir yere ekle demek oradan geliyor zaten
meyveler.insert("armut")
meyveler.insert("nar")
print(meyveler)

meyveler.insert("amasya elması")

print(meyveler)


for (indeks,meyve) in meyveler.enumerated() {
    print("indeks : \(indeks) -- Meyve : \(meyve)")
}

print("Boyut : \(meyveler.count)")
print("Boyut : \(meyveler.isEmpty)")

// Silme İşlemleri

meyveler.remove("elma")
 print(meyveler)

meyveler.removeAll()
 print(meyveler)

//Dictionary -- HashMap - Map

var iller = [Int:String]() // Dictionary tanımlaması böyle

//Veri ekleme

iller[16] = "Bursa"
iller[34] = "Istanbul"
iller[33] = "Mersin"
print(iller)

//Veri okuma

print(iller[16]!)

//Veri güncelleme

iller[16] = "Yeni Bursa"
print(iller)

for(anahtar,deger) in iller {
    print("\(anahtar) -> \(deger)") // soldaki degerin swift key sagdakinin value oldugunu anlar böyle çalışır !!
}

// Veri Silme
iller.removeValue(forKey: 16)
print(iller)



