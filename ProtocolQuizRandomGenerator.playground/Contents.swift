//: Playground - noun: a place where people can play

import UIKit

//quiz generator

class Question {
    var type: QuestionType
    var query: String
    var answer: String
    
    init (type: QuestionType, query: String, answer: String) {
        self.type = type
        self.query = query
        self.answer = answer
    }
}

//enumeration of questions
enum QuestionType: String {
    case trueFalse = "Nashville is the capital of Tennessee"
    case multipleChoice = "Which of the following is a US State Capital? (New York City, NY),(Columbus, OH),(Anchorage, AK),(Reno, NV)"
    case shortAnswer = "What is the capital of Wisconsin?"
    case essay = "In 50 words explain what what makes an acid a strong acid"
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

//enumeration of answers
enum AnswerType: String {
    case trueFalse = "True"
    case multipleChoice = "Columbus, OH"
    case shortAnswer = "Madison"
    case essay = "A strong acid completly ionizes in water, meaning it dissociates with it's protons when it interacts with water"
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

//protocol for generating a question
protocol QuestionGenerator {
    func generateRandomQuestion() -> Question
}

//creating a question for a quiz uing the QuestionGenerator protocol
class Quiz: QuestionGenerator {
    func generateRandomQuestion() -> Question {
        let randomNumeral = Int(arc4random_uniform(4))
        let randomType = QuestionType.types[randomNumeral]
        let randomQuery = randomType.rawValue
        let randomAnswer = AnswerType.types[randomNumeral].rawValue
        let randomQuestion = Question(type: randomType, query: randomQuery, answer: randomAnswer)
        return randomQuestion
    }
}

//create new quiz
let quiz = Quiz()

//create a new question for this quiz
var quizQuestions: [Question] = [quiz.generateRandomQuestion()]

var size = 1;
//ensures no duplicate questions
while quizQuestions.count != 4 {
    var isUsed = false
    var tempQuestion = quiz.generateRandomQuestion()
    
    for index in 0...quizQuestions.count - 1 {
        if tempQuestion.type == quizQuestions[index].type {
            isUsed = true
        }
    }
    if !isUsed {
        quizQuestions.append(tempQuestion)
        size + 1
    }
}

print("Question Type: \(quizQuestions[0].type) \nQuery: \(quizQuestions[0].query) \nAnswer: \(quizQuestions[0].answer)\n")
print("Question Type: \(quizQuestions[1].type) \nQuery: \(quizQuestions[1].query) \nAnswer: \(quizQuestions[1].answer)\n")
print("Question Type: \(quizQuestions[2].type) \nQuery: \(quizQuestions[2].query) \nAnswer: \(quizQuestions[2].answer)\n")
print("Question Type: \(quizQuestions[3].type) \nQuery: \(quizQuestions[3].query) \nAnswer: \(quizQuestions[3].answer)\n")
