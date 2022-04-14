// MARK: Enum for error display
enum MyError: Error {
    case fail
}

// MARK: Protocol for Presenter
protocol AnyPresenter {
    
    var router: AnyRouter? { get set }
    var interactor: AnyInteractor? { get set }
    var view: AnyView? { get set }
    func interactorDidFetchUsers(with result: Result<[User], Error>)
    
}

// MARK: Presenter class implements presenter protocol
class UserPresenterOne: AnyPresenter {
    
    var router: AnyRouter?
    
    var interactor: AnyInteractor? {
        didSet {
            interactor?.getUsers()
        }
    }
    
    var view: AnyView?

    // Sends data to view from interactors
    func interactorDidFetchUsers(with result: Result<[User], Error>) {
        switch result {
            case .success(let users):
                view?.update(with: users)
            case .failure:
                view?.update(with: "Failed to load data!!")
        }
    }
    
}
