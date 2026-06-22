class ListNode {
    var value: String = ""
    var timeStamp: Int = 0
    var next: ListNode? = nil

    init(_ value: String, _ timeStamp: Int) {
        self.value = value
        self.timeStamp = timeStamp
    }
}
class TimeMap {

    var hashMap = [String: ListNode?]()

    init() {
        hashMap = [:]
    }

    func set(_ key: String, _ value: String, _ timestamp: Int) {
        if hashMap[key] == nil {
            hashMap[key] = ListNode(value, timestamp)
        } else {
            let head = hashMap[key]!

            let newNode: ListNode? = ListNode(value, timestamp)
            newNode?.next = head
            hashMap[key] = newNode
        }
    }

    func get(_ key: String, _ timestamp: Int) -> String {
        var maxTimestamp: Int = 0
        var res = ""

        if hashMap[key] == nil {
            return res
        }

        let head = hashMap[key]!

        var cur = head

        while(cur != nil) {
            if cur!.timeStamp <= timestamp {
                return cur!.value
            }
            cur = cur?.next
        }

        return res
    }
}

/**
 * Your TimeMap object will be instantiated and called as such:
 * let obj = TimeMap()
 * obj.set(key, value, timestamp)
 * let ret_2: String = obj.get(key, timestamp)
 */
