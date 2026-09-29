import UIKit

// Array kullanımı

var numaralar = [10,20,30]
var meyveler = [String]() // icerisinde string veriler var ama veri yok henüz

//Veri ekleme

meyveler.append("Elma") // append ekleme metodu
meyveler.append("Armut")
meyveler.append("Nar")

print(meyveler)
print(numaralar)

// Güncelleme
meyveler[0] = "yeni elma"
print(meyveler)

//Insert // bozmadan ekler kaydırır
meyveler.insert("portakal", at: 1)
print(meyveler)

//VERİ OKUMA İŞLEMLERİ

print(meyveler[3])
let m = meyveler[0] // değişkenede aktarabilirz direk böyle
print(m)

print("Boyut : \(meyveler.count)") // boyutunu almak istyiorsanz dizinin count ile
print("Boş kontrol : \(meyveler.isEmpty)") // dizi boş mu onu kontrol ediyoruz

//
//for meyve in meyveler { // meyveler dizisindeki her elemanı tek tek meyveye aktardı
//    print(("Sonuc 1 : \(meyve)"))
//}

for (indeks,meyve) in meyveler.enumerated() { // meyveler dizisindeki her elemanı tek tek meyveye aktardı
    print(("\(indeks). -> \(meyve)")) // ilk degisken indeksi digeri meyveyi isimleri önemsiz değisken gibi düsün // buradaki indeks swift olarak sıfırdan baslatırılır
    //Swift'te enumerated() metodunun tek amacı, bir koleksiyonun (dizi vb.) elemanları üzerinde dönerken hem o anki sırayı (indeksi) hem de elemanın kendisini aynı anda paket halinde sunmaktır.
}

//Remove
meyveler.remove(at: 1) // belirtilen indekdekini siler
print(meyveler)
meyveler.removeAll()
print(meyveler)
print(meyveler.isEmpty)



//Nesne Tabanlı

class Ogrenciler {
    var no : Int?
    var ad : String?
    var sinif :String?
    
    init(no: Int? , ad: String? , sinif: String? ) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var o1 = Ogrenciler(no: 100, ad: "Zeynep", sinif: "9C")
var o2 = Ogrenciler(no: 200, ad: "beyza", sinif: "11Z")
var o3 = Ogrenciler(no: 300, ad: "ahmet", sinif: "12A")


var ogrencilerListesi = [Ogrenciler]() // bu classtan nesneleri tutacak bir array

ogrencilerListesi.append(o1)
ogrencilerListesi.append(o2)
ogrencilerListesi.append(o3)

for o in ogrencilerListesi {
    print("No : \(o.no!) - Ad : \(o.ad!) -  Sınıf : \(o.sinif!) ")
}

// Filtreleme

var f1 = ogrencilerListesi.filter({$0.ad! == "zeyno" || $0.no! > 150}) // $0 her bir ögrenci nesnemizi temsil ediyor , filter kodu ile koşul belirterek filtreleme yapıyoruz

for o in f1 {
    print("Filtreleme 1.5 ")
    print("No : \(o.no!) - Ad : \(o.ad!) -  Sınıf : \(o.sinif!) ")
}



var f2 = ogrencilerListesi.filter({$0.ad!.contains("y")}) // contains iceren demek y harf iceren  z stringler icin !!!

for o in f2 {
    print("Filtreleme 2 ")
    print("No : \(o.no!) - Ad : \(o.ad!) -  Sınıf : \(o.sinif!) ")
}

// Sıralama İşlemleri *--------- Sorting

var s1 = ogrencilerListesi.sorted(by: {$0.no! > $1.no! }) // no lar arasında kıyaslama yap 0 ile 1 temsili sadece koşulu belirtiyoruz büyükten kücüge sırala demek

for o in s1 {
    print("Sayısal olarak büyükten küçüğe")
    print("No : \(o.no!) - Ad : \(o.ad!) -  Sınıf : \(o.sinif!) ")
}


var s2 = ogrencilerListesi.sorted(by: {$0.no! < $1.no! }) // no lar arasında kıyaslama yap 0 ile 1 temsili sadece koşulu belirtiyoruz büyükten kücüge sırala demek

for o in s2 {
    print("Sayısal olarak küçükten büyüğe")
    print("No : \(o.no!) - Ad : \(o.ad!) -  Sınıf : \(o.sinif!) ")
}

var s3 = ogrencilerListesi.sorted(by: {$0.ad! > $1.ad! }) // no lar arasında kıyaslama yap 0 ile 1 temsili sadece koşulu belirtiyoruz büyükten kücüge sırala demek

for o in s3 {
    print("Metinsel olarak büyükten küçüğe")
    print("No : \(o.no!) - Ad : \(o.ad!) -  Sınıf : \(o.sinif!) ")
}


var s4 = ogrencilerListesi.sorted(by: {$0.ad! < $1.ad! }) // no lar arasında kıyaslama yap 0 ile 1 temsili sadece koşulu belirtiyoruz büyükten kücüge sırala demek

for o in s4 {
    print("Metinsel olarak küçükten büyüğe")
    print("No : \(o.no!) - Ad : \(o.ad!) -  Sınıf : \(o.sinif!) ")
}






