//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 04/02/2022.
//

import SwiftUI
import StepSlider

struct ContentView: View {
    
    @StateObject var comment:Comment
    
    var body: some View {
        NavigationView {
            Form {
                GenerationFormItem(message: "How much have you enjoyed this subject so far?", ratings: ["1", "2", "3", "4", "5"], toChange: comment.enjoyment)
                GenerationFormItem(message: "How has your performance been this half?", ratings:  ["1", "2", "3", "4", "5"], toChange: comment.performance)
                GenerationFormItem(message: "How good has your teacher been this half?", ratings: ["1", "2", "3", "4", "5"], toChange: comment.teacherRating)
                //GenerationFormItem(message: "How can you improve in this subject?")
                //GenerationFormItem(message: "What are you finding difficult?")
                
                NavigationLink("Generate!") {
                    return GeneratedCommentView(comment: comment)
                }
            }
            
            .navigationTitle(Text("Generate"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(comment: Comment())
            
    }
}
