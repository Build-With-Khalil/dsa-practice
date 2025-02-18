void main() {
  ListNode list1 = ListNode(1, ListNode(2, ListNode(3)));
  ListNode list2 = ListNode(4, ListNode(5, ListNode(6)));
  ListNode? mergedList = mergeTwoLists(list1, list2);
  printList(mergedList);
}

class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val, [this.next]);
}

ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
  ListNode dummy = ListNode(0);
  ListNode tail = dummy;
  while (list1 != null && list2 != null) {
    if (list1.val < list2.val) {
      tail.next = list1;
      list1 = list1.next;
    } else {
      tail.next = list2;
      list2 = list2.next;
    }
    tail = tail.next!;
  }
  tail.next = list1 ?? list2;

  return dummy.next;
}

void printList(ListNode? head) {
  while (head != null) {
    print(head.val);
    head = head.next;
  }
}
