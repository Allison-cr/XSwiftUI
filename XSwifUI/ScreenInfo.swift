import SwiftUI

struct ScreenInfo: Hashable {
    let screenType: ScreenType

}

enum ScreenType {
    case screen1
    case screen2
    case screen3
    case screen4
    case screen5
    
    // dlya otobrajenya steka
    var screenName: String {
        switch self {
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

