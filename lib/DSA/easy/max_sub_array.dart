import 'package:flutter/foundation.dart';

void main() {
  List<int> nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4];
  if (kDebugMode) {
    print(maxSubArray(nums));
  }
}
// 
int maxSubArray(List<int> nums) {
  int maxSum = nums[0];
  int currentSum = nums[0];
  for (int i = 1; i < nums.length; i++) {
    currentSum = (nums[i] > currentSum + nums[i]) ? nums[i] : currentSum + nums[i];
    maxSum = (maxSum > currentSum) ? maxSum : currentSum;
  }
  return maxSum;
}
