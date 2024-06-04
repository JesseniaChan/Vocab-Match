import SwiftUI

class NavigationCoordinator: ObservableObject {
    enum Destination {
        case home
        case instructions
        case vocabularyList
        case game
    }
    
    @Published var currentDestination: Destination?
    
    func navigate(to destination: Destination) {
        currentDestination = destination
    }
}
