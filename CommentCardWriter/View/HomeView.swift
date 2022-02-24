//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 24/02/2022.
//

import SwiftUI


struct HomeView: View {
    
    @EnvironmentObject var comment: Comment
    var ratings: [String] = ["1", "2", "3", "4", "5"]
    
    
    var body: some View {
        TabView {
            GeneratorView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Generate")
                }
            
            
        }
        
    }
    
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(Comment())
            
    }
}
