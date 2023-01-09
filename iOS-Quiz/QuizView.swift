import SwiftUI

struct QuizView: View {
    
    @Environment (\.presentationMode) var presentationMode
    
    @ObservedObject var question = questions
    
    @State var questionToLoad: Question = loadQuestion()
    
    @State var points: Int = 0
    
    @State var showHint: Bool = false
    
    func isAboveZero () -> Bool {
        if points >= 0 {return true}
        else {return false}
    }
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .ignoresSafeArea(.all)
                .gradient(colors: [CustomColor.defaultColor, .cyan])
            
            VStack {
                
                Text ("\(questionToLoad.text)")
                    .font(.system(size: 36))
                    .multilineTextAlignment(.center)
                    .padding(.all)
                
                Spacer ()
                
                Group {
                    
                    ForEach(questionToLoad.options, id: \.self) { option in
                        
                        Button (action: {
                            
                            if isCorrect(questionToLoad, option: option) {
                                points += 30
                                PlayerStatistic.correctAnswers += 1
                                PlayerStatistic.totalPointsGained += 30
                                UIImpactFeedbackGenerator(style: .light).impactOccurred()
                            } else {
                                points -= 15
                                PlayerStatistic.wrongAnswers += 1
                                PlayerStatistic.totalPointsSpentOrLost += 15
                                UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
                            }
                            
                            questionToLoad = loadQuestion()
                            
                        }) {
                            
                            Text ("\(option)")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .frame(width: 285, height: 45)
                                .background(CustomColor.defaultColor.opacity(0.5))
                                .cornerRadius(30)
                            
                        }
                    }
                }
                
                HStack {
                    
                    Text ("Pontos: \(points)")
                        .foregroundColor(.white)
                        .frame(width: 160, height: 30)
                        .background(
                            isAboveZero()
                            ? Color.green.opacity(0.4)
                            : Color.red.opacity(0.4)
                        )
                        .cornerRadius(28)
                    
                    Button (action: {
                        showHint.toggle()
                        PlayerStatistic.hintsUsed += 1
                        PlayerStatistic.totalPointsSpentOrLost += 10
                        points -= 10
                    }) {
                        Text ("USAR DICA (-10)")
                            .foregroundColor(.white)
                            .frame(width: 160, height: 30)
                            .background(Color.blue.opacity(0.2))
                            .cornerRadius(28)
                    }
                    .alert(isPresented: $showHint) {
                        Alert(title: Text("Dica"), message: Text(questionToLoad.hint), dismissButton: .default(Text("Continuar")))
                    }
                    
                }
                .padding(.top)
                
                Button (action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    ReturnButton()
                }
            }
        } .animation(.spring())
    }
}
