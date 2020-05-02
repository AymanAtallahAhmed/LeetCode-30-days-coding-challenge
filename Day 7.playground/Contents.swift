import UIKit

class Solution {
    func countElements(_ arr: [Int]) -> Int {
        var sol = [Int]()

        for num in arr {
            if arr.contains(num + 1) {
                sol.append(0)
            }
        }
        
        return sol.count
    }
}


var input1 = [1,2,3]
var input2 = [1,1,3,3,5,5,7,7]
var input3 = [1,3,2,3,5,0]
var input4 = [1,1,2,2]

var sol = Solution()
var x = sol.countElements(input4)
