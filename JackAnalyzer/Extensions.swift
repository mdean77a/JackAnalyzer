//
//  Extensions.swift
//  JackAnalyzer
//
//  Created by J Michael Dean on 6/12/23.
//

import Foundation
extension String {
    func trim() -> String {
        return self.trimmingCharacters(in:CharacterSet.whitespaces)
    }
}
