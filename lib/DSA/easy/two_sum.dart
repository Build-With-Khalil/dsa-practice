import 'package:flutter/foundation.dart';

void main() {
  List<int> nums = [2, 7, 11, 15];
  int target = 9;
  if (kDebugMode) {
    print(twoSum(nums, target));
  }
}
List<int> twoSum(List<int> nums, int target) {
  /// number or unke index store krna
  Map<int, int> numMap = {};
  for (int i = 0; i < nums.length; i++) {
    /// target se current number minus kro
    int complement = target - nums[i];
    /// check kro wo number ha k nahi
    if (numMap.containsKey(complement)) {
      /// Dono indices return karo
      return [numMap[complement]!,i];
    }
    numMap[nums[i]] = i;
  }

  return [];
}
