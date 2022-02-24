//
//  Date.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 24/02/2022.
//

import Foundation


extension Date {
    
    func getShortDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: self)
    }
}
