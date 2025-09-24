//Deel 1

var text = "SWIFT"
let max = 10
var average : Double = 0.0

for letter in text {
    print(letter)
}

var naam = (voornaam: "Wout", familienaam: "Crevits")
print(naam.voornaam)
print(naam.familienaam)

var reversedString : String? = "test"

if reversedString != nil {
    print(reversedString)
}
else {
    print("no result")
}

//Deel 2

func reverseString (str:String) -> String {
    return String(str.reversed())
}
print(reverseString(str:"Vives"))

// Je krijgt een melding dat nil niet compatible is

func getUpperLowerCount(str:String) -> (uppercase:String, lowercase:String, charCount:Int) {
    return (str.uppercased(), str.lowercased(), str.count)
}

var result = getUpperLowerCount(str: "iOS 26")
print(result.uppercase, "\n", result.lowercase, "\n", result.charCount, separator: "")

print(result)

func divide(g1:Int, g2:Int) -> Double {
    return Double(g1/g2)
}

print(divide(g1: 12, g2: 6))
print(divide(g1: 12, g2: 7))
//print(divide(g1: 12, g2: 0))  Geeft division by zero error

func calculate(nummers : Double...) -> (average:Double, minimum:Double, maximum:Double, count:Int)? {
    if nummers.isEmpty {
        return nil
    }
    
    return (nummers.reduce(0, +), nummers.min()!, nummers.max()!, nummers.count)
}
print(calculate(nummers: 10, 0, 5))
print(calculate(nummers: 4, 5, 6, -3))
print(calculate(nummers: -3))
print(calculate())

var x = 10.0
var y = 3

func increment(g1:inout Double, g2:inout Int) {
    g1 += 1
    g2 += 1
}
increment(g1: &x, g2: &y)
print(x, y)

//Deel 3

enum StringConversionError : Error {
    case nilParameter
    case emptyParameter
}

func getUpperLowerCountException(str:String?) throws -> (uppercase:String, lowercase:String, charCount:Int) {
    guard let unwrappedString = str else {
        throw StringConversionError.nilParameter
    }
    if unwrappedString.isEmpty {
        throw StringConversionError.emptyParameter
    }
    return (unwrappedString.uppercased(), unwrappedString.lowercased(), unwrappedString.count)
}

do {
    //try print(getUpperLowerCountException(str: nil))
    //try print(getUpperLowerCountException(str: ""))
    try print(getUpperLowerCountException(str: "iOS 26"))
} catch StringConversionError.nilParameter {
    print("Nil value parameter not allowed")
} catch StringConversionError.emptyParameter {
    print("Empty String parameter not allowed")
}
