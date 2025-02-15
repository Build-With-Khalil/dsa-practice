import 'package:flutter/foundation.dart';

class ListNode {
  int value;
  ListNode? next;

  ListNode(this.value, [this.next]);
}

ListNode? reverseList(ListNode head) {
  ListNode? prev;
  ListNode? current = head;
  while (current != null) {
    ListNode? nextNode = current.next;
    current.next = prev;
    prev = current;
    current = nextNode;
  }
  return prev;
}

/// Helper function to convert linked list to list
List<int> linkedListToList(ListNode? head) {
  List<int> result = [];
  while (head != null) {
    result.add(head.value);
    head = head.next;
  }
  return result;
}

void main() {
  // Linked List Banani
  ListNode head = ListNode(
    1,
    ListNode(2, ListNode(3, ListNode(4, ListNode(5)))),
  );
  if (kDebugMode) {
    print("OrignalList: ${linkedListToList(head)}");
  }
  ListNode? reversedHead = reverseList(head);
  if (kDebugMode) {
    print("ReversedList: ${linkedListToList(reversedHead)}");
  }
}
