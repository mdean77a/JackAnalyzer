//
//  JackAnalyzer.swift
//  JackAnalyzer
//
//  Created by J Michael Dean on 6/9/23.
//

import Foundation
import RegexBuilder



struct JackAnalyzer{
    var tokenizer = JackTokenizer()
    var compiler = CompilationEngine()
    
    func run() {
        print("Hello, World!  From JackAnalyzer structure.")
        tokenizer.run()
        compiler.run()
    }
}
