import UIKit

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var sum = 0
        var x = 0
        
        for num in nums {
            x += num
            sum = max(sum, x)
            x = max(0, x)
        }
        if sum == 0 {
            return nums.max()!
        }
        return sum
    }
}

var input2 = [-2,1,-3,4,-1,2,1,-5,4]
var input1 = [1,2]
var input3 = [-2, -4, -5]
var sol = Solution()
sol.maxSubArray(input3)

