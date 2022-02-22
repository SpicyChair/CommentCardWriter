//
//  Comment.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 09/02/2022.
//

import Foundation

class Comment : ObservableObject {
    
    @Published var enjoyment:String = "1"
    @Published var performance:String = "1"
    @Published var difficulty:String = "1"
    @Published var teacherRating:String = "1"
    @Published var subject:String = "Computer Science"
    
}
