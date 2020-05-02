import UIKit


class Solution {
    func backspaceCompare(_ S: String, _ T: String) -> Bool {
        
        var str1 = Array(S)
        var str2 = Array(T)
        var x = 0
        
        while str1.count-1 > x {
            if str1[x + 1] == "#" {
                str1.remove(at: x+1)
                str1.remove(at: x)
                x = 0
            } else { x += 1}
        }
        str1.removeAll(where: {$0 == "#"})
        x = 0
        
        while str2.count-1 > x {
            if str2[x + 1] == "#" {
                str2.remove(at: x+1)
                str2.remove(at: x)
                x = 0
            } else { x += 1}
        }
        str2.removeAll(where: {$0 == "#"})
        
        return str1 == str2
    }
}


class Solution2 {
    func backspaceCompare(_ S: String, _ T: String) -> Bool {
        var sStack = [Character](), tStack = [Character]()
        
        for char in S {
            if char == "#" {
                sStack.popLast()
            } else {
                sStack.append(char)
            }
        }
        
        for char in T {
            if char == "#" {
                tStack.popLast()
            } else {
                tStack.append(char)
            }
        }
        
        return sStack == tStack
    }
}

var S1 = "ab#c", T1 = "ad#c"
var S2 = "ab##", T2 = "c#d#"
var S3 = "a##c", T3 = "#a#c"
var S4 = "a#c", T4 = "b"
var S5 = "y#fo##f", T5 = "y#f#o##f"
var sol = Solution2()
sol.backspaceCompare(S5, T5)
