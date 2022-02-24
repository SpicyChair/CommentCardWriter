//
//  SavedComment.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 24/02/2022.
//

import Foundation

class SavedComment: Codable {
    
    var date:Date
    var commentText:String
    
    
    init(commentText:String) {
        self.date = Date.now
        self.commentText = commentText
    }
    
    required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            date = try container.decode(Date.self, forKey: .date)
            commentText = try container.decode(String.self, forKey: .commentText)
    }
    
    private enum CodingKeys: CodingKey {
        case date, commentText
    }
    
    func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(date, forKey: .date)
            try container.encode(commentText, forKey: .commentText)
    }

}
