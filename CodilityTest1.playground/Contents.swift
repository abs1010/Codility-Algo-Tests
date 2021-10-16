import UIKit

var givenArray = [1, 3, 6, 4, 1, 2, 5, 8, 9, 11]
//var givenArray = [1, 3, 6, 4, 1, 2]
//var givenArray = [1, 2, 3]
//var givenArray = [-1, -3]
//var givenArray = [-3]

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)

    var missingNumber: Int?
    var _previousNumber = 0
    var first = true
    
    if A.count == 1 {
        
        if let last = A.last {
            if last < 0 {
                return 1
            } else {
                return A.last!
            }
        }

    }
    
    for index in A {
        if index < 0 {
            return 1
        }
        
    }
    
    A.sorted().forEach { number in
        
        if first {
            first = false
        } else {
            
            if _previousNumber + 1 != number {
                missingNumber = _previousNumber + 1
            } else {
                missingNumber = number + 1
            }
            
        }
        
        _previousNumber = number
    }
    
    return missingNumber ?? 0
    
}


solution(&givenArray)
