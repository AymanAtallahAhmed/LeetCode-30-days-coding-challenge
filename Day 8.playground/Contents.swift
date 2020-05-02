import UIKit


class Node {
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}
class ListNode {
    var head: Node?
    
    init(head: Node?) {
        self.head = head
    }

}




//################### SOLUTION #################
class Solution {
    func middleNode(_ head: ListNode?) -> Node? {
        var element = head?.head
        var nextElement = head?.head
        
        while nextElement != nil {
            nextElement = nextElement?.next
            
            if nextElement == nil {
                return element
            }
            nextElement = nextElement?.next
            element = element?.next
        }
        return element
    }
}
