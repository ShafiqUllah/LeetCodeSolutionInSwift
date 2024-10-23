class Solution {
  func replaceValueInTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return root
        }
        
        var queue : [TreeNode?] = []
        queue.append(root)
        
        var lavelSum = Array(repeating: 0, count: 0)
       
        
        // Find the sum of each level and store the resukt
        while !queue.isEmpty{
            var currentSum = 0
            let n = queue.count
            
            for _ in 0..<n{
                if let curr = queue.removeFirst(){
                    currentSum += curr.val
                    
                    if let left = curr.left{
                        queue.append(left)
                    }
                    
                    if let right = curr.right{
                        queue.append(right)
                    }
                }
            }
            
            lavelSum.append(currentSum)
            
        }
        
        
        // update each node with cousine sum
        //print(lavelSum)
        queue.append(root) // handeling root case
        root.val = 0
        var i = 1
        
        while !queue.isEmpty{
            let n = queue.count
            
            for _ in 0..<n{
                if let curr = queue.removeFirst(){
                    // levelSum - siblingSum
                    var siblingSum = 0
                    if let left = curr.left{
                        siblingSum += left.val
                    }
                    
                    if let right = curr.right{
                        siblingSum += right.val
                    }
                    
                    // again check to update the value
                    if let left = curr.left{
                        left.val = lavelSum[i] - siblingSum
                        queue.append(left)
                    }
                    
                    if let right = curr.right{
                        right.val = lavelSum[i] - siblingSum
                        queue.append(right)
                    }
                }
            }
            i += 1
        }
        return root
    }
}
