class Solution_141 {
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head
        
        while fast != nil && fast!.next != nil {
            
            slow = slow?.next
            fast = fast?.next?.next
            
            if slow === fast{
                return true
            }
        }
        
        return false
        
    }
    
    
}
