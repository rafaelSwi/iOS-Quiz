import SwiftUI

struct StatisticsPage: View {
    
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .ignoresSafeArea(.all)
                .gradient(colors: [.black, .gray])
            
            VStack {
                
                Spacer()
                
                Group {
                    
                    Text ("Vezes que acertou: \(PlayerStatistic.correctAnswers)")
                        .frame(width: 315, height: 35)
                    
                    Line(color: .gray, width: 315)
                        .padding(.bottom)
                    
                    Text ("Vezes que errou: \(PlayerStatistic.wrongAnswers)")
                        .frame(width: 315, height: 35)
                    
                    Line(color: .gray, width: 315)
                        .padding(.bottom)
                    
                    Text ("Pontos Ganhos: \(PlayerStatistic.totalPointsGained)")
                        .frame(width: 315, height: 35)
                    
                    Line(color: .gray, width: 315)
                        .padding(.bottom)
                    
                    Text ("Pontos Perdidos ou Gastos: \(PlayerStatistic.totalPointsSpentOrLost)")
                        .frame(width: 315, height: 35)
                    
                    Line(color: .gray, width: 315)
                        .padding(.bottom)
                    
                    Text ("Total de Dicas Utilizadas: \(PlayerStatistic.hintsUsed)")
                        .frame(width: 315, height: 35)
                    
                    Line(color: .gray, width: 315)
                        .padding(.bottom)
                    
                }
                
                Spacer()
                
                Button (action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    ReturnButton()
                }
            }
        }
    }
}
