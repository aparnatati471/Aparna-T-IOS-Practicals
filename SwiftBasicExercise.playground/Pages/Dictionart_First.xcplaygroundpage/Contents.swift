//Dictionary Exercise 1
print("1.Write a Swift program to decode the message and print final output string.")

var code = [
             "a": "b",
             "b": "c",
             "c": "d",
             "d": "e",
             "e": "f",
             "f": "g",
             "g": "h",
             "h": "i",
             "i": "j",
             "j": "k",
             "k": "l",
             "l": "m",
             "m": "n",
             "n": "o",
             "o": "p",
             "p": "q",
             "q": "r",
             "r": "s",
             "s": "t",
             "t": "u",
             "u": "v",
             "v": "w",
             "w": "x",
             "x": "y",
             "y": "z",
             "z": "a"
           ]
//Encrypt The Message
var encodedMessage = "uijt nfttbhf jt ibse up sfbe"
var decoder: [String: String] = [:]

//swap the key and value
for (key, value) in code {
    decoder[value] = key
}

var decodedMessage = ""
for char in encodedMessage {
    let character = "\(char)"
    if let encodedChar = decoder[character] {
        decodedMessage += encodedChar
    } else {
        decodedMessage += character
    }
}
print(decodedMessage)
