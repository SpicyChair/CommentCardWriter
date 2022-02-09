//
//  GeneratedItemView.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 04/02/2022.
//

import SwiftUI

struct GeneratedCommentView: View {
    
    @State var comment:Comment
    
    init () {
        self.comment = comment
    }
    
    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    Text(comment.teacherRating)
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
