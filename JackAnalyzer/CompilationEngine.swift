//
//  CompilationEngine.swift
//  JackAnalyzer
//
//  Created by J Michael Dean on 6/9/23.
//

import Foundation
import RegexBuilder

struct CompilationEngine {
    var currentToken =  ""
    
    func process(XMLtoken: String){
        if currentToken == XMLtoken {
            print(XMLtoken)
        } else {
            print("SYNTAX ERROR")
        }
        currentToken = tokenizer.advance()
    }
    
    func compileClass(){
        
    }
    
    func compileClassVarDec(){
        
    }
    
    func compileSubroutine(){
        
    }
    
    func compileParameterList(){
        
    }
    
    func compileSubroutineBody(){
        
    }
    
    func compileVarDec(){
        
    }
    
    func compileStatements(){
        
    }
    
    func compileLet(){
        
    }
    
    func compileIf(){
        
    }
    
    func compileWhile(){
        print("<whileStatement>")
        
        
        
        print("</whileStatement>")
    }
    
    func compileDo(){
        
    }
    
    func compileReturn(){
        
    }
    
    func compileExpression(){
        
    }
    
    func compileTerm(){
        
    }
    
    func compileExpressionList(){
        
    }
    
    func run(){
        print("Hello from the compilation engine")
    }
}
