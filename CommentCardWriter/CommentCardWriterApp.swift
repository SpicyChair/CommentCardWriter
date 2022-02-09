//
//  CommentCardWriterApp.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 04/02/2022.
//

import SwiftUI

@main
struct CommentCardWriterApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(comment: Comment())
        }
    }
}
