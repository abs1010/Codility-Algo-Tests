/*
 An array A consisting of N different integers is given. The array contains integers in the range [1..(N + 1)], which means that exactly one element is missing.
 
 Your goal is to find that missing element.
 
 Write a function:
 
 class Solution { public int solution(int[] A); }
 that, given an array A, returns the value of the missing element.
 
 For example, given array A such that:
 
 A[0] = 2
 A[1] = 3
 A[2] = 1
 A[3] = 5
 the function should return 4, as it is the missing element.
 
 Write an efficient algorithm for the following assumptions:
 
 N is an integer within the range [0..100,000];
 the elements of A are all distinct;
 each element of array A is an integer within the range [1..(N + 1)].
 Copyright 2009–2021 by Codility Limited. All Rights Reserved. Unauthorized copying, publication or disclosure prohibited.
 */
import Foundation

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    
    var missingNumber: Int?
    var _previousNumber = 0
    var first = true
    
    guard A.count > 0 else { return 1 }
    
    if A.count == 1 { return A.last! < 0 ? 1 : A.last! + 1 }
    
    let array = A.sorted()
    
    for number in array {
        
        if first {
            first = false
            if number != 1 {
                missingNumber = 1
                break
            }
        } else {
  
            if number == (_previousNumber + 1) {
                missingNumber = number + 1
            } else {
                missingNumber = _previousNumber + 1
                break
            }
            
        }
        
        _previousNumber = number
    }
    
    return missingNumber ?? 0
    
}



//var givenArray = [1, 3, 6, 4, 7, 2, 5, 8, 9, 11]
//var givenArray = [1, 3, 6, 4, 7, 2]
//var givenArray = [2, 3]
//var givenArray = [-1, -3]
var givenArray = [-3]

solution(&givenArray)
