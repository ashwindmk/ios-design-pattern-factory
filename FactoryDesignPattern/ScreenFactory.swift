import Foundation
import UIKit

protocol ScreenFactoryProtocol {
    func createScreen(with bgColor: UIColor) -> UIViewController
}

final class ScreenFactory : ScreenFactoryProtocol {
    init() {}
    
    func createScreen(with bgColor: UIColor) -> UIViewController {
        let vc = UIViewController()
        vc.view.backgroundColor = bgColor
        return vc
    }
}
