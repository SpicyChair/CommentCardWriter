//
//  Comment.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 09/02/2022.
//

import Foundation

class Comment:ObservableObject {

    //init () {}
    
    @Published var enjoyment:Int = 0
    @Published var performance:Int = 0
    @Published var difficulty:Int = 0
    @Published var teacherRating:Int = 0
    
}
