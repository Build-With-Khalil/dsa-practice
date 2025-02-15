bool isValid(String s) {
  List<String> stack = [];
  Map<String, String> bracketPairs = {
    ')': '(',
    '}': '{',
    ']': '[',
  };

  for (String char in s.split('')) {
    if (bracketPairs.containsValue(char)) {
      // If it's an opening bracket, push to stack
      stack.add(char);
    } else if (bracketPairs.containsKey(char)) {
      // If it's a closing bracket, check the top of the stack
      if (stack.isEmpty || stack.removeLast() != bracketPairs[char]) {
        return false;
      }
    }
  }

  return stack.isEmpty; // Stack should be empty if all brackets are balanced
}

void main() {
  print(isValid("()")); // true
  print(isValid("()[]{}")); // true
  print(isValid("(]")); // false
  print(isValid("([)]")); // false
  print(isValid("{[]}")); // true
}