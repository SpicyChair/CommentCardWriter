//
//  StateController.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 10/02/2022.
//

import Foundation

class StateController : ObservableObject {
    
    @Published var comments:[Comment] = []
    
    init () {
        //self.comments = []
    }
    
}
