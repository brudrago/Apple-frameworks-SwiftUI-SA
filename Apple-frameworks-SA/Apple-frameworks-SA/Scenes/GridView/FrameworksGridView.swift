import SwiftUI

struct FrameworksGridView: View {
    //@StateObject - pq tem que guardar o estado
    @StateObject var viewModel: FrameworksDetailViewModel = FrameworksDetailViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
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
                FrameworksDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
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


