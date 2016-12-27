
// 1. BASIC

// const and vars
let x = 2
var z: UInt16 = 1
z = 3

// alias
typealias NewType = UInt8

// tuple
let tuple = (400, "jopa")
let (code, str) = tuple
print(code)
print(tuple.1)


// optionals
var serverResponse: Int? = 404

if let response = serverResponse {
    print("yes")
}

// assertions
let age = -3
assert(age < 0, "A person's age cannot be less than zero")


// ----------------------------------------
// 2. OPERATORS

for index in 1...5 {
    print(index)
}

let arr = [1,2,3]
var sum = 0
for i in 0..<arr.count {
    sum += arr[i]
}
print("sum=",sum)


// ----------------------------------------
// 3. STRINGS

let emptyString0 = ""
let emptyString1 = String()

if emptyString0.isEmpty {
    print("emptyString0 is empty")
}

// characters

let dog = "dog"
for character in dog.characters {
    print(character)
}

// unicode

let heart = "\u{1F496}"
let combinedEAcute: Character = "\u{65}\u{301}"

// count
var word = "cafe"
print("count=\(word.characters.count)")

word.append("\u{301}")
print("count=\(word.characters.count)")

// indexs

let hello = "Привет, лунатикам!"

hello[hello.startIndex]

hello[hello.index(after: hello.startIndex)]
hello[hello.index(before: hello.endIndex)]

let index = hello.index(hello.startIndex, offsetBy: 5)
hello[index]

for index in hello.characters.indices {
    print("\(hello[index])", terminator: "")
}

// insert, remove

var text = "hello"
text.insert("?", at: text.endIndex)
text.insert(contentsOf: "Anton".characters, at: text.index(before: text.endIndex))

text.remove(at: text.index(before: text.endIndex))
let range = text.index(text.endIndex, offsetBy: -3)..<text.endIndex
text.removeSubrange(range)

// comparing strings

let metallica = "metallica"
if metallica.hasPrefix("metal") {
    print("yeah")
}

// utf representation
let dogString = "Dog‼🐶"
for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("")

for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}

print("")

for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: "")
}


// ----------------------------------------
// 4. COLLECTION TYPES

// array
let someInts = [Int]()

var threeDoubles = Array(repeating: 0.0, count: 3)
var anotherThreeDoubles = Array(repeating: 1.0, count: 2)
var sixDoubles = threeDoubles + anotherThreeDoubles

var bands = ["Mastodon","Devil tears"]
bands.append("Mayhem")
bands += ["All shell parish"]

bands[0...2] = ["ZZTop"]
print(bands)

bands.insert("jopa", at: 0)
bands.removeLast()

for (index, value) in bands.enumerated() {
    print("#\(index + 1) \(value)")
}

// set
let letters = Set<Character>()

var geners: Set = ["pop", "rock"]
geners.insert("metal")
geners.remove("pop")

for gener in geners.sorted() {
    print(gener)
}

if geners.contains("classic") {
    print("yes")
}

// dictionary

var namesOfIntegers = [Int: String]()

var dict = ["key1":"me", "key2":"you"]

dict.updateValue("he", forKey: "key1")







