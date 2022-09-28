import SwiftUI

struct FrameworksDetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    print("aqui")
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }.padding()
            
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
        FrameworksDetailView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}


