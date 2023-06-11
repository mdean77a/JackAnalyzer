import Foundation
import RegexBuilder


let jackCode = """
class Main {
    static boolean test;    // Added for testing -- there is no static keyword
                            // in the Square files.
    function void main() {
      var SquareGame game;
      let game = SquareGame.new();
      do game.run();
      do game.dispose();
      return;
    }

    function void more() {  // Added to test Jack syntax that is not used in
        var int i, j;       // the Square files.
        var String s;
        var Array a;
        if (false) {
            let s = "string constant";
            let s = null;
            let a[1] = a[2];
        }
        else {              // There is no else keyword in the Square files.
            let i = i * (-j);
            let j = j / (-2);   // note: unary negate constant 2
            let i = i | j;
        }
        return;
    }
}
"""

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


let blankOrComment = Regex {
    OneOrMore{
        ChoiceOf{
            blankLine
            comment
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

if ((try? blankOrComment.wholeMatch(in: " // this is a comment")) != nil){
    print("comment")
}
if let match = try? blankOrComment.wholeMatch(in: "  //  //"){
    print("\(match)")
    print(match.0)
    print(match.count)
    
}

if let match2 = try? midLineComment.wholeMatch(in: " do while this is before comment // comment lines"){
    print(match2.0)
    print(match2.1)
    print(match2.2)
}


