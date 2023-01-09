import SwiftUI

struct WelcomePage: View {
    
    @State var playQuiz: Bool = false
    @State var statisticsPage: Bool = false
    @State var questionManagerPage: Bool = false
    @State var aboutPage: Bool = false
    @State var alert: Bool = false
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .ignoresSafeArea(.all)
                .gradient(colors: [.blue, CustomColor.defaultColor])
            
            VStack {
                
                Image ("logo_800")
                    .resizable()
                    .frame(width: 340, height: 340)
                    .padding(.all)
                
                Spacer ()
                
                Group {
                    
                    Button (action: {
                        if questions.all_questions.count > 3
                        {playQuiz = true} else {alert = true}
                    }) {
                        Text ("Iniciar Quiz")
                    }
                    .fullScreenCover(isPresented: $playQuiz, content: QuizView.init)
                    .alert(isPresented: $alert) {
                        Alert(title: Text("Alerta"), message: Text("Você precisa ter uma quantidade maior de perguntas para iniciar o Quiz"), dismissButton: .default(Text("OK")))
                    }
                    
                    Button (action: {
                        statisticsPage = true
                    }) {
                        Text ("Estatísticas")
                    }
                    .fullScreenCover(isPresented: $statisticsPage, content: StatisticsPage.init)
                    
                    Button (action: {
                        questionManagerPage = true
                    }) {
                        Text ("Perguntas")
                    }
                    .fullScreenCover(isPresented: $questionManagerPage, content: QuestionManager.init)
                    
                    Button (action: {
                        aboutPage = true
                    }) {
                        Text ("Sobre o App")
                    }
                    .fullScreenCover(isPresented: $aboutPage, content: AboutPage.init)
                    
                }
                .foregroundColor(.white)
                .font(.subheadline)
                .frame(width: 250, height: 43)
                .background(CustomColor.defaultColor.opacity(0.7))
                .cornerRadius(30)
                
                Spacer()
                
            }
        }
    }
}
