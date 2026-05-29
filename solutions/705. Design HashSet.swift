class MyHashSet {

    class HashNode {
        var next: HashNode? = nil
        var key: Int

        init(_ key: Int) {
            self.key = key
        }
    }

    var size = 0
    var capacity = 10
    var arr: [HashNode?] = []

    init() {
        for _ in 0..<capacity {
            arr.append(nil)
        }
    }

    func add(_ key: Int) {
        if contains(key) {
            return
        }

        checkOverload()

        let position = key % capacity
        let newNode = HashNode(key)

        if arr[position] == nil {
            arr[position] = newNode
        } else {
            var head = arr[position]

            while head?.next != nil {
                head = head?.next
            }

            head?.next = newNode
        }

        size += 1
    }

    func remove(_ key: Int) {
        let position = key % capacity

        var head = arr[position]
        var prev: HashNode? = nil

        while head != nil {
            if head?.key == key {
                if prev == nil {
                    arr[position] = head?.next
                } else {
                    prev?.next = head?.next
                }

                size -= 1
                return
            }

            prev = head
            head = head?.next
        }
    }

    func contains(_ key: Int) -> Bool {
        let position = key % capacity
        var head = arr[position]

        while head != nil {
            if head?.key == key {
                return true
            }

            head = head?.next
        }

        return false
    }

    func checkOverload() {
        if size < capacity {
            return
        }

        capacity *= 2

        var newArr: [HashNode?] = []

        for _ in 0..<capacity {
            newArr.append(nil)
        }

        for head in arr {
            var cur = head

            while cur != nil {
                let key = cur!.key

                let position = key % capacity
                let newNode = HashNode(key)

                if newArr[position] == nil {
                    newArr[position] = newNode
                } else {
                    var temp = newArr[position]

                    while temp?.next != nil {
                        temp = temp?.next
                    }

                    temp?.next = newNode
                }

                cur = cur?.next
            }
        }

        arr = newArr
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */
