//
//  HomePage.swift
//  LifeCycleSWIFT
//
//  Created by İsa Anıl Koca on 16.10.2026.
//

import SwiftUI

// TabView'daki 1. sekme (Ana Sayfa). .font(.system(size:)) ile sabit yazı boyutu verilmiş.
struct HomePage: View {
    var body: some View {
        Text("Ana Sayfa").font(.system(size: 40))
    }
}

#Preview {
    HomePage()
}
