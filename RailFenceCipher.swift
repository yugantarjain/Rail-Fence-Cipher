import Foundation

func cipher(_ str: String, key: Int) -> String {
    let str = str.filter { $0 != " " }
    var addFactor = 1
    var i = 0
    var cipher = ""
    var rails = [[Character]](repeating: [Character](), count: key)
    
    // Make message rails
    for char in str {
        rails[i].append(char)
        i += addFactor
        if i == key - 1 || i == 0 {
            addFactor *= -1
        }
    }
    
    // Get encrypted text
    for rail in rails {
        for char in rail {
            cipher.append(char)
        }
    }
    
    return cipher
}

func decipher(_ cipher: String, key: Int) -> String {
    let n = cipher.count
    let cipher = Array(cipher)
    var addFactor = 1
    var r = 0
    var k = 0
    var str = ""
    var rails = [[Character]](repeating: [Character](repeating: " ", count: n), count: key)
    
    // Make framework for rails
    for c in 0 ..< n {
        rails[r][c] = "*"
        r += addFactor
        if r == key - 1 || r == 0 {
            addFactor *= -1
        }
    }
    r = 0
    
    // Make proper rails
    for r in 0 ..< key {
        for c in 0 ..< n {
            if rails[r][c] == "*" {
                rails[r][c] = cipher[k]
                k += 1
            }
        }
    }
    
    // Get decrypted text by following zig-zag pattern
    r = 0
    addFactor = 1
    for c in 0 ..< n {
        str.append(rails[r][c])
        r += addFactor
        if r == key - 1 || r == 0 {
            addFactor *= -1
        }
    }
    
    return str
}

let cipherText = cipher("defend the east wall of the castle", key: 4)
decipher(cipherText, key: 4)
