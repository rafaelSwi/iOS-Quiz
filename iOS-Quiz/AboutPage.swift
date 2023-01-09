import SwiftUI

struct AboutPage: View {
    
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .ignoresSafeArea(.all)
                .gradient(colors: [.black, .gray])
            
            VStack {
                
                Spacer()
                
                Group {
                    
                    Text ("Aplicativo Desenvolvido por Rafael Neuwirth Swierczynski em 9 de Janeiro de 2023, utilizando SwiftUI e publicado em seu GitHub (RafaelSwi). O Aplicativo é um Quiz sobre perguntas diversas, com a possibilidade de Adicionar e Remover questões.")
                        .foregroundColor(.white)
                        .frame(width: 290, height: 180)
                        .fontWeight(.light)
                    
                    Line(color: .white, width: 290)
                    
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
