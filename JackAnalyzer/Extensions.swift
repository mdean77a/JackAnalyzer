//
//  Extensions.swift
//  JackAnalyzer
//
//  Created by J Michael Dean on 6/12/23.
//

import Foundation
extension JackTokenizer {
    func commentOrBlankLine(line:String) -> Bool {
        if ((try? blankOrComment.firstMatch(in: line)) != nil) {
            return true
        } else {
            return false
        }
    }
    
    func discardMidlineComment(line:String) -> String? {
        if let match = try? midLineComment.firstMatch(in: line){
            return String(match.1)
        } else {
            return nil
        }
    }
    
    func openMultilineComment(line:String) -> Bool {
        if ((try? multilineComment.firstMatch(in: line)) != nil){
            return true
        } else {
            return false
        }
    }
    
    func closeMultilineComment(line:String) -> Bool {
        if ((try? closeComment.firstMatch(in: line)) != nil){
            return true
        } else {
            return false
        }
    }
}
