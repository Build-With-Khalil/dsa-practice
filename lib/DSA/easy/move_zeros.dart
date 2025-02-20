void main() {
  List<int> nums = [0, 1, 0, 3, 12,0,2];
  moveZeroes(nums);
  print(nums); // Output: [1, 3, 12, 0, 0]
}

void moveZeroes(List<int> nums) {
  int j = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      nums[j] = nums[i];
      j++;
    }
  }
  while (j < nums.length) {
    nums[j] = 0;
    j++;
  }
}

