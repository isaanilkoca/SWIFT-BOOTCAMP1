import UIKit

class Ev {

    var pencereSayisi : Int
    
    init(pencereSayisi: Int) {
        self.pencereSayisi = pencereSayisi
    }
}

class Saray : Ev {
    
    var kuleSayisi : Int
    init(kuleSayisi: Int,pencereSayisi:Int) { // dısarıdan istemek daha dinamik
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
    
}

class villa : Ev {
    
    var garajVarMi : Bool
    init(garajVarMi: Bool,pencereSayisi:Int) {
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)

    }
}


let topkapiSarayi = Saray(kuleSayisi: 5, pencereSayisi: 300)
let bahceisa = Saray(kuleSayisi: 3, pencereSayisi: 300)
let evisa = Saray(kuleSayisi: 2, pencereSayisi: 300)


print(topkapiSarayi.kuleSayisi)
print(topkapiSarayi.pencereSayisi)


print(bahceisa.kuleSayisi)
print(bahceisa.pencereSayisi)

print(evisa.kuleSayisi)
print(evisa.pencereSayisi)


// Override

class Hayvan {
    
    func sesCıkar(){
        print("sesim yok ")
    }
    
}


class Memeli : Hayvan {
    
   
}

class Kedi : Memeli  {
    override func sesCıkar() {
        print("miyavvvv")
    }
    
}

class Köpek : Memeli {
    override func sesCıkar() {
        print("havhavhavhahvva")
    }
    
}

let hayvan  = Hayvan()
let memeli = Memeli()
let kedi = Kedi()
let kopek = Köpek()

hayvan.sesCıkar() // kalitim yok , kendi fonksiyonunu çalıştırdı
memeli.sesCıkar() // kalitim var , üst sınıfın fonksiyonunu çalıştırdı
kedi.sesCıkar() // kalitim yok , kendi metodunu çalıştırdı
kopek.sesCıkar() // kalitim yok , kendi metodunu çalıştırdı


// Tip Dönüşümü

// UPCASTING

var ev = Saray(kuleSayisi: 4, pencereSayisi: 4) as Ev // sarayı üst klas olan eve dönüştürdük upcasting

//DownCasting

var saray = Ev(pencereSayisi: 6) as? Saray

// Tip kontrolü

//if ev is Ev { // şu nesne evden mi türedi demek
//    
//    print("Nesne ev sınıfındandır")
//    
//}else {
//    
//    print("Nesne ev sınıfından değildir.")
//}

//Protocol



protocol MyProtocol {
    var degisken : Int {get set} // get deger atayabiliriz set okuyabiliriz demek
    func metod1()
    func metod2() -> String
}
class ClassA : MyProtocol {
    
    var degisken : Int = 10

    func metod1() {
        print("metod1 calisti")
    }
    
    func metod2() -> String {
        return "metod2 calısti"
    }
    
}

var a = ClassA()

print(a.degisken)
a.metod1()
print(a.metod2())


//Extensions

extension Int { // Int classına aktarmak istediğimiz fonksiyonuz yazıyoruz
    
    func carp (sayi: Int) -> Int {
        
        return self * sayi  // self integeri temsil ediyor
        
    }
    
}

let x = 3.carp(sayi: 5)
print(x)

// Closure

let ifade = { // süslü parantez kodlama blogunu temsil eder
    print("merhaba isa anil koca")
}
ifade() // bunuda ifade degiskenine aktario parantezli sekilde kullanabiliriz
