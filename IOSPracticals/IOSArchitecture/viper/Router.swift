import UIKit

// MARK: Protocol for Router
protocol AnyRouter {
    func start(navigationController: UINavigationController?)
}

// MARK: Router class implements router protocol
class UserRouter: AnyRouter {

    // Handles navigation
    func start(navigationController: UINavigationController?) {
        let home = UsersViewController.instantiateFromStoryBoard(from: .viper)
    
        var presenter: AnyPresenter = UserPresenterOne()
        var interactor: AnyInteractor = UserInteractor()
        
        home.presenter = presenter
        interactor.presenter = presenter
        
        presenter.router = self
        presenter.view = home
        presenter.interactor = interactor
        
        navigationController?.pushViewController(home, animated: true)
    }
   
}
