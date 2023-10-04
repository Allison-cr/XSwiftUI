import SwiftUI

struct Screen5SwiftUIView: View {
    @ObservedObject var coordinator: Coordinator
    
    var body: some View {
        VStack {
            Text("Screen 5 Content")
                .navigationBarTitle("Screen 5", displayMode: .inline)
            List(self.coordinator.screenStack, id: \.self) { screenInfo in
                        Text(screenInfo.screenType.screenName)
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
}
