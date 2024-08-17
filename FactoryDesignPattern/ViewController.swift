import UIKit

class ViewController: UIViewController {
    private let screenFactory = ScreenFactory()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
            let vc = self.screenFactory.createScreen(with: .systemBlue)
            self.present(vc, animated: true)
        })
    }
}
