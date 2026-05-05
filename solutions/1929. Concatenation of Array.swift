//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Mekhriddin on 01/06/22.
//


class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var pointer1 = 0
    
        if nums.count == 1 {
            return 1
        }
    
        for i in 1...nums.count - 1 {
            if nums[pointer1] != nums[i] {
                pointer1 += 1
                nums[pointer1] = nums[i]
            }
        }
    
        return pointer1 + 1
    }
}

// 26. Remove Duplicates from Sorted Array
// Time: O(n)
// Sace: O(1)
