import UIKit


class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        
        var sol = [[String]]()
            
        var y = 0
        var x = 0
        var array = strs
        var subArray = [String]()
        
        while y < array.count {
            x = 0
            while x < array.count {
                if array[x].sorted() == array[y].sorted() {
                    subArray.append(array[x])
                }
                x += 1
            }
            
           sol.append(subArray)
            for sub in subArray {
                array.remove(at: array.firstIndex(of: sub)!)
            }
            subArray = []
            if array.count == 1 {
                subArray.append(array[0])
                sol.append(subArray)
            }
            y += 1
        }
           
        return sol
    }
}

var input = ["eat", "tea", "tan", "ate", "nat", "bat"]
var input1 = ["",""]
var solution = Solution()
var x = solution.groupAnagrams(input)

print(x)
