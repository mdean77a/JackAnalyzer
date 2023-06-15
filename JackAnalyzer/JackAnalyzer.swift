//
//  JackAnalyzer.swift
//  JackAnalyzer
//
//  Created by J Michael Dean on 6/9/23.
//

import Foundation


var fileName = ""

enum TokenType {
    case KEYWORD, SYMBOL, IDENTIFIER, INT_CONST, STRING_CONST
}

enum Keyword {
    case CLASS, CONSTRUCTOR, FUNCTION, METHOD, FIELD, STATIC,
         VAR, INT, CHAR, BOOLEAN, VOID, TRUE, FALSE, NULL, THIS,
         LET, DO, IF, ELSE, WHILE, RETURN
}



struct JackAnalyzer{
    var tokenizer = JackTokenizer()
    var compiler = CompilationEngine()
    
    func openFiles(){
        if CommandLine.arguments.dropFirst().count == 0 {
            print("USAGE: You need to provide a jack filename or a directory containing jack files.")
            return
        }
        
        // Process the single jack file situation
        if CommandLine.arguments[1].split(separator: ".").last == "jack" {
            fileName = String(CommandLine.arguments[1].split(separator: ".").first!)
            guard let sourceFile = freopen(fileName + ".jack", "r", stdin) else {
                print("ERROR: Could not open the source jack file.")
                return
            }
            guard let xmlFile = freopen(fileName + ".xmlout", "w", stdout)
            else {
                print("ERROR: Could not create target xml file.")
                return}
            
            processFile(fileName:fileName)
            
            fclose(sourceFile)
            fclose(xmlFile)
        }
        
        // Argument was not jack file.  Check to see if it is a directory and process:
        let url = URL(fileURLWithPath: CommandLine.arguments[1])
        if url.hasDirectoryPath {
            //let directoryName = url.lastPathComponent
            let enumerator = FileManager.default.enumerator(atPath: url.lastPathComponent)
            let filePaths = enumerator?.allObjects as! [String]
            
            let jackFilePaths = filePaths.filter{$0.contains(".jack")}
            if jackFilePaths.isEmpty {
                print("ERROR: The directory contains no jack files.")
                return
            }
            
            for jackFile in jackFilePaths{
                fileName = url.lastPathComponent + "/" + jackFile.split(separator: ".").first!
                guard let sourceFile = freopen(fileName + ".jack", "r", stdin) else {
                    print("ERROR: Could not open the source file.")
                    return
                }
                guard let xmlFile = freopen(fileName + "T.xmlout", "w", stdout)
                else {
                    print("ERROR: Could not create target xml file.")
                    return}
                
                processFile(fileName: fileName)
                
                fclose(sourceFile)
                fclose(xmlFile)
            }
        }
    }
    
    func processFile(fileName:String){
        
        var stillInCommentBlock = false
        print("<tokens>")
        while var line = readLine(){
            
            // Kill blank lines and single line comments
            if tokenizer.commentOrBlankLine(line: line){
                continue
            }
            
            // Handle comments that open and close on different lines
            if tokenizer.openMultilineComment(line: line){
                stillInCommentBlock = true
                continue
            }
            if tokenizer.closeMultilineComment(line: line){
                stillInCommentBlock = false
                continue
            }
            if stillInCommentBlock {
                continue
            }
            
            // Now trim off comments that start in middle of a line
            if let temp = tokenizer.discardMidlineComment(line: line){
                line = temp
            }
            
            // At this point, the line only contains elements that are within
            // the Jack lexicon, so we process these lines to capture all tokens.
            tokenizer.eatInputLine(line:line)
            
        }
        print("</tokens>")
    }
    func run() {
        openFiles()
    }
}
























