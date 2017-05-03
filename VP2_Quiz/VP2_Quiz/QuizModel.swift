//
//  QuizModel.swift
//  VP2_Quiz
//
//  Created by ios on 17/04/17.
//  Copyright © 2017 Samuel. All rights reserved.
//

import Foundation
import UIKit

class Question{
    var strQuestion : String!
    var imgQuestion : UIImage!
    var answers : [Answer]!
    
    init(question : String, strImageFileName : String, answers : [Answer]){
        self.strQuestion = question
        self.imgQuestion = UIImage(named: strImageFileName)
        self.answers = answers
    }
}

class Answer{
    var strAnswer : String!
    var isCorrect : Bool!
    
    init(answer : String, isCorrect : Bool){
        self.strAnswer = answer
        self.isCorrect = isCorrect
    }
}
