import UIKit



class Solution {
    
    private func helper(_ num: inout Int) -> Int {
        var sum = 0
        while num >= 1 {
            let single = num % 10
            num /= 10
            sum += single*single
        }
        return sum
    }
    
    func isHappy(_ n: Int) -> Bool {
        var x = n
        var seen: Set<Int> = []
        while true {
            if x == 1 {
                return true
            }
            x = helper(&x)
            print("this is x \(x)")
            if seen.contains(x) {
                return false
            }
            seen.insert(x)
        }
    }
}

let sol = Solution()
sol.isHappy(2)
