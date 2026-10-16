//
//  SonucEkrani.swift
//  LifeCycleSWIFT
//
//  Created by İsa Anıl Koca on 9.10.2026.
//

import SwiftUI

// Sheet olarak açılan son ekran.
// ÖNERİ: "Geri" butonu şu an boş. İçine @Environment(\.dismiss) var dismiss tanımlayıp dismiss() çağır.
struct SonucEkrani: View {
    var body: some View {
        VStack(spacing: 50){
            Text("Final Sceen").font(.system(size:50))
            Button("Geri"){
                
            }
        }
    }
}

#Preview {
    SonucEkrani()
}
