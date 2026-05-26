class StockSpanner {

    var stack = [Stock]()

    init() {
        self.stack = []
    }

    func next(_ price: Int) -> Int {
        if stack.isEmpty {
            stack.append(Stock(price, 1))
            return 1
        }

        let top = stack.last

        if top!.price > price {
            stack.append(Stock(price, 1))
            return 1
        }

        var count = 1
        while(stack.last != nil && stack.last!.price <= price) {
            let top = stack.removeLast()
            count += top.count
        }

        stack.append(Stock(price, count))

        return count
    }
}

struct Stock {
    let price: Int
    let count: Int

    init(_ price: Int, _ count: Int) {
        self.price = price
        self.count = count
    }
}

/**
 * Your StockSpanner object will be instantiated and called as such:
 * let obj = StockSpanner()
 * let ret_1: Int = obj.next(price)
 */
