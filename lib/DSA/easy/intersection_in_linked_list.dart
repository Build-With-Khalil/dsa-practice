void main() {
  /// creating the intersection list node
  ListNode intersection = ListNode(8, ListNode(4, ListNode(5)));

  /// creating two linked List
  ListNode listA = ListNode(4, ListNode(1, intersection));
  ListNode listB = ListNode(5, ListNode(0, ListNode(1, intersection)));
  ListNode? result = getIntersectionNode(listA, listB);
  if (result != null) {
    print("Intersected at ${result.val}");
  } else {
    print("No Intersection");
  }
}

class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val, [this.next]);
}

ListNode? getIntersectionNode(ListNode? headA, ListNode? headB) {
  int getLength(ListNode? head) {
    int length = 0;
    while (head != null) {
      length++;
      head = head.next;
    }
    return length;
  }

  int lenA = getLength(headA);
  int lenB = getLength(headB);
  // Adjust the longer list to start from the same level as the shorter one
  while (lenA > lenB) {
    headA = headA!.next;
    lenA--;
  }
  while (lenB > lenA) {
    headB = headB!.next;
    lenB--;
  }
  while (headA != headB) {
    headA = headA!.next;
    headB = headB!.next;
  }
  return headA;
}
