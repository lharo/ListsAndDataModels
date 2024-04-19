//
//  ContentView.swift
//  ListAndDataModels
//
//  Created by Luis Esteban Haro on 10/04/24.
//

import SwiftUI

struct ContentView: View {
    
    var heroes =  Hero.getHeroes()
    
    var body: some View {
        VStack {
            List(heroes) { hero in
                HeroSection(hero: hero)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
