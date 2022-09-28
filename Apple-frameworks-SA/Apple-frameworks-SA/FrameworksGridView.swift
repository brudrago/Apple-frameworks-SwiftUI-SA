import SwiftUI

struct FrameworksGridView: View {
    //@StateObject - pq tem que guardar o estado
    @StateObject var viewModel: FrameworksDetailViewModel = FrameworksDetailViewModel()
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { frameworks in
                        FrameworksTitleView(frameworks: frameworks)
                            .onTapGesture {
                            viewModel.selectedFramework = frameworks
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworksDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework)
            }
        }
    }
}

struct FrameworksGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworksGridView()
            .preferredColorScheme(.dark)
    }
}


