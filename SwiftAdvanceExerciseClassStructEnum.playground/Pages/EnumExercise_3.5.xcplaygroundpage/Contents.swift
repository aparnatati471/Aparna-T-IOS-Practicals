//Write a swift program for enum with raw values.

enum Languages : String {
    
    case C = "Procedure Programming Language"
    case Java =  "Object Oriented Programming Language"
    case PHP = "Scripting Language"
    
}

var lang = Languages.PHP  // Expected Output : Scripting Language

switch lang {
    case .C:
        print(lang.rawValue)
    case.Java:
        print(lang.rawValue)
    case .PHP:
        print(lang.rawValue)
}
