import Foundation
import RegexBuilder


let jackCode = """
class Main {
    static boolean test;
                           
    function void main() {
      var SquareGame game;
      let game = SquareGame.new();
      do game.run();
      do game.dispose();
      return;
    }

    function void more() {
        var int i, j;
        var String s;
        var Array a;
        if (false) {
            let s = "string constant";
            let s = null;
            let a[1] = a[2];
        }
        else {
            let i = i * (-j);
            let j = j / (-2);
            let i = i | j;
        }
        return;
    }
}
"""

//let blankLine = Regex {
//    Anchor.startOfLine
//    /\s*/
//    Anchor.endOfLine
//}
//
//let comment = Regex {
//    Anchor.startOfLine
//    /\s*/
//    /\/\//
//    ZeroOrMore(.any)
//}
//
//
//let blankOrComment = Regex {
//    OneOrMore{
//        ChoiceOf{
//            blankLine
//            comment
//        }
//    }
//}
//
//let midLineComment = Regex {
//    Anchor.startOfLine
//    Capture {
//        ZeroOrMore(.any)
//    }
//    Capture{
//        /\/{2}/
//        ZeroOrMore(.any)
//        Anchor.endOfLine
//    }
//}
//
//if ((try? blankOrComment.wholeMatch(in: " // this is a comment")) != nil){
//    print("comment")
//}
//if let match = try? blankOrComment.wholeMatch(in: "  //  //"){
//    print("\(match)")
//    print(match.0)
//    print(match.count)
//
//}
//
//if let match2 = try? midLineComment.wholeMatch(in: " do while this is before comment // comment lines"){
//    print(match2.0)
//    print(match2.1)
//    print(match2.2)
//}



let keyWords = Regex {
            ChoiceOf {
                "class";"constructor";"function";"method";"field";"static"
                "var";"int";"char";"boolean";"void";"true";"false";"null";"this"
                "let";"do";"if";"else";"while";"return"
            }
        }

let separator = Regex {/\s*/}

let processString = Regex {
    Anchor.startOfLine
    separator
    Capture{
        keyWords
    }
    ChoiceOf{
        separator
        Anchor.endOfLine
    }
}

//var jackLine = "  function  class return  method   constructor return class "
//var token = ""
//if let match = try? processString.firstMatch(in: jackLine){
//    let token = String(match.1)
//    let firstLetter = token[token.startIndex]
//    var emptySpace = jackLine.firstIndex(of: firstLetter)
//    jackLine.removeSubrange(jackLine.startIndex..<emptySpace!)
//    let tokenRange = token.startIndex..<token.endIndex
//    jackLine.removeSubrange(tokenRange)
//    print(jackLine)
//
//    //eatToken(token:token, line:jackLine
//} else {
//    print("match failed")
//}


func eatToken(line:String) -> String? {
    if let match = try? processString.firstMatch(in: jackLine){
        let token = String(match.1)
        print("<keyword> \(token) </keyword>")
        let firstLetter = token[token.startIndex]
        var emptySpace = jackLine.firstIndex(of: firstLetter)
        jackLine.removeSubrange(jackLine.startIndex..<emptySpace!)
        let tokenRange = token.startIndex..<token.endIndex
        jackLine.removeSubrange(tokenRange)
        return jackLine
    } else {
        return nil
    }
}
var jackLine = "  function  class return  method   constructor return class "
var executionCount = 0
repeat {
    executionCount += 1
    print(executionCount)
    print(jackLine.count)
    if var jackLine = eatToken(line:jackLine){
        continue
    } else {
        exit
    }
} while jackLine.count > 1



