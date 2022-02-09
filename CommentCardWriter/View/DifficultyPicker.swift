//
//  DifficultyPicker.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 04/02/2022.
//

/*
 
 */

import SwiftUI

struct DifficultyPicker: View {
    
    
    
    @State private var ratings:[String]
    @State private var selectedRating:String {
        didSet {
            self.selectedRatingIndex = ratings.firstIndex(of: selectedRating) ?? 0
            print(self.selectedRatingIndex)
        }
    }
    @State var selectedRatingIndex: Int
    
    init(ratings:[String]) {
        self.ratings = ratings
        self.selectedRating = ratings[0]
        self.selectedRatingIndex = 0
        
    }

    var body: some View {
            Picker("",selection: $selectedRating) {
                ForEach(ratings, id: \.self) {
                    Text($0)
                }
            
           }.pickerStyle(SegmentedPickerStyle())
    }
}

struct DifficultyPicker_Previews: PreviewProvider {
    static var previews: some View {
        DifficultyPicker(ratings: ["1", "2", "3", "4", "5"])
    }
}
