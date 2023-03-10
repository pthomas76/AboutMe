//
//  ContentView.swift
//  AboutMe
//
//  Created by Pranav Thomas on 1/26/23.
//

import SwiftUI
import FirebaseFirestore


struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "person")
                }

            StoryView()
                .tabItem {
                    Label("Story", systemImage: "book")
                }

            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }

            FunFactsView()
                .tabItem {
                    Label("Fun Facts", systemImage: "hand.thumbsup")
                }
            AddCommentsView()
                .tabItem {
                    Label("Feedback", systemImage: "pencil")
                }
        }
        .tint(.pink)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
