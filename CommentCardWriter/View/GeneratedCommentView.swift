//
//  GeneratedItemView.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 04/02/2022.
//

import SwiftUI
import MobileCoreServices

struct GeneratedCommentView: View {
    
    @EnvironmentObject var comment:Comment
    @EnvironmentObject var savedController: SavedCommentController
    
    var generator:Generator = Generator()

    
    var body: some View {
        NavigationView{
            Form {
                Section {
                    Text(generator.generate(comment: comment))
                }
                Section {
                    
                    HStack {
                        Button("Copy to Clipboard") {
                            UIPasteboard.general.setValue(generator.generate(comment: comment), forPasteboardType: "public.plain-text")
                        }
                    }
                    HStack {
                        Button("Save") {
                            savedController.savedComments.append(SavedComment(commentText:(generator.generate(comment: comment))))
                            savedController.saveToFile()
                        }
                    }
                    
                    
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
