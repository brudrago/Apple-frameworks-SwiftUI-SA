import SwiftUI

struct FrameworksDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
           XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            FrameworksTitleView(frameworks: framework)
                .padding(.bottom)
            Spacer()
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                print("aqui")
            }label: {
             AFButton(title: "Lear More")
            }
        }
    }
}

struct FrameworksDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}


