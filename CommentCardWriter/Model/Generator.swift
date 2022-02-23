//
//  Generator.swift
//  CommentCardWriter
//
//  Created by Hin, Ethan-Scott (WING) on 22/02/2022.
//

import Foundation
import SwiftUI

struct Generator {
    
    var enjoymentStrings:[String] = [
        "It is with great disappointment that I must inform you that I loathe (). ",
        "My enjoyment for this subject is alas most dissatisfactory. ",
        "I do not mind (). ",
        "I am enjoying () very much. ",
        "I love ()!!!! "
    ]
    
    var performanceStrings:[String] = [
        "Hark! Whence mine eyes doth read the words (), I doth dream of faliure and waste. Oh tragedy, for one must continue mine suffering in this subject. ",
        "I feel like I am struggling in (), the workload is sometimes much. ",
        "My performance in () has been satisfactory and I am making good progress. ",
        "I am doing well in (), EW has been good and so has my progress. ",
        "It's my favourite subject because I'm doing so well! "
    ]
    
    var teacherStrings:[String] = [
        "Mine eyes do beseech me! Whence is that creature who doth greet mine forme in lesson? Foul, feral being! Leave mine sight at once! ",
        "I believe my teacher could improve. ",
        "() knows the syllabus well, and this is reflected in his teaching. ",
        "()'s lessons are always a joy. ",
        "() is the best!! "
    ]
    
    var improveStrings:[String] = [
        "And henceforth, I doth refuse to gain progress in (). I doth despise mine life choices for studying ().\n\nOnce I drop (), mine world shallt glow,\nBut for now, chilling wind doth blow.",
        "I am somewhat unmotivated for improvement. ",
        "I feel that I can improve in (). ",
        "I feel that this half I will improve by working outside of divs.",
        "I'll always be studying ()!!"
    ]
    
   
    
    func generate(comment: Comment) -> String {
        
        var generatedText: String = ""
        
        generatedText += enjoymentStrings[(Int(comment.enjoyment) ?? 0) - 1].replacingOccurrences(of: "()", with: comment.subject)
        
        generatedText += performanceStrings[(Int(comment.performance) ?? 0) - 1].replacingOccurrences(of: "()", with: comment.subject)
        
        generatedText += teacherStrings[(Int(comment.teacherRating) ?? 0) - 1].replacingOccurrences(of: "()", with: comment.teacher)
        
        generatedText += improveStrings[(Int(comment.improve) ?? 0) - 1].replacingOccurrences(of: "()", with: comment.subject)
        
        return generatedText
    }
    
    
    
}
