class Solution_206 {
    func reverseList(_ head: ListNode?) -> ListNode? {
        let ar = makeNewLinkList(head, [])
        //print(ar)
        
        var head : ListNode? = nil
        var current: ListNode? = nil
        
        for v in ar.reversed() {
            let newNode = ListNode(v)
            
            if head == nil{
                head = newNode
            }else{
                current?.next = newNode
            }
            
            current = newNode
        }
        
        return head
    }
    
    
    private func makeNewLinkList(_ head: ListNode?, _ listItemsArray:[Int]) -> [Int]{
        guard let head = head else {
            return listItemsArray
        }
        
        var listItemArray = listItemsArray
        listItemArray.append(head.val)
        return makeNewLinkList(head.next, listItemArray)
    }
}


//Best solution

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        var previous : ListNode? = nil
        var current = head
        
        while current != nil{
            let temp = current?.next
            current?.next = previous
            previous = current
            current = temp
        }
        
        return previous
        
    }
}
