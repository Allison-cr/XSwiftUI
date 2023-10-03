//class Coordinator {
//    var screenStack: [ScreenType] = []
//
//    func navigateTo(screenType: ScreenType) {
//        if let existingScreenIndex = screenStack.firstIndex(of: screenType) {
//            // Если экран уже есть в стеке, возвращаемся на него
//            print("Returning to existing screen: \(screenType)")
//            // Реализуйте соответствующую логику возврата на экран
//            // Например:
//             screenStack.removeLast(screenStack.count - existingScreenIndex - 1)
//        } else {
//            // Если экрана нет в стеке, создаем новый экран и добавляем его в стек
//            print("Creating new screen: \(screenType)")
//            screenStack.append(screenType)
//        }
//    }
//}

import Foundation
class Coordinator: ObservableObject {
    @Published var screenStack: [ScreenType] = []
    
    func navigateTo(screenType: ScreenType) {
        if let existingScreenIndex = screenStack.firstIndex(of: screenType) {
            print("Returning to existing screen: \(screenType)")
            // Implement the logic to return to the existing screen if needed
            screenStack.removeLast(screenStack.count - existingScreenIndex - 1)

        } else {
            print("Creating new screen: \(screenType)")
            screenStack.append(screenType)
        }
    }
}
