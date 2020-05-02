import UIKit


class Solution {
    func lastStoneWeight(_ stones: [Int]) -> Int {
        guard stones.count <= 30 else { return 0}
        for i in 0..<stones.count {
            if stones[i] > 1000  ||  stones[i] < 0{
                return 0
            } else { continue }
        }
        
        var myStones = stones
        
        while myStones.count > 1 {
            let firstMax = myStones.max()!
            myStones.remove(at: myStones.firstIndex(of: firstMax)!)
            let secondMax = myStones.max()!
            myStones.remove(at: myStones.firstIndex(of: secondMax)!)
            
            let x = firstMax - secondMax
            if x > 0 {
                myStones.append(x)
            } else { continue }
        }
        
        return myStones.first ?? 0
    }
}

var sol = Solution()
sol.lastStoneWeight([2,2])
