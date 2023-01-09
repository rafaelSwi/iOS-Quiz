import SwiftUI


struct QuestionBrowser: View {
    
    @ObservedObject var question = questions

    var body: some View {
        
        ZStack {
            
            Color.black.ignoresSafeArea(.all)
        
            VStack {
                
                ScrollView {
                    
                    ForEach (question.all_questions) { indexQuestion in
                        
                        HStack {
                            
                            Text ("\(indexQuestion.text)")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .fontWeight(.light)
                                .frame(width: 285, height: 35)
                            
                            Button (action: {
                                if let index = question.all_questions.firstIndex(of: indexQuestion) {
                                    question.all_questions.remove(at: index)
                                }
                            }) {
                                Image(systemName: "trash")
                                    .foregroundColor(.red)
                            }
                        }
                        
                    }
                    
                    
                }
                
                Button (action: {
                    questions.all_questions.removeAll()
                    UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
                }) {
                    Text ("Limpar Seleção de Perguntas (Possuem \(questions.all_questions.count))")
                        .foregroundColor(.white)
                        .frame(width: 350, height: 24)
                        .background(Color.red.opacity(0.4))
                        .cornerRadius(28)
                }
                
                Button (action: {
                    
                    for item in all_questions_default {
                        questions.all_questions.append(item)
                    }
                    
                    UIImpactFeedbackGenerator(style: .soft).impactOccurred()
                }) {
                    Text ("Adicionar Seleção de Perguntas Padrão")
                        .foregroundColor(.white)
                        .frame(width: 350, height: 24)
                        .background(Color.yellow.opacity(0.4))
                        .cornerRadius(28)
                }
                
            } .animation(.spring())
        }
    }
}
