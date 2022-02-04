//
//  SelectableButton.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 04/02/2022.
//

import SwiftUI

struct SelectableButton: View {
    
    @State var value:Bool
    
    var body: some View {
        Button(value ? "X" : " ") {
            value.toggle()
        }
    }
}

struct SelectableButton_Previews: PreviewProvider {
    static var previews: some View {
        SelectableButton(value: false)
    }
}
