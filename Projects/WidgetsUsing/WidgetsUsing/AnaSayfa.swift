//
//  ContentView.swift
//  WidgetsUsing
//
//  Created by İsa Anıl Koca on 16.10.2026.
//

import SwiftUI

// BU DOSYA: SwiftUI'ın temel bileşenleri (widget'lar) tek sayfada:
// TextField, Button, Image, Toggle, Picker (segmented ve açılır liste), Stepper, Slider, DatePicker, tap gesture.
// Hepsinin ortak mantığı: @State değişkenine $ ile bağlanırlar (binding), kullanıcı değiştirince değişken de değişir, ekran yenilenir.
// NEREDE KULLANILIR? Ayarlar/form ekranları, filtreler, kayıt-giriş formları.
struct AnaSayfa: View {
    
    @State private var tf = ""                  // TextField'a yazılan metin

    @State private var alinanVeri = ""
    @State private var resimAdi = "happy"
    @State private var switchDurum = false       // Toggle açık/kapalı
    @State private var segmentedSitutation = 0   // Picker'da seçili sekmenin tag değeri
    @State private var stepperDurum = 0          // Stepper +/- değeri
    @State private var sliderDurum = 50.0        // Slider değeri (Double olmak zorunda)
    @State private var saat = Date()             // DatePicker (saat)
    @State private var tarih = Date()            // DatePicker (tarih)
    @State private var ulkelerListesi = [String]()
    @State private var secilenUlke = "Türkiye"





    
    


    
    var body: some View {
        VStack {
            // Text: ekrana yazı basar; alinanVeri değişince otomatik güncellenir
            Text(alinanVeri)
            
            
            
            TextField("Veri Giriniz",text: $tf) // bunun icerisine yazdıgımız bura aktarılacak
                .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            Button("OKU"){
                alinanVeri = tf
                
            }.buttonStyle(.borderedProminent)
        
            HStack(spacing: 50){
                Button("Resim1"){
                    resimAdi = "happy"
                    
                }.buttonStyle(.borderedProminent)
                
                Image(resimAdi).resizable().frame(width: 50,height: 50)
                
                Button("Resim2"){
                    resimAdi = "unhappy"
                }.buttonStyle(.borderedProminent)
            }
            // TOGGLE = açma/kapama anahtarı (UIKit'teki UISwitch). onChange ile değişim anında yakalanır
            Toggle("SwiftUI",isOn: $switchDurum)
                .onChange(of: switchDurum){_,value in // alttan tire koymak ilk parametre boş demek
                    print("Switch : \(value)")
                    
                }.padding()
            
            // PICKER + .palette stili = segmented control (sekmeli seçim). Her seçeneğe tag verilir
            Picker("",selection:$segmentedSitutation){
                
                Text("Yemekler").tag(0) // etiket veriyoruz sıra yani diziler sırası gibi
                Text("Tatlılar").tag(1)
                Text("İçecekler").tag(2)


            }.pickerStyle(.palette)
                .onChange(of: segmentedSitutation){_, value in
                    print("Segmented : \(value)")
                }.padding()
            
            // STEPPER = +/- butonlu sayı artırıcı (in: 0...10 sınır koyar). Ürün adedi seçimi için ideal
            Text(String(stepperDurum))
            
            Stepper("Stepper",value : $stepperDurum, in: 0...10).padding()
            
            
            // SLIDER = kaydırarak aralıktan değer seçme (ses, parlaklık, fiyat aralığı)
            Text(String(Int(sliderDurum)))
            
            Slider(value : $sliderDurum, in: 0...1000).padding() // hassasiyeti yüksek oldugunda tercil edilir
            // kaydırdıgımıza sliderdurum değişecek onuda textte göstereceğiz
            
            Text("TIKLA").onTapGesture {
                print("Tiklandi")
            }
            Text("cift tikla").onTapGesture(count: 2) { // count ne kadar yaparsan o kadar tıklarsan olur cift tıklamak mesela
                print("CİFT TIKLANDİ")
            }
            
            // zaman ve saat gösterilmesi icin sectirilmesi icin
            DatePicker("Saat",selection: $saat , displayedComponents: [.hourAndMinute]).padding() // displayedCompnentsde ne göstereceğini söyleyeceğiz
            DatePicker("Tarih",selection: $tarih , displayedComponents: [.date]).padding() // displayedCompnentsde ne göstereceğini söyleyeceğiz
            
            
            // Açılır liste Picker: ForEach ile dizideki her eleman bir seçenek olur. Veri onAppear'da doldurulur
            // (ÖNERİ: Dizi sabitse onAppear yerine doğrudan @State tanımında başlat, böylece sayfa her göründüğünde tekrar eklenmez)
            Picker("ülke",selection: $secilenUlke){
                ForEach(ulkelerListesi,id: \.self){ ulke in
                    Text(ulke)
                }
            }.onAppear// sayfa calistigi gibi görünsün
            {
                ulkelerListesi.append("Türkiye")
                ulkelerListesi.append("Fransa")
                ulkelerListesi.append("Almanya")
                ulkelerListesi.append("italya")
                ulkelerListesi.append("America")
                ulkelerListesi.append("Japonya")


            }


            
            
            Button("Göster"){
            print("Switch durum = \(switchDurum)")
                print("Segmented durum = \(segmentedSitutation)")
                print("Stepper durum  =\(stepperDurum)")
                print("Slider durum  \(sliderDurum)")
                print("secilen ÜLke durum  \(secilenUlke)")

                
                
                // time formatı saat formatı icin
                let tf = DateFormatter()
                tf.dateFormat = "HH:mm"
                let alinanSaat = tf.string(from: saat)
                print("Saat            :\(alinanSaat)")
                
                // date formatı saat formatı icin
                let df = DateFormatter()
                df.dateFormat = "EEEE, MMM d, yyyy"
                let alinanTarih = df.string(from: tarih)
                print("Tarih            :\(alinanTarih)")
                



            }
        
           
        }.padding()
    }
}

#Preview {
    AnaSayfa()
}
