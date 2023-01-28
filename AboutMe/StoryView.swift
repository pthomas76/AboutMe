//
//  StoryView.swift
//  AboutMe
//
//  Created by Pranav Thomas on 1/26/23.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        VStack {
            Text("My Story")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            ScrollView {
                Text(information.story)
                    .font(.body)
                    .padding()
            }
            
            Image("arsenal")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
        }
        .padding([.top, .bottom], 50)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
