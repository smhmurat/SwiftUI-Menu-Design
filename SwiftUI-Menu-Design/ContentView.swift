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
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), Color(#colorLiteral(red: 0.8705882353, green: 0.8941176471, blue: 0.9450980392, alpha: 1))]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
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
                .foregroundColor(Color(#colorLiteral(red: 0.662745098, green: 0.7333333333, blue: 0.831372549, alpha: 1)))
            Text(menuTitle)
                .font(.system(size: 24, weight: .bold, design: .default))
                .frame(width: 120, alignment: .leading)
        }
    }
}
