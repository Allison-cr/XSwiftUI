import SwiftUI

class Screen1ViewModel: ObservableObject {
    @Published var screenTitle = "Screen 1 Content"
    @Published var screenStack: [ScreenType] = [.screen1, .screen2, .screen3, .screen4, .screen5]
    
    private let coordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func navigateTo(screenType: ScreenType) {
        coordinator.navigateTo(screenType: screenType)
    }
}
class Screen2ViewModel: ObservableObject {
    @Published var screenTitle = "Screen 2 Content"
    @Published var screenStack: [ScreenType] = [.screen1, .screen3, .screen4, .screen5]
    
    private let coordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func navigateTo(screenType: ScreenType) {
        coordinator.navigateTo(screenType: screenType)
    }
}

class Screen3ViewModel: ObservableObject {
    @Published var screenTitle = "Screen 3 Content"
    @Published var screenStack: [ScreenType] = [.screen1, .screen2, .screen4, .screen5]
    
    private let coordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func navigateTo(screenType: ScreenType) {
        coordinator.navigateTo(screenType: screenType)
    }
}

class Screen4ViewModel: ObservableObject {
    @Published var screenTitle = "Screen 4 Content"
    @Published var screenStack: [ScreenType] = [.screen1, .screen2, .screen3, .screen5]
    
    private let coordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func navigateTo(screenType: ScreenType) {
        coordinator.navigateTo(screenType: screenType)
    }
}

class Screen5ViewModel: ObservableObject {
    @Published var screenTitle = "Screen 5 Content"
    @Published var screenStack: [ScreenType] = [.screen1, .screen2, .screen3, .screen4]
    
    private let coordinator: Coordinator
    
    init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    func navigateTo(screenType: ScreenType) {
        coordinator.navigateTo(screenType: screenType)
    }
}
