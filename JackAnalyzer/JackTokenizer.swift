//
//  JackTokenizer.swift
//  JackAnalyzer
//
//  Created by J Michael Dean on 6/9/23.
//

import Foundation
import RegexBuilder


let separator = Regex {/\s*/}

let blankLine = Regex {
    Anchor.startOfLine
    separator
    Anchor.endOfLine
}

let comment = Regex {
    Anchor.startOfLine
    separator
    /\/\//
    ZeroOrMore(.any)
}

let specialComment = Regex {
    Anchor.startOfLine
    separator
    /\/\*\*/
    ZeroOrMore(.any)
    /\*\//
    ZeroOrMore(.any)
    Anchor.endOfLine
}

let multilineComment = Regex {
    Anchor.startOfLine
    separator
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

let identifierPattern = Regex {
    OneOrMore{
        /[a-zA-Z_]/
    }
    ZeroOrMore{
        /[a-zA-Z_0-9]/
    }
}

let digitPattern = Regex {
    /\d+/
}

let keyWordSet : Set<String> = ["class","constructor","function","method","field","static",
                                "var","int","char","boolean","void","true","false","null","this",
                                "let","do","if","else","while","return"]

let keyWords = Regex {
    ChoiceOf {
        "class";"constructor";"function";"method";"field";"static"
        "var";"int";"char";"boolean";"void";"true";"false";"null";"this"
        "let";"do";"if";"else";"while";"return"
    }
}

let symbolSet : Set<String> = ["{","}","(",")","[","]",".",",",";","+","-","*","/","&","|","<",">","=","~"]

let symbols = Regex {
    ChoiceOf{
        "{";"}";"(";")";"[";"]";".";",";";";"+";"-";"*";"/";"&";"|";"<";">";"=";"~"
    }
}

let stringPattern = Regex {
    /"/
    OneOrMore(.any)
    /"/
}

let processString = Regex {
    Anchor.startOfLine
    separator
    Capture{
        ChoiceOf{
            keyWords
            symbols
            identifierPattern
            digitPattern
            stringPattern
        }
    }
    ChoiceOf{
        separator
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
    
    func printToken(token:String){
        if keyWordSet.contains(token) {
            print("<keyword> \(token) </keyword>")
        } else if symbolSet.contains(token){
            switch token {
            case "<":print("<symbol> &lt; </symbol>")
            case "&":print("<symbol> &amp; </symbol>")
            case ">":print("<symbol> &gt; </symbol>")
            case "\"":print("<symbol> &quot; </symbol>")
            default:print("<symbol> \(token) </symbol>")
            }
            
        } else if token[token.startIndex].isLetter{
            print("<identifier> \(token) </identifier>")
        } else if token[token.startIndex] == "_" {
            print("<identifier> \(token) </identifier>")
        } else if token[token.startIndex].isNumber{
            print("<integerConstant> \(token) </integerConstant>")
        } else if token[token.startIndex] == "\""{
            var newtoken = token
            newtoken.remove(at: newtoken.startIndex)
            newtoken.remove(at: newtoken.index(before: newtoken.endIndex))
            print("<stringConstant> \(newtoken) </stringConstant>")
        }
    }
    
    func eatToken(line:String) -> Void {
            var newLine = line.trim()
            if let match = try? processString.firstMatch(in: newLine){
                let token = String(match.1)
                printToken(token: token)
                let tokenRange = token.startIndex..<token.endIndex
                newLine.removeSubrange(tokenRange)
                eatToken(line: newLine)
            } else {
                return
            }
    }
}
