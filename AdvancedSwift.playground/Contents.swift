import UIKit

func kisiTanimla (ad: String){
    if ad == "Ahmet" {
        print("merhaba lo")
    }else {
        print("unknown player")
    }
}

kisiTanimla(ad: "Ahmet")


func kisiTanimla2 (ad: String){
   
    guard ad == "Ahmet" else { // buradaki koşul false olursa calısacak asagısı
        print("unknown player")
        return // bu fonk calısmasını durdurur direkt
    }
    print("merhaba lo") // sorun yoksada bura eşittir

}
kisiTanimla2(ad: "Ahmetx")



//Hata Ayiklama  Do try catch **********--------

//1.Compile Error : Editör Hataları

//let x = 10
//x = 40 // calısırken editörün verdigi hatalar

//2.Runtime Error : Exception : Çalışma sırasında oluşan hatalar , run ettigimizde olusan uygulama çökme hataları

enum Hatalar : Error {
    case sifiraBolunmeHatasi
}


func bolme(sayi1:Int,sayi2:Int) throws -> Int { // throws yazmak bunda hata oluşabilir demek
    
    if sayi2 == 0 {
        throw Hatalar.sifiraBolunmeHatasi
    }
    return sayi1 / sayi2
}


do {
    let sonuc = try bolme(sayi1: 10, sayi2: 0)
    print(sonuc)
}catch Hatalar.sifiraBolunmeHatasi {
    print("Sayi sifira bölünemez")
}


let sonuc1 = try? bolme(sayi1: 10, sayi2: 5) // eğer burada hata olursa sonuc nil olur

if let temp = sonuc1 {
    print(temp)
}else {
    print("Sayi sifira bölünemez")
}


