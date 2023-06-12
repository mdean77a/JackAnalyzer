import Foundation
import RegexBuilder


let regex = Regex {
    OneOrMore(.digit)
    "@"
    OneOrMore(.word)
}

var line = "12345@hello"
let match = line.firstMatch(of: regex)
//let match = "12345@hello".firstMatch(of: regex)
print(match!.0)


let regex2 = Regex {
    Optionally(.digit)
    "@"
    OneOrMore(.word)
}

let match2 = "12345@hello".firstMatch(of: regex2)
print(match2!.0)

let regex3 = Regex {
    Repeat(4...6) {
        .digit
    }
    "@"
    OneOrMore(.word)
}

let match3 = "12345@hello".firstMatch(of: regex3)
print(match3!.0)

let text = "Writer/Arjuna Sky Kok/$1,000/December 4, 2022"
let text2 = "Illustrator/Karen O'Reilly/$350/November 30, 2022"

let job = Regex {
    ChoiceOf {
        "Writer"
        "Illustrator"
    }
}

if let jobMatch = text.firstMatch(of: job) {
    let (wholeMatch) = jobMatch.output
    print(wholeMatch)
}

let name = Regex {
    OneOrMore(
        ChoiceOf {
            CharacterClass(.word)
            CharacterClass(.whitespace)
            "'"
        }
    )
}

if let nameMatch = "Karen O'Reilly".firstMatch(of: name) {
    let (wholeMatch) = nameMatch.output
    print(wholeMatch)
}

if let nameMatch2 = text2.firstMatch(of: name) {
    let (wholeMatch) = nameMatch2.output
    print(wholeMatch)
}

let USlocale = Locale(identifier: "en_US")
let payment = Regex {
    One(.localizedCurrency(code: "USD", locale: USlocale))
}

if let paymentMatch = text.firstMatch(of: payment) {
    let (wholeMatch) = paymentMatch.output
    print(wholeMatch)
}

let date = Regex {
    One(.date(.long, locale: USlocale, timeZone: .gmt))
}

if let dateMatch = text.firstMatch(of: date) {
    let (wholeMatch) = dateMatch.output
    print(wholeMatch)
}

let separator = Regex { "/" }
let regexCode = Regex {
    job
    separator
    name
    separator
    payment
    separator
    date
}

if let match = text.firstMatch(of: regexCode) {
    let (wholeMatch) = match.output
    print(wholeMatch)
}

if let match2 = text2.firstMatch(of: regexCode) {
    let (wholeMatch) = match2.output
    print(wholeMatch)
}

let regexCodeWithCapture = Regex {
    Capture {
        job
    }
    separator
    Capture {
        name
    }
    separator
    Capture {
        payment
    }
    separator
    Capture {
        date
    }
}

if let matchWithCapture = text.firstMatch(of: regexCodeWithCapture) {
    let (wholeMatch) = matchWithCapture.output
    print(wholeMatch.0)
    print(wholeMatch.1)
    print(wholeMatch.2)
    print(wholeMatch.3)
    print(wholeMatch.4)
}
