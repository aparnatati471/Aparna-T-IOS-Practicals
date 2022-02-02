//Write a swift program using enumerations to get all cases as an array with use of CaseIterable(Optional) and without use of CaseIterable(Mandatory).


//With Case Iterable
enum Frameworks: String, CaseIterable {
    
    case swiftui = "SwiftUI"
    case foundation = "Foundation"
    case uikit = "UIKit"
    case combine = "Combine"
    
}

//1 st Way
Frameworks.allCases.forEach { item in
    print(item.rawValue)
}

//Expected Output : SwiftUI Foundation UIKit Combine

//2nd Way
Frameworks.allCases.forEach {
    print($0.rawValue)
}

//Without Case Iterable
enum FrameworksOne: String {
    
    case swiftui = "SwiftUI"
    case foundation = "Foundation"
    case uikit = "UIKit"
    case combine = "Combine"
    
    static let allValues = [swiftui, foundation, uikit, combine]
    
}
print()
//1st way
for item in FrameworksOne.allValues {
    print(item)
}

