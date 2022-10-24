import SwiftUI

//ObservableObject - pq precisa ser observada
final class FrameworksDetailViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    //@Published - pq precisa ser ouvida em outra classe
    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
}
