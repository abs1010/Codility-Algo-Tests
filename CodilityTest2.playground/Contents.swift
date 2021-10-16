import UIKit
/*
 
 During an Animal Day event, N people (numbered from 0 to N−1) showed up. Each of them had either a dog or a cat. The organizers decided to give them a wonderful gift: a toy for each animal.
 
 After the event, it turned out that some people who owned a dog had received a cat-toy, and some people who owned a cat received a dog-toy. People may exchange toys, but only if they know each other (otherwise they have no way to contact the other person). The pair of people can exchange toys multiple times.
 
 Knowing who knows who, who owns which animal, and what kind of toy he or she received, can you determine whether it is possible for people to exchange toys in such a way that every dog ends up with a dog-toy and every cat gets a cat-toy?
 
 Write a function:
 
 public func solution(_ P : inout [Int], _ T : inout [Int], _ A : inout [Int], _ B : inout [Int]) -> Bool
 
 that returns true if it is possible to exchange toys in such a way that every animal receives an appropriate toy, or false otherwise. First two arrays describe the pets (array P) and toys (array T) that every person owns. The J-th person owns pet P[J] and toy T[J] (1 means dog or dog-toy and 2 means cat or cat-toy). The next two arrays, A and B, both of length M, describe the relationships between people. For each integer K from 0 to M−1, person A[K] knows person B[K].
 
 Examples:
 
 1. Given:
 
 P = [1, 1, 2]
 T = [2, 1, 1]
 A = [0, 2]
 B = [1, 1]
 the function should return true. Person 0 can exchange toys with person 1 to obtain a dog-toy, and then person 1 can exchange toys with person 2.
 
 2. Given:
 
 P = [2, 2, 1, 1, 1]
 T = [1, 1, 1, 2, 2]
 A = [0, 1, 2, 3]
 B = [1, 2, 0, 4]
 the function should return false. There is no way for persons 3 and 4 to exchange toys with others.
 
 3. Given:
 
 P = [1, 1, 2, 2, 1, 1, 2, 2]
 T = [1, 1, 1, 1, 2, 2, 2, 2]
 A = [0, 2, 4, 6]
 B = [1, 3, 5, 7]
 the function should return false. There is no way for persons 2 and 3 and for persons 4 and 5 to exchange toys with others.
 
 4. Given:
 
 P = [2, 2, 2, 2, 1, 1, 1, 1]
 T = [1, 1, 1, 1, 2, 2, 2, 2]
 A = [0, 1, 2, 3, 4, 5, 6]
 B = [1, 2, 3, 4, 5, 6, 7]
 the function should return true.
 
 Write an efficient algorithm for the following assumptions:
 
 N is an integer within the range [1..100,000];
 M is an integer within the range [0..200,000];
 each element of array ('P', 'T') is an integer that can have one of the following values: 1, 2;
 each element of arrays A, B is an integer within the range [0..N−1];
 for each integer K from 0 to M−1, elements A[K] and B[K] are different;
 there are no redundant elements in arrays A, B; more formally every unordered pair of persons a, b will appear as A[K], B[K] for at most one K.
 Copyright 2009–2021 by Codility Limited. All Rights Reserved. Unauthorized copying, publication or disclosure prohibited.
 
 */

struct Node {
    
    //let root:
    
}


public func solution(_ P : inout [Int], _ T : inout [Int], _ A : inout [Int], _ B : inout [Int]) -> Bool {
    // write your code in Swift 4.2.1 (Linux)
    
    ///First, check if there is the same number of itens for both cat and og toys
    
    let catsAmount = P.filter { return $0 == 1 }.count
    let catToysAmount = T.filter { return $0 == 1 }.count
    
    guard catsAmount == catToysAmount else { return false }
    
    
    
    
    return true
}


var P = [1, 1, 2]
var T = [2, 1, 1]
var A = [0, 2]
var B = [1, 1]

solution(&P, &T, &A, &B)


/*
 A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of N.
 
 For example, number 9 has binary representation 1001 and contains a binary gap of length 2. The number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3. The number 20 has binary representation 10100 and contains one binary gap of length 1. The number 15 has binary representation 1111 and has no binary gaps. The number 32 has binary representation 100000 and has no binary gaps.
 
 Write a function:
 
 public func solution(_ N : Int) -> Int
 
 that, given a positive integer N, returns the length of its longest binary gap. The function should return 0 if N doesn't contain a binary gap.
 
 For example, given N = 1041 the function should return 5, because N has binary representation 10000010001 and so its longest binary gap is of length 5. Given N = 32 the function should return 0, because N has binary representation '100000' and thus no binary gaps.
 
 Write an efficient algorithm for the following assumptions:
 
 N is an integer within the range [1..2,147,483,647].
 Copyright 2009–2021 by Codility Limited. All Rights Reserved. Unauthorized copying, publication or disclosure prohibited.
 */


//func findMax
let num = 1041
let str = String(num, radix: 2)

var isFirst = true
var itHas1 = false
var numberOfGaps = 0

var seq = 0
var longestGap = [Int]()

var lastBinary = str.components(separatedBy: "").first!

str.forEach { binary in
    
    if isFirst {
        isFirst = false
    } else {
        
        //One gap has started
        if itHas1 && binary == "0" {
            seq += 1
        } else if binary == "1" {
            
        }
        
        if lastBinary == "0" && binary == "1" && itHas1 {
            numberOfGaps += 1
            longestGap.append(seq)
            seq = 0
        }
        
    }
    
    if binary == "1" {
        itHas1 = true
    }
    
    lastBinary = "\(binary)"
    
}

print(numberOfGaps)
print(longestGap)

longestGap.max()

var greatest = 0
    
for i in longestGap {
    
    if i > greatest {
        greatest = i
    }
        
}

print(greatest)
