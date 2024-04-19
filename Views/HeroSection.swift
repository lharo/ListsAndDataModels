//
//  HeroSection.swift
//  ListAndDataModels
//
//  Created by Luis Esteban Haro on 10/04/24.
//

import SwiftUI

struct HeroSection: View {
    
    let hero: Hero
    
    var body: some View {
        HStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 50, height: 50)
                .padding(.trailing, 10)
            VStack(alignment: .leading) {
                Text(hero.name)
                    .font(.headline)
                Text(hero.alias)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .padding(.vertical, 10)
    }    
}

struct HeroSection_Previews: PreviewProvider {
    static var previews: some View {
        HeroSection(hero: Hero.mockHero)
    }
}
