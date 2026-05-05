//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Mekhriddin on 01/06/22.
//


class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var start = 0
        var finish = nums.count - 1

        if nums.count == 0 {
            return 0
        }

        while(start <= finish) {
            if nums[finish] == val {
                finish -= 1
                continue
            }

            if nums[start] == val {
                nums[start] = nums[finish]
                start += 1
                finish -= 1
            } else {
                start += 1
            }
        }
        return finish + 1
    }
}

// Problem 27
// Time: O(n)
// Space: O(1)
