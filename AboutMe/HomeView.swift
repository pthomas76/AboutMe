//
//  HomeView.swift
//  AboutMe
//
//  Created by Pranav Thomas on 1/26/23.
//

import SwiftUI

struct HomeView: View {
    @State private var angle = 0.0
    @State private var borderThickness = 1.0
    
    var body: some View {
        VStack {
            Text("All About")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()

            Text(information.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Image(information.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(40)

            Button("Click to see something cool!") {
                   angle += 45
                   borderThickness += 1
               }
               .padding()
               .border(.red, width: borderThickness)
               .rotationEffect(.degrees(angle))
               .animation(.easeIn, value: angle)
        }
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
