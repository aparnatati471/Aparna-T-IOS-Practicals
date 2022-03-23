import UIKit

class LifeCycle: UIViewController {

    // MARK: ViewController Life Cycle Methods
    override func loadView() {
        super.loadView()
        print("ViewController: View Created")
    }
    
    override func loadViewIfNeeded() {
        super.loadViewIfNeeded()
        print("ViewController: View Will Load if it is not loaded yet")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController: View Did Load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController: View is about to added to View hierarchy")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController: View was added to View hierarchy")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController: View is about to remove from View hierarchy")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController: View was removed from View hierarchy")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("ViewController: viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("ViewController: viewDidLayoutSubviews")
    }
}
