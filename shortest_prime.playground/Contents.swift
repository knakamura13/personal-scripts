/*
 *  Simple implementations of isPrime function
 */

import UIKit

func isPrime(n: Int) -> Bool {
    if n == 2 || n == 3 {
        return true
    }
    if n%2 == 0 || n < 2 {
        return false
    }
    for i in stride(from: 3, to: Int(sqrt(Double(n)))+1, by: 2) {
        if n%i == 0 {
            return false
        }
    }
    return true
}

//isPrime(n: 4)


func evenShorterPrime(n: Int) -> Bool {
    if n == 2 || n == 3 {
        return true
    }
    for i in 4..<n {
        if n%i == 0 {
            return false
        }
    }
    return true
}

let start = DispatchTime.now()
print(evenShorterPrime(n: 5915587277))
let end = DispatchTime.now()
let nano = end.uptimeNanoseconds - start.uptimeNanoseconds
let timeInterval = Double(nano) / 1_000_000_000

print("Time to evaluate: \(timeInterval) seconds")
