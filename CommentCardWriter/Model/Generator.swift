//
//  Generator.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 22/02/2022.
//

import Foundation
import SwiftUI

struct Generator {
    
   
    
    func generate(comment: Comment) -> String {
        
        var generatedText: String = ""
        
        if comment.enjoyment == "5" {
            generatedText += "I am enjoying \(comment.subject) very much."
        }
        
        return generatedText
    }
    
}
