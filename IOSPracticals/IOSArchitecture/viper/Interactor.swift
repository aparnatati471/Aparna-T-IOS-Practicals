import Foundation

// MARK: Protocol for Interactor
protocol AnyInteractor {
    
    var presenter: AnyPresenter? { get set }
    func getUsers()
    
}

// MARK: Interactor class implements interactor protocol
class UserInteractor: AnyInteractor {
    
    var presenter: AnyPresenter?
    
    // Display data from API to tableview
    func getUsers() {
        print("Start Fetching")
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        let task = URLSession.shared.dataTask(with: url) { data, _ , error in
            
            guard let data = data, error == nil else {
                self.presenter?.interactorDidFetchUsers(with: .failure(MyError.fail))
                return
            }
            
            do {
                let entities = try JSONDecoder().decode([User].self, from: data)
                self.presenter?.interactorDidFetchUsers(with: .success(entities))
            } catch {
                self.presenter?.interactorDidFetchUsers(with: .failure(error))
            }
        }
        task.resume()
    }
    
}
