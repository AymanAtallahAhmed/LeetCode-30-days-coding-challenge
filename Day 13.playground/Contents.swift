import UIKit


class Solution {
    func findMaxLength(_ nums: [Int]) -> Int {
        var sol = [Int]()
        
        for x in 0..<nums.count {
            print("this is solution \(sol)")
            if nums[x]+1 == nums[x+1]  ||  nums[x]-1 == sol.last{
                sol.append(x)
            }
        }
        return sol.count
    }
}


var input1 = [0,1]
var input2 = [0,1,0]

var sol = Solution()
var x = sol.findMaxLength(input1)
print(x)
