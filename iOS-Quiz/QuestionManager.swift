import SwiftUI

fileprivate struct TextForQuestionManager: View {
    
    @State var text: String
    
    var body: some View {
        
        Text ("\(text)")
            .padding(.top)
            .font(.caption)
            .frame(width: 270, height: 35)
    }
}

struct QuestionManager: View {
    
    @Environment (\.presentationMode) var presentationMode
    
    @State private var questionText: String = ""
    @State private var questionHint: String = ""
    @State private var correctOption: String = ""
    @State private var wrongOption01: String = ""
    @State private var wrongOption02: String = ""
    @State private var wrongOption03: String = ""
    
    func allFieldsHaveText () -> Bool {
        var check: Bool = true
        if questionText.isEmpty {check = false}
        if questionHint.isEmpty {check = false}
        if correctOption.isEmpty {check = false}
        if wrongOption01.isEmpty {check = false}
        if wrongOption02.isEmpty {check = false}
        if wrongOption03.isEmpty {check = false}
        return check
    }
    
    func isCorrectOptionEqualToWrong () -> Bool {
        var check: Bool = false
        if (correctOption == wrongOption01) {check = true}
        if (correctOption == wrongOption02) {check = true}
        if (correctOption == wrongOption03) {check = true}
        return check
    }
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Rectangle()
                    .ignoresSafeArea(.all)
                    .gradient(colors: [.blue, CustomColor.defaultColor])
                
                VStack {
                    
                    Group {
                        
                        TextForQuestionManager (text: "Pergunta da Questão")
                        
                        TextField ("Pergunta", text: $questionText)
                            .frame(width: 270, height: 35)
                        
                        Line(color: .black, width: 270)
                        
                        TextForQuestionManager (text: "Dica")
                        
                        TextField ("Dica", text: $questionHint)
                            .frame(width: 270, height: 35)
                        
                        Line(color: .black, width: 270)
                        
                        TextForQuestionManager (text: "Alternativa Correta")
                        
                        TextField ("Alternativa Correta", text: $correctOption)
                            .frame(width: 270, height: 35)
                        
                    }
                    
                    Group {
                        
                        Line(color: .black, width: 270)
                        
                        TextForQuestionManager (text: "Outra Alternativa")
                        
                        TextField ("Outra Alternativa", text: $wrongOption01)
                            .frame(width: 270, height: 35)
                        
                        Line(color: .black, width: 270)
                        
                        TextForQuestionManager (text: "Outra Alternativa")
                        
                        TextField ("Outra Alternativa", text: $wrongOption02)
                            .frame(width: 270, height: 35)
                        
                        Line(color: .black, width: 270)
                        
                        TextForQuestionManager (text: "Outra Alternativa")
                        
                        TextField ("Outra Alternativa", text: $wrongOption03)
                            .frame(width: 270, height: 35)
                        
                        Line(color: .black, width: 270)
                            .padding(.bottom)
                        
                    }
                    
                    Group {
                        
                        Button (action: {
                            
                            if allFieldsHaveText() && !isCorrectOptionEqualToWrong() {
                                
                                let questionToAdd = Question(
                                    text: questionText,
                                    correctOption: correctOption,
                                    hint: questionHint,
                                    options: [correctOption,
                                              wrongOption01,
                                              wrongOption02,
                                              wrongOption03]
                                )
                                
                                questions.all_questions.append(questionToAdd)
                                
                                presentationMode.wrappedValue.dismiss()
                                UIImpactFeedbackGenerator(style: .light).impactOccurred()
                                
                            }
                        }) {
                            Text ("Adicionar Pergunta")
                        }
                        
                        NavigationLink (destination: QuestionBrowser()) {
                            Text ("Navegar por Perguntas")
                        }
                    }
                    .foregroundColor(.white)
                    .frame(width: 350, height: 40)
                    .background(Color.blue.opacity(0.4))
                    .cornerRadius(28)
                    
                    Button (action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        ReturnButton()
                    }
                }
            }
        }
    }
}
