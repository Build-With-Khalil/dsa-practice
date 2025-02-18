void main() {
  List<int> nums = [10, 1, 2, 1, 2];
  print(singleNumber(nums));
}

int singleNumber(List<int> nums) {
  int result = 0;
  for (int num in nums) {
    result ^= num;
  }
  return result;
}
