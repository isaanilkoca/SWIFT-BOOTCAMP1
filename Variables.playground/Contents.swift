//import UIKit
//
//var ogrenciAdi = "isa anil koca"
//var ogrenciYas = 24
//var ogrenciBoy = 1.84
//var ogrenciBasHarf = "i"
//var ogrenciAktifmi = true
//
//print (ogrenciAktifmi)
//
//
//var urun_id : Int = 3416
//var urun_adi : String = "Macbook Pro"
//var  urun_adet : Int = 456
//var urun_fiyat : Int = 34500
//var urun_tedarikci : String = "Apple"
//
//
//print("Ürün id : \(urun_id)") // variable i print icerisinde belirtmek icin


//CONSTANTS - SABITLER

//kotlin - val ,java - final , dart - const olarak adlandırılır

// var değiştirilebilir , let değiştirilemez


//var sayi = 10
//print(sayi)
//sayi = 20
//print(sayi)
//
//
//let isa = 20
//print(isa)

//Type Casting - Tür dönüşümü


// Sayısaldan Sayısala

var i = 42
var d = 56.78

// type casting sayısaldan sayısala
var sonuc1 = Double(i)
var sonuc2 = Int(d)

print(sonuc1)
print(sonuc2)

// sayısaldan metine

var sonuc3 = String(i) // "42"
var sonuc4 = String(d) // "56.78"

print(sonuc3)
print(sonuc4)

//Metinden sayısala

var yazi = "34"

if let sonuc5 = Int(yazi) {
print(sonuc5)
}else{
    print("dönüsüm hatasi")
}


