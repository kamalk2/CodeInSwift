// Statement:
/* Given a binary array, find the maximum number of consecutive 1s in this array.

Example 1:
Input: [1,1,0,1,1,1]
Output: 3
Explanation: The first two digits or the last three digits are consecutive 1s.
The maximum number of consecutive 1s is 3.

Note:
The input array will only contain 0 and 1.
The length of input array is a positive integer and will not exceed 10,000 */

import UIKit

class Solution {
	func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
		var max = 0
		var tempCount = 0
		for i in 0..<nums.count {
			
			if nums[i] == 1 {
				tempCount += 1
				if tempCount > max {
					max = tempCount
				}
			}
			else {
				tempCount = 0
			}
		}
		return max
	}
}

let input = [1,1,0,1,1,1,0,1,1,1,1,0,0,1]

Solution().findMaxConsecutiveOnes(input)

// Time Complexity -- O(n)
// Space Complexity -- O(1)
