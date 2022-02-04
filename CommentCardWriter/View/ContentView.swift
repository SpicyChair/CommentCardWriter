//
//  ContentView.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 04/02/2022.
//

import SwiftUI
import StepSlider

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                GenerationFormItem(message: "How much have you enjoyed this subject so far?")
                GenerationFormItem(message: "How has your performance been this half?")
                GenerationFormItem(message: "How good has your teacher been this half?")
                //GenerationFormItem(message: "How can you improve in this subject?")
                //GenerationFormItem(message: "What are you finding difficult?")
                
                NavigationLink("Generate!") {
                    return GeneratedCommentView()
                }
            }
            
            .navigationTitle(Text("Generate"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
