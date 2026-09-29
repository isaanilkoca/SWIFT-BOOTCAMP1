import UIKit

class Odev2 {
    //1. soru --------------------------------------------------
    func mileDonustur(km: Double) -> Double {
        let mile = km * 0.621
        return mile
    }
    //2. soru --------------------------------------------------

    func alanHesapla (kısaKenar : Int,uzunKenar : Int) {
        let alan = kısaKenar * uzunKenar
        print("didgörtgenin alanı = \(alan)")
    }
    //3. soru --------------------------------------------------
    func faktoriyelHesapla(sayi : Int) -> Int {
        var sonucFaktoriyel = 1
        
        if sayi > 1 {
            for i in 2...sayi{
                sonucFaktoriyel *= i
            }
        }
        return sonucFaktoriyel
    }
    //4. soru --------------------------------------------------
    func eHesapla (kelime : String) {
        var sayac = 0
        
        for harf in kelime {
            
            if harf == "e" || harf == "E" {
                sayac += 1
            }
        }
        print("bu \(kelime) kelimesinde e  harfi sayısı \(sayac) ")
    }
    //5. soru --------------------------------------------------

    func icAcıHesapla (kenarsayisi : Int) -> Int {
       let aci = ((kenarsayisi - 2) * 180 / kenarsayisi)
       return aci
       }
    //6. soru --------------------------------------------------
    
    func maasHesapla (günSayisi : Int) -> Int {
        
        let toplamSaat = günSayisi * 8
        
        if toplamSaat <= 150 {
        return toplamSaat * 40
        }else {
        let normalUcret  = 150 * 40
        let mesaiSaati = toplamSaat - 150
        let mesaiUcreti = mesaiSaati * 80
            
            return normalUcret + mesaiUcreti
        }
    }
    //7. soru --------------------------------------------------

    func otoparkUcretiHesapla (otoparkSüresi : Int) -> Int {
    
        if otoparkSüresi <= 1 {
            return 50
        }else {
            let asanSure = otoparkSüresi - 1
            let toplamUcret = 50 + (asanSure * 10)
            return toplamUcret
        }
       
    
    }
}


// 1. ödev cıktısı -----------------------------------------------------

let mile = Odev2()
let sonuc = mile.mileDonustur(km: 100.0)
print(sonuc)

// 2. soru cıktısı

let alan = Odev2()
alan.alanHesapla(kısaKenar: 20, uzunKenar: 40)
// 3. soru cıktısı

let faktoriyel = Odev2()
let faktoriyelSayi = faktoriyel.faktoriyelHesapla(sayi: 5)
print(faktoriyelSayi)

// 4. soru cıktısı

let eKelimesayisi = Odev2()
eKelimesayisi.eHesapla(kelime: "gelecek gelmeyecek")

// 5. soru cıktısı
let soru3 = Odev2()
let kareAci = soru3.icAcıHesapla(kenarsayisi: 4)
print(kareAci)

// 6. soru cıktısı

let soru4 = Odev2()

let maas1 = soru4.maasHesapla(günSayisi: 15)
print("15 gün icin maas ücreti",maas1)

let maas2 = soru4.maasHesapla(günSayisi: 25)
print("25 gün icin maas ücreti",maas2)

// 7. soru cıktısı


let soru5 = Odev2()

print(soru5.otoparkUcretiHesapla(otoparkSüresi: 1))
print(soru5.otoparkUcretiHesapla(otoparkSüresi: 3))
print(soru5.otoparkUcretiHesapla(otoparkSüresi: 7))






