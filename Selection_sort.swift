import Foundation

func selectionSort(arr: [Int]) -> [Int] {
    var arr = arr
    
    if arr.isEmpty {
        return []
    }
    
    for i in 0...arr.count - 1 {
        var minIndex = i
        
        // Find the min element
        for j in minIndex...arr.count - 1 {
            if arr[minIndex] > arr[j] {
                minIndex = j
            }
        }
        
        // Do Swap operation
        if i != minIndex {
            (arr[i], arr[minIndex]) = (arr[minIndex], arr[i])
        }
    }
    
    return arr
}

let test = selectionSort(arr: [4, 2, 7, 3, 0, 5])
print(test)

