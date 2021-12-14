import Foundation


// MARK: Properties

let searchString = """
{
    "type": "M",
    "id": {
        "mobile": "H_APUGRP_FS"
    }
}
"""

let replaceString = """
{
    "type": "M",
    "id": {
        "mobile": "H_APUGRP_FS"
    }
},
{
    "type": "M",
    "id": {
        "mobile": "H_APUGRP_FS"
    }
}
"""

var vimReplaceFunction = "%s/find/replace/g"


// MARK: Functions

func escapedCharacters(for string: String) -> String {
    var escapedString = ""
    
    for character in string {
        let characterString = String(character)
        let value = characterString.unicodeScalars[characterString.unicodeScalars.startIndex]
        
        if CharacterSet.alphanumerics.contains(value) {
            escapedString.append(character)
        } else {
            escapedString.append("\\\(character)")
        }
    }
    
    return escapedString
}


// MARK: Formatting & Output

// Escape characters in both strings
let escapedSearchString = escapedCharacters(for: searchString)
let escapedReplaceString = escapedCharacters(for: replaceString)

// Replace placeholders with the escaped strings
vimReplaceFunction = vimReplaceFunction.replacingOccurrences(of: "find", with: escapedSearchString)
vimReplaceFunction = vimReplaceFunction.replacingOccurrences(of: "replace", with: escapedReplaceString)

print(vimReplaceFunction)
