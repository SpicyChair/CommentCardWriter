//
//  CommentBase.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 10/02/2022.
//

import Foundation

class CommentBase {
    
    var comments:[Comment] = []
    
    
    
    func createCommentOrEditExisting(subject: String) -> Comment {
        for i in comments {
            if i.subject == subject {
                return i
            }
        }
        let newComment = Comment()
        comments.append(newComment)
        return newComment
                        
    }
    
}
