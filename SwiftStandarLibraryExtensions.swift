//
//  SwiftStandarLibraryExtensions.swift
//

import Foundation

extension Int {
    func repeat(f: Void -> Void) {
        for i in 0...self {
            f()
        }
    }
    
    func until(f: (Int) -> Void) {
        for i in 0...self {
            f(i)
        }
    }
}

extension String {
    var characters: [Character] {
        return Array(self)
    }
    
    var length: Int {
        return count(self)
    }
}


extension String {
    subscript (i: Int) -> Character {
        return self[advance(self.startIndex, i)]
    }
    
    subscript (i: Int) -> String {
        return String(self[i])
    }
    
    // Foundation required
    subscript (r: Range<Int>) -> String {
        return substringWithRange(Range(start: advance(startIndex, r.startIndex), end: advance(startIndex, r.endIndex)))
    }
}

// http://www.objc.io/snippets/1.html
extension Array {
    var decompose : (head: T, tail: [T])? {
        return (count > 0) ? (self[0], Array(self[1..<count])) : nil
    }
}