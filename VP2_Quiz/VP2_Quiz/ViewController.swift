//
//  ViewController.swift
//  VP2_Quiz
//
//  Created by ios on 17/04/17.
//  Copyright © 2017 Samuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var q01: UILabel!
    
    @IBOutlet weak var imgq01: UIImageView!
    
    @IBOutlet weak var btnAnswer1: UIButton!
    @IBOutlet weak var btnAnswer2: UIButton!
    @IBOutlet weak var btnAnswer3: UIButton!
    @IBOutlet weak var btnAnswer4: UIButton!
    @IBOutlet weak var btnfd: UIButton!
    
    @IBAction func btFb(_ sender: AnyObject) {
        viewFb.isHidden = true
        
        if(quizEnded){
            startQuiz()
        }else{
            nextQuestion()
        }
    }

    func nextQuestion(){
        currentQuestion += 1
        
        if(currentQuestion < questions.count){
            showQuestion(questionid: currentQuestion)
        }else{
            endQuiz()
        }
    }
    
    func endQuiz(){
        grade = grade / Double(questions.count)
        quizEnded = true
        viewFb.isHidden = false
        textFb.text = "Sua nota: \(grade)"
        btnfd.setTitle("Refazer", for: .normal)
    }
    
    @IBOutlet weak var viewFb: UIView!
    @IBOutlet weak var textFb: UILabel!
    

    var questions : [Question]!
    var currentQuestion = 0
    var grade = 0.0
    var quizEnded = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Question_01
        let q0answer0 = Answer(answer: "New York e Canadá", isCorrect: false)
        let q0answer1 = Answer(answer: "New York e Arizona", isCorrect: false)
        let q0answer2 = Answer(answer: "Ohio e Canadá", isCorrect: true)
        let q0answer3 = Answer(answer: "Ambos de New York", isCorrect: false)
        let question0 = Question(question: "De onde Ted e Robin vieram (nasceram), respectivamente?", strImageFileName: "imgQ01.jpg",
                                 answers: [q0answer0,q0answer1,q0answer2,q0answer3])
        
        //Question_02
        let q1answer0 = Answer(answer: "Lily", isCorrect: false)
        let q1answer1 = Answer(answer: "Marshal", isCorrect: false)
        let q1answer2 = Answer(answer: "Barney", isCorrect: true)
        let q1answer3 = Answer(answer: "Robin", isCorrect: false)
        let question1 = Question(question: "Que personagem costuma fazer o jogo chamado: Você conhece o Ted?", strImageFileName: "imgQ02.jpg",
                                 answers: [q1answer0,q1answer1,q1answer2,q1answer3])
        //Question_03
        let q2answer0 = Answer(answer: "Um golfinho", isCorrect: false)
        let q2answer1 = Answer(answer: "Um dragão", isCorrect: false)
        let q2answer2 = Answer(answer: "Uma cobra", isCorrect: false)
        let q2answer3 = Answer(answer: "Uma borboleta", isCorrect: true)
        let question2 = Question(question: "A tatuagem que Stella removeu de Ted era:", strImageFileName: "imgQ03.jpg",
                                 answers: [q2answer0,q2answer1,q2answer2,q2answer3])
        //Question_04
        let q3answer0 = Answer(answer: "I told you", isCorrect: false)
        let q3answer1 = Answer(answer: "Suit up", isCorrect: true)
        let q3answer2 = Answer(answer: "If I were you", isCorrect: false)
        let q3answer3 = Answer(answer: "Let's shake it up", isCorrect: false)
        let question3 = Question(question: "Qual dessas frases é quase sempre dita pelo personagem Barney?", strImageFileName: "imgQ04.jpg",
                                 answers: [q3answer0,q3answer1,q3answer2,q3answer3])
        //Question_05
        let q4answer0 = Answer(answer: "Na faculdade", isCorrect: false)
        let q4answer1 = Answer(answer: "Em um restaurante francês", isCorrect: false)
        let q4answer2 = Answer(answer: "Em uma boate", isCorrect: false)
        let q4answer3 = Answer(answer: "No banheiro do bar", isCorrect: true)
        let question4 = Question(question: "Onde Ted e Barney se conheceram?", strImageFileName: "imgQ05.jpg",
                                 answers: [q4answer0,q4answer1,q4answer2,q4answer3])

        //Question_06
        let q5answer0 = Answer(answer: "Lily com Hey, you bitch", isCorrect: false)
        let q5answer1 = Answer(answer: "Robin com Let's go to the mall", isCorrect: true)
        let q5answer2 = Answer(answer: "Ted com Let's freak out", isCorrect: false)
        let q5answer3 = Answer(answer: "Marshal com The sugar finishes, mom", isCorrect: false)
        let question5 = Question(question: "Quem era a estrela adolescente da série e qual era seu maior sucesso?", strImageFileName: "imgQ06.jpg",
                                 answers: [q5answer0,q5answer1,q5answer2,q5answer3])
        
        //Question_07
        let q6answer0 = Answer(answer: "Chicago", isCorrect: true)
        let q6answer1 = Answer(answer: "Paris", isCorrect: false)
        let q6answer2 = Answer(answer: "Tokyo", isCorrect: false)
        let q6answer3 = Answer(answer: "New Jersey", isCorrect: false)
        let question6 = Question(question: "Na quinta temporada da série, Robin rejeitou um trabalho importante. Para onde ela teria que viajar para poder trabalhar nele?", strImageFileName: "imgQ07",
                                 answers: [q6answer0,q6answer1,q6answer2,q6answer3])
        //Question_08
        let q7answer0 = Answer(answer: "Sarah", isCorrect: false)
        let q7answer1 = Answer(answer: "Quinn", isCorrect: true)
        let q7answer2 = Answer(answer: "Nora", isCorrect: false)
        let q7answer3 = Answer(answer: "Robin", isCorrect: false)
        let question7 = Question(question: "Qual o nome da mulher que quase se casou com o Barney?", strImageFileName: "imgQ08.jpg",
                                 answers: [q7answer0,q7answer1,q7answer2,q7answer3])
        //Question_09
        let q8answer0 = Answer(answer: "Azul", isCorrect: false)
        let q8answer1 = Answer(answer: "Rosa", isCorrect: false)
        let q8answer2 = Answer(answer: "Branco", isCorrect: false)
        let q8answer3 = Answer(answer: "Amarelo", isCorrect: true)
        let question8 = Question(question: "Qual a cor do guarda-chuva da futura esposa de Ted?", strImageFileName: "imgQ09",
                                 answers: [q8answer0,q8answer1,q8answer2,q8answer3])
        //Question_10
        let q9answer0 = Answer(answer: "Um trompete azul", isCorrect: true)
        let q9answer1 = Answer(answer: "Um relógio de parede", isCorrect: false)
        let q9answer2 = Answer(answer: "Um quadro", isCorrect: false)
        let q9answer3 = Answer(answer: "Um capacete rosa", isCorrect: false)
        let question9 = Question(question: "O que Ted deu para Robin no pedido de namoro que ele fez?", strImageFileName: "imgQ10.jpg",
                                 answers: [q9answer0,q9answer1,q9answer2,q9answer3])
        
        questions = [question0,question1,question2,question3,question4,question5,question6,question7,question8,question9]
        
        startQuiz()
    }

    
    func startQuiz(){
        questions.shuffle()
        for i in 0 ..< questions.count {
            questions[i].answers.shuffle()
        }
        quizEnded = false
        grade = 0.0
        currentQuestion = 0
        
        showQuestion(questionid: 0)
    }
    
    
    func showQuestion(questionid : Int){
        btnAnswer1.isEnabled = true
        btnAnswer2.isEnabled = true
        btnAnswer3.isEnabled = true
        btnAnswer4.isEnabled = true
        q01.text = questions[questionid].strQuestion
        imgq01.image = questions[questionid].imgQuestion
        btnAnswer1.setTitle(questions[questionid].answers[0].strAnswer, for: UIControlState.normal)
        btnAnswer2.setTitle(questions[questionid].answers[1].strAnswer, for: UIControlState.normal)
        btnAnswer3.setTitle(questions[questionid].answers[2].strAnswer, for: UIControlState.normal)
        btnAnswer4.setTitle(questions[questionid].answers[3].strAnswer, for: UIControlState.normal)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func q01a(_ sender: AnyObject) {
        selectAnswer(answerid: 0)
    }
    
    @IBAction func q01b(_ sender: AnyObject) {
        selectAnswer(answerid: 1)
    }

    @IBAction func q01c(_ sender: AnyObject) {
        selectAnswer(answerid: 2)
    }
    
    @IBAction func q01d(_ sender: AnyObject) {
        selectAnswer(answerid: 3)
    }
    
    func selectAnswer(answerid : Int){
        
        btnAnswer1.isEnabled = false
        btnAnswer2.isEnabled = false
        btnAnswer3.isEnabled = false
        btnAnswer4.isEnabled = false
        
        viewFb.isHidden = false
        
        let answer : Answer = questions[currentQuestion].answers[answerid]
        
        if(answer.isCorrect == true){
            grade = grade + 1.0
            textFb.text = answer.strAnswer + "\n\nResposta Correta!"
        }else{
            textFb.text = answer.strAnswer + "\n\nResposta Incorreta"
        }
        
        if(currentQuestion < questions.count-1){
            btnfd.setTitle("Próxima", for: .normal)
        }else{
            btnfd.setTitle("Ver Nota", for: .normal)
            
        }
    }


}

