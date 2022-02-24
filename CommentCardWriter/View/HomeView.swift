//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 24/02/2022.
//

import SwiftUI


struct HomeView: View {
    
    var body: some View {
        TabView {
            TabView {
                        GeneratorView()
                            .tabItem {
                                Image(systemName: "square.and.pencil")
                                Text("Absences")
                            }
                        SavedCommentsView()
                            .tabItem {
                                Image(systemName: "chart.pie")
                                Text("Statistics")
                            }
                            .environmentObject(SavedCommentController())
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
