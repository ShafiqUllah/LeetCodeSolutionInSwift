class Solution_21 {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let dummy = ListNode(0)
        var current = dummy
        
        var p1 = list1
        var p2 = list2
        
        // travel both list and merge at the same time
        while let node1 = p1 , let node2 = p2 {
            if node1.val < node2.val{
                current.next = node1
                p1 = node1.next
            }else{
                current.next = node2
                p2 = node2.next
            }
            
            current = current.next!
        }
        
        // add last node , if any
        if let remaining = p1 ?? p2{
            current.next = remaining
        }
        
        return dummy.next
    }
    
    
}
