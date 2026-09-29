import UIKit

 //Karşılaştırma operatörleri !!!
 //== eşittir , != eşit değildir , >=büyük eşittir , <= küçük eşittir

var x = 90
var y = 80

var a = 40
var b = 50

print("a == b : \(a==b)")
print("a != b : \(a != b)")
print("a >= b : \(a >= b)")
print("a <= b : \(a <= b)")
print("a > b : \(a > b)")
print("a < b : \(a < b)")


// || orda bi tane true true yapar --veya
print("a > b || x > y : \(a > b || x > y)")

//&& orda bi tane false direk false yapar --ve
print("a > b && x > y : \(a > b && x > y)")

// IF KONTROLLERİ

var yas = 24
var isim = "Ahmet"

if  yas > 20 {
    print("büyüktür")
}else {
    print("değildir")
}

if isim == "Ahmets" {
    print("isminiz dogru")
}else {
    print("isminiz yanlis")
}

var ka = "admin"
var s = 123456

if ka == "admin" && s == 123456 {
    print("Hoşgeldiniz")
}else{
    print("Hatalı giriş")
}

var sonuc = 11

if sonuc == 9 || sonuc == 10 {
    print("Sonuç 9 veya 10 dur")
}else{
    print("Sonuç 9 veya 10 değildir")
}

//Switch , Kotlin ( When )
var day = 9

switch day {
    case 1 : print("Pazartesi")
    case 2 : print("Salı")
    case 3 : print("Çarşamba")
    case 4 : print("Perşembe")
    case 5 : print("Cuma")
    case 6 : print("Cumartesi")
    case 7 : print("Pazar")
    default : print("Böyle bir gün yok")
}

//Döngüler
//1,2,3
for x in 1...3 {//Kotlin 1..3
  print("Döngü 1 : \(x)")
}

//10 ile 20 , 5 er artış
for a in stride(from: 10, through: 20, by: 5) {
    print("Döngü 2 : \(a)")
}

//20 ile 10 , 5 er azalış
for b in stride(from: 20, through: 10, by: -5) {
    print("Döngü 3 : \(b)")
}

//1,2,3
var sayac = 1

while sayac < 4 {
    print("Döngü 4 : \(sayac)")
    sayac+=1//sayac = sayac + 1
}

for i in 1...5 {
    if i == 3 {
        break // break direk döngüyü durdurur
    }
    print("Döngü 5 : \(i)")
}

for i in 1...5 {
    if i == 3 {
        continue // continue bulundugu değeri pas geçer döngü devam eder
    }
    print("Döngü 6 : \(i)")
}



    





