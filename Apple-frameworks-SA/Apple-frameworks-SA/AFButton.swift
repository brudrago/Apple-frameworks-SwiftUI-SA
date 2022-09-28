import SwiftUI

struct AFButton: View {
    var title: String
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
            .font(.system(size: 20, weight: .bold, design: .default))
    }
}
