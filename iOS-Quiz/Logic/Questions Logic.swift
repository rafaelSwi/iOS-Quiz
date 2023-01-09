import Foundation

func loadQuestion () -> Question {
    
    var question = questions.all_questions.randomElement()
    
    return question!
    
}

func isCorrect (_ question: Question, option: String) -> Bool {
    
    if (question.correctOption == option) {
        return true
    } else {
        return false
    }
    
}
