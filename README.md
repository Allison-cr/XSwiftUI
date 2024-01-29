#  XSwiftUI
Реализация логики перехода между view для SwiftUI.
---

Идея заключается в создании стека и хранении экранов внутри стека.
Когда запускатеся приложение - стек пустой, при переходе на определенный экран - мы переходим на него и кладем этот экран в стек.

<img src="https://raw.githubusercontent.com/Allison-cr/XSwiftUI/main/XSwifUI/Images/Simulator%20Screenshot%20-%20iPhone%2014%20Pro%20-%202024-01-29%20at%2022.09.24.png" width="230" height="450">
<img src="https://raw.githubusercontent.com/Allison-cr/XSwiftUI/main/XSwifUI/Images/Simulator%20Screenshot%20-%20iPhone%2014%20Pro%20-%202024-01-29%20at%2022.10.01.png" width="230" height="450">
<img src="https://raw.githubusercontent.com/Allison-cr/XSwiftUI/main/XSwifUI/Images/Simulator%20Screenshot%20-%20iPhone%2014%20Pro%20-%202024-01-29%20at%2022.09.54.png" width="230" height="450">

<img src="https://raw.githubusercontent.com/Allison-cr/XSwiftUI/main/XSwifUI/Images/Simulator%20Screenshot%20-%20iPhone%2014%20Pro%20-%202024-01-29%20at%2022.09.59.png" width="230" height="450">
<img src="https://raw.githubusercontent.com/Allison-cr/XSwiftUI/main/XSwifUI/Images/Simulator%20Screenshot%20-%20iPhone%2014%20Pro%20-%202024-01-29%20at%2022.10.17.png" width="230" height="450">
<img src="https://raw.githubusercontent.com/Allison-cr/XSwiftUI/main/XSwifUI/Images/Simulator%20Screenshot%20-%20iPhone%2014%20Pro%20-%202024-01-29%20at%2022.10.20.png
" width="230" height="450">

При нажатии перехода на экран, который уже открывали, мы находим его в стеке и убираем все экраны, которые находились поверх этого view.

# Главная функция
```swift
  func navigateTo(screenType: ScreenType) {
        if let existingScreenIndex = screenStack.firstIndex(where: 
        { $0.screenType == screenType }) {
            print("Returning to existing screen: \(screenType)")
            screenStack.removeLast(screenStack.count - existingScreenIndex - 1)
            displayScreen(screenType)
        } else {
            print("Creating and opening a new screen: \(screenType)")
            let newScreen = ScreenInfo(screenType: screenType)
            screenStack.append(newScreen)
            displayScreen(screenType)
        }
    }
```

# Вспомогательная функция перехода

```swift
    private func displayScreen(_ screenType: ScreenType) {
        let viewController = UIHostingController(
            rootView: getSwiftUIView(for: screenType))
        UIApplication.shared.windows.first?.rootViewController = viewController
        UIApplication.shared.windows.first?.makeKeyAndVisible()
    }
```