class TreeNode {
    var value: Int
    var leftNode : TreeNode?
    var rightNode: TreeNode?

    init(_ value: Int ){
        self.value = value
        leftNode = nil
        rightNode = nil
    }
}

func bfsBinaryTree(_ root: TreeNode?) {
    guard let root = root else { return }
    
    var queue: [TreeNode] = [root]
    
    while !queue.isEmpty {
        // Get the first node from the queue
        let node = queue.removeFirst()
        print(node.val)  // Process the node (e.g., print the value)
        
        // Add the left child to the queue if it exists
        if let left = node.left {
            queue.append(left)
        }
        
        // Add the right child to the queue if it exists
        if let right = node.right {
            queue.append(right)
        }
    }
}

func levelOrderTraversal(_ root: TreeNode?) -> [[Int]] {
    var result: [[Int]] = []
    
    guard let root = root else {
        return result
    }
    
    var queue: [TreeNode] = [root]
    
    while !queue.isEmpty {
        var level: [Int] = []
        let levelSize = queue.count
        
        // Process all nodes at the current level
        for _ in 0..<levelSize {
            let node = queue.removeFirst()
            level.append(node.val)
            
            // Enqueue left and right children if they exist
            if let left = node.left {
                queue.append(left)
            }
            if let right = node.right {
                queue.append(right)
            }
        }
        
        // Add the current level's nodes to the result
        result.append(level)
    }
    
    return result
}
