//
//  SavedCommentsView.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 24/02/2022.
//

import SwiftUI

struct SavedCommentsView: View {
    
    @EnvironmentObject var savedController: SavedCommentController
    
    var body: some View {
        NavigationView{
            Form {
                
                List(savedController.savedComments, id: \.self.date) { c in
                    Section {
                        Text(c.date.getShortDate())
                            .bold()
                        Text(c.commentText)
                    }
                        
                }
            }
            .navigationTitle(Text("Saved Comments"))
        }
    }
}


struct SavedCommentsView_Previews: PreviewProvider {
    static var previews: some View {
        SavedCommentsView()
    }
}
