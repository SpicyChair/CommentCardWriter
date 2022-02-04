//
//  GeneratedItemView.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 04/02/2022.
//

import SwiftUI

struct GeneratedCommentView: View {
    var body: some View {
        NavigationView{
            Form {
                Section {
                    Text("I'm really struggling bro help me bro this isn't good bro")
                }
            }
            .navigationTitle(Text("View Comment"))
        }
    }
}

struct GeneratedItemView_Previews: PreviewProvider {
    static var previews: some View {
        GeneratedCommentView()
    }
}
