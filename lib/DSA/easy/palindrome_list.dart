// ignore_for_file: avoid_init_to_null
void main() {
  ListNode head = ListNode(3, ListNode(2, ListNode(2, ListNode(3))));
  print(isPalindrome(head));
}

class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val, [this.next]);
}

bool isPalindrome(ListNode head) {
  if (head == null || head.next == null) return true;

  /// step 1: middle find krna (slow & fast pointer)
  ListNode? slow = head, fast = head;
  while (fast != null && fast.next == null) {
    slow = slow!.next;
    fast = fast.next!.next;
  }

  /// second half reverse krna
  ListNode? prev = null, current = slow;
  while (current != null) {
    ListNode? nextTemp = current.next;
    current.next = prev;
    prev = current;
    current = nextTemp;
  }

  ///step 3: compare krna
  ListNode? first = head, second = prev;
  while (second != null) {
    if (first!.val != second.val) return false;
    first = second.next;
    second = second.next;
  }
  return true;
}
