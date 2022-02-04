//
//  GenerationFormItem.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 04/02/2022.
//

import SwiftUI

struct GenerationFormItem: View {
    
    var message:String
    
    
    var body: some View {
        Section {
            VStack{
                Text(message)
                    .bold()
                //Buttons or something here
            }
            
            DifficultyPicker()
            /*
            HStack {
                Text("5 - Very Good")
                Spacer()
                Button("O") {
                    return
                }
            }
            HStack {
                Text("4 - Good")
                Spacer()
                Button("O") {
                    return
                }
            }
            HStack {
                Text("3 - Average")
                Spacer()
                Button("O") {
                    return
                }
            }
            HStack {
                Text("2 - Unsatisfactory")
                Spacer()
                Button("O") {
                    return
                }
            }
            HStack {
                Text("1 - Awful")
                Spacer()
                Button("O") {
                    return
                }
            }
             */
            
        }
    }
}

struct GenerationFormItem_Previews: PreviewProvider {
    static var previews: some View {
        GenerationFormItem(message: "Example Message")
    }
}
