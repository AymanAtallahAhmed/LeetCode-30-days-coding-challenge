import UIKit


struct Solution {
    mutating func singleNumber(_ nums: [Int]) -> Int {
        
        var singleNum = 0
        
        for num in nums {
            singleNum ^= num
        }
  
        return singleNum
    }
    
}
var input = [4,1,2,1,2]

var input2 = [2,2,1]
var solution = Solution()
solution.singleNumber(input)
//Output: 4

