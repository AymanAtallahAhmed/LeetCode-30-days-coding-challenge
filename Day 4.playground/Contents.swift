import UIKit

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var index = 0
        nums.map {
            if $0 != 0 {
                nums.swapAt(nums.firstIndex(of: $0)!, index)
                index += 1
//                nums.remove(at: nums.firstIndex(of: $0)!)
//                nums.append(0)
            }
        }
    }
}

var input1 = [0,1,0,3,12]
var sol = Solution()
print(sol.moveZeroes(&input1))
print(input1)
