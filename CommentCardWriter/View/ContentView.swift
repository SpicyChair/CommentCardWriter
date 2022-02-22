//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 04/02/2022.
//

import SwiftUI
import StepSlider

struct ContentView: View {
    
    @EnvironmentObject var comment: Comment
    var ratings: [String] = ["1", "2", "3", "4", "5"]
    
    var body: some View {
        NavigationView {
            Form {
                
                Section {
                    Text("How much have you enjoyed this subject so far?")
                    Picker("",selection: $comment.enjoyment) {
                        ForEach(ratings, id: \.self) {
                            Text($0)
                        }
                    
                   }.pickerStyle(SegmentedPickerStyle())
                        
                        
                }
                Section {
                    Text("How has your performance been this half?")
                    Picker("",selection: $comment.performance) {
                        ForEach(ratings, id: \.self) {
                            Text($0)
                        }
                    
                   }.pickerStyle(SegmentedPickerStyle())
                        
                        
                }
                Section {
                    Text("How good has your teacher been this half?")
                    Picker("",selection: $comment.teacherRating) {
                        ForEach(ratings, id: \.self) {
                            Text($0)
                        }
                    
                   }.pickerStyle(SegmentedPickerStyle())
                        
                        
                }
                
                
                //GenerationFormItem(message: "How can you improve in this subject?")
                //GenerationFormItem(message: "What are you finding difficult?")
                
                NavigationLink("Generate!") {
                    GeneratedCommentView()
                }
            }
            
            .navigationTitle(Text("Generate"))
        }
        
    }
    
    func updateEnjoyment(newValue: Int) {
        comment.enjoyment = "1"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Comment())
            
    }
}
