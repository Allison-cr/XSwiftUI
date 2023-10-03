import SwiftUI

struct ContentView: View {
    @ObservedObject private var coordinator = Coordinator()

    var body: some View {
        VStack {
            
            List(coordinator.screenStack, id: \.self) { screen in
                Text(screenToString(screen))
            }
            
            
            Button(action: {
                coordinator.navigateTo(screenType: .screen1)
            }) {
                Text("Navigate to Screen 1")
            }
            Button(action: {
                coordinator.navigateTo(screenType: .screen2)
            }) {
                Text("Navigate to Screen 2")
            }
            Button(action: {
                coordinator.navigateTo(screenType: .screen3)
            }) {
                Text("Navigate to Screen 3")
            }
            Button(action: {
                coordinator.navigateTo(screenType: .screen4)
            }) {
                Text("Navigate to Screen 4")
            }
            Button(action: {
                coordinator.navigateTo(screenType: .screen5)
            }) {
                Text("Navigate to Screen 5")
            }
        }
    }
    private func screenToString(_ screen: ScreenType) -> String {
           switch screen {
           case .screen1:
               return "Screen 1"
           case .screen2:
               return "Screen 2"
           case .screen3:
               return "Screen 3"
           case .screen4:
               return "Screen 4"
           case .screen5:
               return "Screen 5"
           }
       }
}
