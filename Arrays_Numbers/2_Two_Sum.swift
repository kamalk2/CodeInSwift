// Statement:
/* Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:
Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1]. */

import UIKit

let input = [2, 3, 5, 4, 21, 11]
let target = 25

class Solution1 {
	
	func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
		
		guard nums.count > 1 else { return [] }
	
		for i in 0..<input.count {
			for j in i+1..<input.count {
				if input[i] + input[j] == target {
					return[i , j]
				}
			}
		}
		return []
	}
}

Solution1().twoSum(input, target)
// Time Complexity -- O(n2)
// Space Complexity -- O(1)

class Solution2 {
	
	func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
		
		guard nums.count > 1 else { return [] }
		var hash = [Int:Int]()
		
		for i in 0..<nums.count {
			
			let currentDigit = nums[i]
			let diff = target - currentDigit
			
			if let savedIndex = hash[currentDigit] {
				return[savedIndex, i]
			}
			hash[diff] = i
		}
		return []
	}
}
Solution2().twoSum(input, target)
// Time Complexity -- O(n)
// Space Complexity -- O(n)
