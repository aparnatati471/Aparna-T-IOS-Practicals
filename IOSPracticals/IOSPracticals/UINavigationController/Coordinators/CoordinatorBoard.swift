import UIKit

// MARK: Enum Class for storyboareded protocol
enum StoryBoards: String {
    case main = "Main"
    case coorinatorPattern = "CoordinatorPatternStoryBoard"
    case uinavigation = "NavigationController"
}


// MARK: Storyboarded Protocol
protocol CoordinatorBoard {
    static func instantiateFromStoryBoard(from storyboard: StoryBoards) -> Self
}

// MARK: CoordinatorBoard Extension
extension CoordinatorBoard where Self: UIViewController {
    
    static func instantiateFromStoryBoard(from storyoard: StoryBoards) -> Self {
        let storyBoard = UIStoryboard(name: storyoard.rawValue, bundle: Bundle.main)
        let id = String(describing: self)
        return storyBoard.instantiateViewController(withIdentifier: id) as! Self
    }
    
}
