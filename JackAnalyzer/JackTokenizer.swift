//
//  JackTokenizer.swift
//  JackAnalyzer
//
//  Created by J Michael Dean on 6/9/23.
//

import Foundation
import RegexBuilder



let blankLine = Regex {
    Anchor.startOfLine
    /\s*/
    Anchor.endOfLine
}

let comment = Regex {
    Anchor.startOfLine
    /\s*/
    /\/\//
    ZeroOrMore(.any)
}

let specialComment = Regex {
    Anchor.startOfLine
    /\s*/
    /\/\*\*/
    ZeroOrMore(.any)
    /\*\//
    ZeroOrMore(.any)
    Anchor.endOfLine
}

let multilineComment = Regex {
    Anchor.startOfLine
    /\s*/
    /\/\*\*/
    ZeroOrMore(.any)
    Anchor.endOfLine
}

let closeComment = Regex {
    Anchor.startOfLine
    /\s*\*\//
    Anchor.endOfLine
}

let blankOrComment = Regex {
    OneOrMore{
        ChoiceOf{
            blankLine
            comment
            specialComment
        }
    }
}

let midLineComment = Regex {
    Anchor.startOfLine
    Capture {
        ZeroOrMore(.any)
    }
    Capture{
        /\/{2}/
        ZeroOrMore(.any)
        Anchor.endOfLine
    }
}

struct JackTokenizer {
    
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
