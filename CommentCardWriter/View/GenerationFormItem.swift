//
//  GenerationFormItem.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 04/02/2022.
//

import SwiftUI

struct GenerationFormItem: View {
    
    var message:String
    
    @State private var ratings:[String]
    @State private var selectedRating:String {
        didSet {
            toChange(ratings.firstIndex(of: selectedRating) ?? 0)
            print(selectedRating)
        }
    }
    var toChange: (Int) -> Void
    var newValue: Int
    @EnvironmentObject var comment:Comment
    
    init(message:String, ratings:[String], toChange: @escaping (Int) -> Void, newValue: Int) {
        self.ratings = ratings
        self.selectedRating = ratings[0]
        self.message = message
        self.toChange = toChange
        self.newValue = newValue
    }
    
    var body: some View {
        Section {
            Text(message)
            Picker("",selection: $selectedRating) {
                ForEach(ratings, id: \.self) {
                    Text($0)
                }
            
           }.pickerStyle(SegmentedPickerStyle())
                
                
        }
    }
}

struct GenerationFormItem_Previews: PreviewProvider {
    static var previews: some View {
        GenerationFormItem(message: "Example Message", ratings: ["1", "2", "3", "4", "5"],
                           toChange:
                            {(a:Int) -> () in },
                           newValue: 0)
    }
    
}
