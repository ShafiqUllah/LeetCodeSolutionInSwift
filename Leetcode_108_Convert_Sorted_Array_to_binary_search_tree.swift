class Solution_108 {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        
        return addToTheTree(nums, 0, nums.count - 1)
    }
    
    private func addToTheTree(_ nums: [Int], _ start:Int, _ end : Int )-> TreeNode?{
        
        if start > end {
            return nil
        }
        
        //Find mid point
        let mid = (start + end) / 2
        let node = TreeNode(nums[mid])
        
        //go left and right
        node.left = addToTheTree(nums, start, mid - 1)
        node.right = addToTheTree(nums, mid + 1, end)
        
        return node

    }
    
    
    
}
