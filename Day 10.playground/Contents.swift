import UIKit


class MinStack {
    var storage: [(Int, Int)] = []
    /** initialize your data structure here. */
    init() { }
//    init(_ elements: [Int]) {
//        storage = elements
//    }
    
    func push(_ x: Int) {
        if storage.isEmpty {
            storage.append((x, x))
        } else {
            storage.append((x, min(x, storage.last!.1)))
        }
    }
    
     func pop() {
        storage.removeLast()
    }
    
    func top() -> Int {
        return storage.last!.0
    }
    
    func getMin() -> Int {
        return storage.last!.1
    }
}



class MinStack2 {
    private var stack: [Int]
     private(set) var min: Int
    
    init() {
        stack = []
        min = Int.max
    }
    
    func push(_ x: Int) {
        if x <= min {
            stack.append(min)
            min = x
        }
        stack.append(x)
    }
    
    func pop() {
        if stack.removeLast() == min {
            min = stack.removeLast()
        }
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func getMin() -> Int {
        return min
    }
}


var stack = MinStack()
stack.push(-2)
stack.push(0)
stack.push(-3)
print("this is stack \(stack.storage)")

stack.getMin()
stack.pop()
stack.top()
print(stack.storage)
