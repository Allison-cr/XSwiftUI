import SwiftUI

struct Screen1SwiftUIView: View {
    @ObservedObject var viewModel: Screen1ViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.screenTitle)
                .navigationBarTitle("Screen 1", displayMode: .inline)
            
            List(viewModel.screenStack, id: \.self) { screenType in
                Text(screenType.screenName)
            } 
            
            ForEach(viewModel.screenStack, id: \.self) { screenType in
                Button(action: {
                    viewModel.navigateTo(screenType: screenType)
                }) {
                    Text("Navigate to \(screenType.screenName)")
                }
            }
        }
    }
}
struct Screen2SwiftUIView: View {
    @ObservedObject var viewModel: Screen2ViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.screenTitle)
                .navigationBarTitle("Screen 2", displayMode: .inline)
            
            List(viewModel.screenStack, id: \.self) { screenType in
                Text(screenType.screenName)
            }
            
            ForEach(viewModel.screenStack, id: \.self) { screenType in
                Button(action: {
                    viewModel.navigateTo(screenType: screenType)
                }) {
                    Text("Navigate to \(screenType.screenName)")
                }
            }
        }
    }
}

struct Screen3SwiftUIView: View {
    @ObservedObject var viewModel: Screen3ViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.screenTitle)
                .navigationBarTitle("Screen 3", displayMode: .inline)
            
            List(viewModel.screenStack, id: \.self) { screenType in
                Text(screenType.screenName)
            }
            
            ForEach(viewModel.screenStack, id: \.self) { screenType in
                Button(action: {
                    viewModel.navigateTo(screenType: screenType)
                }) {
                    Text("Navigate to \(screenType.screenName)")
                }
            }
        }
    }
}

struct Screen4SwiftUIView: View {
    @ObservedObject var viewModel: Screen4ViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.screenTitle)
                .navigationBarTitle("Screen 4", displayMode: .inline)
            
            List(viewModel.screenStack, id: \.self) { screenType in
                Text(screenType.screenName)
            }
            
            ForEach(viewModel.screenStack, id: \.self) { screenType in
                Button(action: {
                    viewModel.navigateTo(screenType: screenType)
                }) {
                    Text("Navigate to \(screenType.screenName)")
                }
            }
        }
    }
}

struct Screen5SwiftUIView: View {
    @ObservedObject var viewModel: Screen5ViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.screenTitle)
                .navigationBarTitle("Screen 5", displayMode: .inline)
            
            List(viewModel.screenStack, id: \.self) { screenType in
                Text(screenType.screenName)
            }
            
            ForEach(viewModel.screenStack, id: \.self) { screenType in
                Button(action: {
                    viewModel.navigateTo(screenType: screenType)
                }) {
                    Text("Navigate to \(screenType.screenName)")
                }
            }
        }
    }
}
