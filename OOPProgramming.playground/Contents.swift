import UIKit


class Car {
    
    var color : String?
    var speed : Int?
    var isWorking : Bool?
    
    init() {
     print("bos init metodu calıstı")
    }
    
    init(color : String,speed : Int,isWorking : Bool){ // değer atmaa islerinde Car() diyim icine atayabiliyoruz
        self.color = color // self bulundugu sınıfı temsil eder
        self.speed = speed // araba classından gelenleri dısardan gelenleri aktar demek,buraya deger yazdıgımdaız bu degerleri classa aktarıyoruz demektir
        self.isWorking = isWorking // shadowing
        print("Dolu init metodu calıstı")
         
    }
    
    func start (){ // side effect
        isWorking = true
        speed = 5
    }
    
    func stop (){
        isWorking = false
        speed = 0
    }
    
    func hizlandir(kackm: Int){
        speed! += kackm // unwrapped yaparak bunu normal kackm ile calıstırabilirisn
    }
    func yavasla(kackm: Int){
        speed! -= kackm // unwrapped yaparak bunu normal kackm ile calıstırabilirisn
    }
    
    
    func takeInfo (){
        print("---------------")
        print("Renk : \(color!)")
        print("Speed : \(speed!)")
        print("isWorking? : \(isWorking!)")
    }
}

// Nesne oluşturma aşaması

//var bmw = Car() // nesne olusturduk / init calıstırır aslında yani constructor demektir bu bos
 var bmw = Car(color: "red", speed: 270, isWorking: true)
 

//değer atama

//bmw.color = "Kırmızı"
//bmw.speed = 100
//bmw.isWorking = true

// Değer okuma
//
//print("---------------")
//print("Renk : \(bmw.color!)")
//print("Speed : \(bmw.speed!)")
//print("isWorking? : \(bmw.isWorking!)")



bmw.takeInfo()
bmw.stop()
bmw.takeInfo()
bmw.start()
bmw.takeInfo()
bmw.hizlandir(kackm: 50)
bmw.takeInfo()
bmw.yavasla(kackm: 42)
bmw.takeInfo()

// init metoduyla aslınd bunu yaptık , bos constructor alttaki yan idegerleri sonradan atıyorsun , doluda olusturup tek seferde atayabiliyorsun
var sahin = Car() // init calıstırır aslında yani constructor demektir bu bos
//dolu constructor

//var sahin = Car(color: "blue", speed: 150, isWorking: true)

sahin.color = "Mavi"
sahin.speed = 60
sahin.isWorking = true


//
//print("---------------")
//print("Renk : \(sahin.color!)")
//print("Speed : \(sahin.speed!)")
//print("isWorking? : \(sahin.isWorking!)")

sahin.takeInfo()
sahin.start()
sahin.takeInfo()
sahin.stop()
sahin.takeInfo()


class Fonksiyonlar {
    
    // Geri dönüs degeri olmayan void
    
    func selamla1(){
        let sonuc1 = "merhaba isa"
        print(sonuc1)
    }
    // dönüs degeri olan
    func selamla2() -> String {
        let sonuc1 = "merhaba ahmet"
        print(sonuc1)
        return sonuc1
    }
    
    //parametre
    
    func selamla3(isim : String) {
        let sonuc1 = "merhaba \(isim)"
        print(sonuc1)
    }
    
    func toplama (sayi1 : Int , sayi2 : Int) -> Int {
        
        let toplama = sayi1 + sayi2
        
        return toplama
    }
    
    // overloading
    
    func carpma (sayi1 : Int , sayi2 : Int) {
                
        print("çarpma : \(sayi1 * sayi2)")
    }
    
    func carpma (sayi1 : Int , sayi2 : Int,sayi3 : Int) {
                
        print("çarpma : \(sayi1 * sayi2 * sayi3)")
    }
}

let f = Fonksiyonlar()

f.selamla1()

let gelenSonuc  = f.selamla2()
print("Gelen Sonuc : \(gelenSonuc)")


f.selamla3(isim: "ali")

let gelenToplam = f.toplama(sayi1: 14, sayi2: 4)
print(gelenToplam)


/// STATİC DEGİSKENLER VE METOTLAR . !!!!!!!!!!


class ASinifi{
    
   static let x = 10
    
   static  func method() {
        print("metod calısti")
    }
}

 let a = ASinifi()

/*
print(a.method())

ASinifi().x // sanal nesne virtual object olarakta tanımlanabilir isimsiz nesne
*/

print(ASinifi.method())

ASinifi.x

// Enumeration

// enum kolaylaştırma bizim için
enum konserveBoyut {
    case kucuk
    case orta
    case buyuk
}

func ucretHesapla(boyut : konserveBoyut ,adet:Int) {
    
    switch boyut {
    case konserveBoyut.kucuk : print("Fiyat : \(adet * 13) tl")
    case konserveBoyut.orta : print("Fiyat : \(adet * 15) tl")
    case konserveBoyut.buyuk : print("Fiyat : \(adet * 17) tl")

    }
}
ucretHesapla(boyut: .orta, adet: 123)



/////////     Composition

class Kategoriler {
    var kategoriId : Int?
    var kategoriAd : String?
    
    init(kategoriId: Int? , kategoriAd: String? ) {
        self.kategoriId = kategoriId
        self.kategoriAd = kategoriAd
    }
}

class yonetmenler {
    var yonetmenId : Int?
    var yonetmenAd : String?
    
    init(yonetmenId: Int? , yonetmenAd: String? ) {
        self.yonetmenId = yonetmenId
        self.yonetmenAd = yonetmenAd
    }
}


class filmler {
    
    var film_id : Int?
    var film_ad : String?
    var film_yıl : Int?
    var kategori: Kategoriler? // bu composition olur , yukarıdaki classtan bir nesne koyduk sadece string int değil yani yazdıgımız sınıfları tip olarak verdik
    
    var yonetmen : yonetmenler?
    
    init(film_id: Int? , film_ad: String? , film_yıl: Int? , kategori: Kategoriler?,yonetmen:yonetmenler ) {
        
    self.film_id = film_id
    self.film_ad = film_ad
    self.film_yıl = film_yıl
    self.kategori = kategori
    self.yonetmen = yonetmen
    }
}

let k1 = Kategoriler(kategoriId: 1, kategoriAd: "Dram")
let k2 = Kategoriler(kategoriId: 2, kategoriAd: "Komedi")

let y1 = yonetmenler(yonetmenId: 1, yonetmenAd: "Tarantino")
let y2 = yonetmenler(yonetmenId: 2, yonetmenAd: "Al pacino")

let f1 = filmler(film_id: 1, film_ad: "django", film_yıl: 2016, kategori: k1 , yonetmen: y1)

print("Film id \(f1.film_id!)")
print("Film ad \(f1.film_ad!)")
print("Film yil \(f1.film_yıl!)")
print("Film kategori \(f1.kategori!.kategoriAd!)")
print("Film yonetmen \(f1.yonetmen!.yonetmenAd!)")
