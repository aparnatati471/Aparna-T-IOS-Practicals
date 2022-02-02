//Write a swift program to demonstrate string type enum.

enum Climate: String {
    
    case India = "Climate is Hot"
    case USA = "Climate is Cold"
    case Africa = "Climate is Moderate"
    case Australia = "Climate is Rainy"
    
}

let climate = Climate.India.rawValue

print(climate)
 
