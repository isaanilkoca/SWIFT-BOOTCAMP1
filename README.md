# SWIFTUI BOOTCAMP

iOS bootcamp sürecinde işlediğim Swift konularının tutulduğu playground arşivi. Her `.playground` dosyası tek bir konuyu baştan sona, çalıştırılabilir örnekler ve satır içi Türkçe notlarla ele alıyor. Temel değişken tanımlarından başlayıp OOP, protocol/extension ve hata yönetimine kadar ilerleyen bir sırayla düzenlendi.

- **Dil / sürüm:** Swift 6
- **Hedef platform:** iOS
- **Ortam:** Xcode Playground (`executeOnSourceChanges` açık)

## Önerilen çalışma sırası

| # | Playground | Konu |
|---|---|---|
| 1 | [`Variables.playground`](Variables.playground/Contents.swift) | Değişkenler, sabitler, type casting |
| 2 | [`StandartProgramlama.playground`](StandartProgramlama.playground/Contents.swift) | Operatörler, `if`, `switch`, döngüler |
| 3 | [`Optional.playground`](Optional.playground/Contents.swift) | Optional, unwrapping, optional binding |
| 4 | [`Collections.playground`](Collections.playground/Contents.swift) | Array, `filter`, `sorted`, nesne listeleri |
| 5 | [`Collections2.playground`](Collections2.playground/Contents.swift) | Set ve Dictionary |
| 6 | [`OOPProgramming.playground`](OOPProgramming.playground/Contents.swift) | Class, init, fonksiyonlar, `static`, `enum`, composition |
| 7 | [`OOP2.playground`](OOP2.playground/Contents.swift) | Kalıtım, `override`, casting, protocol, extension, closure |
| 8 | [`AdvancedSwift.playground`](AdvancedSwift.playground/Contents.swift) | `guard`, `throws`, `do-try-catch`, `try?` |
| 9 | [`bootcampOdev1.playground`](bootcampOdev1.playground/Contents.swift) | Ödev 1 — değişken tanımlama alıştırması |
| 10 | [`bootcampOdev2.playground`](bootcampOdev2.playground/Contents.swift) | Ödev 2 — fonksiyon tabanlı 7 soru |

## Playground içerikleri

### 1. Variables — Değişkenler ve Tür Dönüşümü
`var` / `let` ayrımı (Kotlin `val`, Java `final`, Dart `const` karşılıkları not düşülmüş), tip belirtimli tanımlamalar (`var urun_id : Int`) ve string interpolation.
Type casting üç yönde işlendi: sayısal→sayısal (`Double(i)`, `Int(d)`), sayısal→metin (`String(i)`) ve metin→sayısal. Son durumda dönüşümün başarısız olabileceği `if let sonuc5 = Int(yazi)` ile güvenli şekilde yakalanıyor.

### 2. StandartProgramlama — Kontrol Akışı
- Karşılaştırma operatörleri: `==`, `!=`, `>=`, `<=`, `>`, `<`
- Mantıksal operatörler: `||` (bir true → true), `&&` (bir false → false)
- `if / else` blokları ve iki koşulun `&&` ile birleştirildiği basit login kontrolü
- `switch` ile haftanın günleri + `default`
- Döngüler: kapalı aralık `1...3`, `stride(from:through:by:)` ile artan ve azalan adımlar, `while`, ve `break` / `continue` farkı

### 3. Optional — Null Safety
Optional'ın diğer dillerdeki nullable/null-safety karşılığı üzerinden anlatım. `var str : String? = nil` tanımı, `nil` kontrolü sonrası force unwrap (`str!`) ve daha güvenli yol olan **optional binding** (`if var temp = str`) — ikinci yaklaşımda unwrap otomatik yapılıyor.

### 4. Collections — Array
Literal dizi (`[10,20,30]`) ve boş tipli dizi (`[String]()`) oluşturma; `append`, indeksle güncelleme, `insert(at:)`, indeksle okuma, `count`, `isEmpty`, `remove(at:)`, `removeAll()`.
Döngülerde `enumerated()` ile indeks ve elemanı aynı anda alma.
İkinci bölümde `Ogrenciler` class'ı tanımlanıp `[Ogrenciler]()` dizisinde nesneler tutuluyor ve üzerinde:
- **Filtreleme:** `filter({$0.no! > 150})`, `filter({$0.ad!.contains("y")})`
- **Sıralama:** `sorted(by:)` ile sayısal ve metinsel, artan ve azalan dört varyant

### 5. Collections2 — Set ve Dictionary
`Set<String>()` üzerinde `insert`, `enumerated()`, `count`, `isEmpty`, `remove`, `removeAll` — sırasız yapı davranışıyla.
`[Int:String]()` dictionary'de anahtar üzerinden ekleme (`iller[16] = "Bursa"`), okuma, güncelleme, `for (anahtar, deger)` ile gezinme ve `removeValue(forKey:)`.

### 6. OOPProgramming — Sınıflar ve Yapı Taşları
- **`Car` class'ı:** boş ve parametreli olmak üzere iki `init` (constructor overloading), `self` ile shadowing çözümü, durum değiştiren `start()` / `stop()` metotları, `hizlandir(kackm:)` / `yavasla(kackm:)` ve `takeInfo()`. İki nesne (`bmw`, `sahin`) üzerinden "dolu constructor ile tek seferde atama" vs. "boş constructor + sonradan atama" karşılaştırması.
- **`Fonksiyonlar` class'ı:** dönüş değeri olmayan/olan fonksiyonlar, parametreli fonksiyonlar, `toplama` ve aynı isimle farklı parametre sayısına sahip `carpma` ile **overloading**.
- **`static`:** `ASinifi` üzerinde static property/metot çağrımı ve nesne üzerinden erişimle farkı.
- **`enum`:** `konserveBoyut` enum'u + `switch` ile boyuta göre ücret hesaplayan fonksiyon.
- **Composition:** `filmler` class'ı, `Kategoriler` ve `yonetmenler` nesnelerini property olarak tutuyor; zincirleme erişim `f1.kategori!.kategoriAd!`.

### 7. OOP2 — Kalıtım ve İleri OOP
- **Inheritance:** `Ev` → `Saray` / `villa`, alt sınıf init'inde `super.init(...)` çağrısı
- **Override:** `Hayvan` → `Memeli` → `Kedi` / `Köpek` zinciri; `Memeli` override etmediği için üst sınıfın metodunu çalıştırıyor
- **Type casting:** upcasting (`as Ev`), downcasting (`as? Saray`) ve `is` ile tip kontrolü
- **Protocol:** `MyProtocol` içinde `{get set}` property ve iki metot şartı, `ClassA` ile uygulanması
- **Extension:** `Int` tipine `carp(sayi:)` fonksiyonu eklenmesi → `3.carp(sayi: 5)`
- **Closure:** kod bloğunun değişkene atanıp `ifade()` ile çağrılması

### 8. AdvancedSwift — Guard ve Hata Yönetimi
`if/else` ile yazılmış bir kontrolün `guard ... else { return }` ile daha okunur hâle getirilmesi.
Ardından hata türleri ayrımı: **compile error** (editör hatası) ve **runtime error/exception**. `Hatalar : Error` enum'u, `throws` işaretli `bolme` fonksiyonu ve `throw`. Hatanın iki yakalama yolu:
- `do / try / catch Hatalar.sifiraBolunmeHatasi`
- `try?` ile sonucu optional'a düşürüp `if let` ile kontrol etme

### 9. bootcampOdev1 — Ödev 1
Farklı veri tipleriyle (String, Int) 13 değişken tanımlama ve string interpolation ile yazdırma alıştırması: şehir, kıta, posta kodu, ürün miktarı, ödeme/EFT miktarı, doğum tarihi, otobüs hattı vb.

### 10. bootcampOdev2 — Ödev 2
`Odev2` class'ı altında 7 fonksiyon; her biri ayrı nesne üzerinden çağrılıp çıktısı alınıyor:

| Soru | Fonksiyon | Yaptığı iş |
|---|---|---|
| 1 | `mileDonustur(km:)` | Kilometreyi mile çevirir (× 0.621) |
| 2 | `alanHesapla(kısaKenar:uzunKenar:)` | Dikdörtgenin alanını yazdırır |
| 3 | `faktoriyelHesapla(sayi:)` | Döngüyle faktöriyel hesaplar |
| 4 | `eHesapla(kelime:)` | Kelimedeki "e"/"E" harflerini sayar |
| 5 | `icAcıHesapla(kenarsayisi:)` | Çokgenin bir iç açısını bulur `((n-2)*180)/n` |
| 6 | `maasHesapla(günSayisi:)` | 150 saate kadar 40₺, aşan mesai saatleri 80₺ |
| 7 | `otoparkUcretiHesapla(otoparkSüresi:)` | İlk saat 50₺, sonraki her saat +10₺ |

## Kullanım

```bash
git clone https://github.com/isaanilkoca/SWIFTUI-BOOTCAMP.git
cd SWIFTUI-BOOTCAMP
open Variables.playground
```

Xcode'da playground açıldıktan sonra sol alttaki **Play** butonuyla çalıştırıp çıktıları konsol panelinden takip edebilirsiniz. Bazı dosyalarda alternatif anlatımlar bilinçli olarak yorum satırına alınmıştır; ilgili bloğun yorumunu kaldırıp tekrar çalıştırarak davranış farkını görebilirsiniz.

---

Hazırlayan: [@isaanilkoca](https://github.com/isaanilkoca)
