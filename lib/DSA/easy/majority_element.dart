void main() {
  List<int> nums = [2,1,2,1,2,1,2,2,1,1,1,1,2,2,2,2,2];
  print(majorityElement(nums));
}

int majorityElement(List<int> nums) {
  int candidate = 0, count = 0;
  for (int num in nums) {
    if (count == 0) {
      candidate = num;
    }
    count += (num == candidate) ? 1 : -1;
  }
  return candidate;
}
