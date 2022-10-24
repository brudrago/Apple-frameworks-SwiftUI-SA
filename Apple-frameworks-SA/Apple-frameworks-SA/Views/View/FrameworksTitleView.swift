import SwiftUI

struct FrameworksTitleView: View {
    var frameworks: Framework
    
    var body: some View {
        VStack {
            Image(frameworks.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(frameworks.name)
                .font(.title2)//dynamic
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
