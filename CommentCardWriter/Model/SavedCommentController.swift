//
//  StateController.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 10/02/2022.
//

import Foundation

class SavedCommentController : ObservableObject {
    
    @Published var savedComments:[SavedComment] = []
    
    init () {
        //self.comments = []
    }
    
    func loadFromFile() {
            //get url to file
        let url = FileManager().getDocDirectoryURLWithFilename(filename: "comments.json")
                
                if let data = try? Data(contentsOf: url) {
                    let decoder = JSONDecoder()
                    if let loaded = try? decoder.decode([SavedComment].self, from: data) {
                        savedComments = loaded
                    }
                }
            
    
        }
    func saveToFile() {
            //create json encoder
        print("testtest")
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(savedComments) {
                if let json = String(data: encoded, encoding: .utf8) {
                    //take converted objects and convert them into string
                    
                    let url = FileManager().getDocDirectoryURLWithFilename(filename: "comments.json")
                    do {
                        //write json to file
                        try json.write(to: url, atomically: true, encoding: .utf8)
                    } catch {
                        print(error.localizedDescription)
                    }
                } else {
                    print("Unable to form JSON string")
                }
                
            }
        }
    
}
