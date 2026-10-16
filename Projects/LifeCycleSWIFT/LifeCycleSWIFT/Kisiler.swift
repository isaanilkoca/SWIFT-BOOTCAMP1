//
//  Kisiler.swift
//  LifeCycleSWIFT
//
//  Created by İsa Anıl Koca on 15.10.2026.
//

import Foundation


// Sayfalar arası veri taşımak için model sınıfı. Alanlar optional (?) olduğu için kullanırken ! veya ?? ile açılır.
// ÖNERİ: Modern Swift'te bu tür basit veri için struct tercih edilir ve alanlar optional olmak zorunda değilse optional yapma.
class Kisiler{
    
    var isim : String?
    var yas : Int?
    var boy : Double?
    var medeniDurum : Bool?
    
    init(){ // boş bir nesne olusturmak isteyebiliriz bu yüzden bos  bi constructor olusturduk
        
    }
    
    init(isim: String?, yas: Int?, boy: Double? , medeniDurum: Bool? ) {
        self.isim = isim
        self.yas = yas
        self.boy = boy
        self.medeniDurum = medeniDurum
    }
}
