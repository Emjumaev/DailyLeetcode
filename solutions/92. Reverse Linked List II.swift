class Solution {
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        let dummy: ListNode? = ListNode(0)
        dummy?.next = head
        
        var leftNode: ListNode? = dummy
        var innerHead = dummy?.next

        var rightNode: ListNode? = nil
        var innerTail: ListNode? = nil

        var i = 0
        while(i < left - 1) {
            leftNode = innerHead
            innerHead = innerHead?.next
            i += 1
        }
        
        var prev: ListNode? = nil
        var cur = innerHead
        var right = right - 1

        var j = left - 1
        while(j <= right) {
            let temp = cur?.next
            cur?.next = prev
            prev = cur
            cur = temp
            j += 1
        }

        innerTail = prev
        rightNode = cur

        leftNode?.next = innerTail
        innerHead?.next = rightNode

        return dummy?.next
    }
}
