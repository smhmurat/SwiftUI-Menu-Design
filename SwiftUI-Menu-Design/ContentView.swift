//
//  ContentView.swift
//  SwiftUI-Menu-Design
//
//  Created by semih on 2.08.2020.
//  Copyright © 2020 Semih Murat. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                MenuRow(menuTitle: "Hesap", menuIcon: "person.fill")
                MenuRow(menuTitle: "Ayarlar", menuIcon: "gear")
                MenuRow(menuTitle: "Yardım", menuIcon: "quote.bubble.fill")
                MenuRow(menuTitle: "Çıkış Yap", menuIcon: "escape")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(radius: 30)
            .padding(.horizontal, 30)
        }
        .padding(.bottom, 30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MenuRow: View {
    var menuTitle : String
    var menuIcon : String
    
    var body: some View {
        HStack (spacing: 16) {
            Image(systemName: menuIcon)
                .font(.system(size: 24, weight: .bold))
                .imageScale(.large)
                .frame(width: 32, height: 32)
            Text(menuTitle)
                .font(.system(size: 24, weight: .bold, design: .default))
                .frame(width: 120, alignment: .leading)
        }
    }
}
