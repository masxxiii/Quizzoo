//
//  Quiz.swift
//  Quizzoo
//
//  Created by Masood Zafar on 08.07.2021.
//

import Foundation

struct Question {
    
    let question: String
    let choiceA: String
    let choiceB: String
    let choiceC: String
    let ans: String
    
    init(q: String, a: String, b: String, c: String, d: String) {
        question = q
        choiceA = a
        choiceB = b
        choiceC = c
        ans = d
    }
}
