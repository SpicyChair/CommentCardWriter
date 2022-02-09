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
            Text(message)
            DifficultyPicker(ratings: ["1", "2", "3", "4", "5"])
        }
    }
}

struct GenerationFormItem_Previews: PreviewProvider {
    static var previews: some View {
        GenerationFormItem(message: "Example Message")
    }
}
