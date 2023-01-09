import SwiftUI

struct ReturnButton: View {
    var body: some View {
        Image(systemName: "arrow.down")
            .foregroundColor(.white)
            .frame(width: 350, height: 40)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(28)
            .padding(.all)
    }
}
