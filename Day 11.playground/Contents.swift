import UIKit



 //* Definition for a binary tree node.
  public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init() { self.val = 0; self.left = nil; self.right = nil; }
      public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
      public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
          self.val = val
          self.left = left
          self.right = right
      }
  }

 
class Solution {
    
    func dfs(_ root: TreeNode?) -> (Int,Int) {
        if root == nil {
            return (0,0)
        }
        
        let left = dfs(root?.left)
        let right = dfs(root?.right)
        let diameter = max(left.0, right.0, right.1 + left.1)
        
        return (diameter, max(left.1, right.1) + 1)
    }
    
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        
        return dfs(root).0
    }
}
