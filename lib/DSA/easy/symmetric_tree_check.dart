void main() {
  // Example 1: Symmetric Tree
  TreeNode root1 = TreeNode(1,
      TreeNode(2, TreeNode(3), TreeNode(4)),
      TreeNode(2, TreeNode(4), TreeNode(3)));

  print("Tree Structure:");
  printTree(root1);
  print("\nIs the tree symmetric? ${isSymmetric(root1)}\n");

  // Example 2: Asymmetric Tree
  TreeNode root2 = TreeNode(1,
      TreeNode(2, null, TreeNode(3)),
      TreeNode(2, null, TreeNode(3)));

  print("Tree Structure:");
  printTree(root2);
  print("\nIs the tree symmetric? ${isSymmetric(root2)}");
}

class TreeNode {
  int val;
  TreeNode? right;
  TreeNode? left;
  TreeNode(this.val, [this.left, this.right]);
}

bool isSymmetric(TreeNode root) {
  if (root == null) return true;
  return isMirror(root.left, root.right);
}

bool isMirror(TreeNode? t1, TreeNode? t2) {
  if (t1 == null && t2 == null) return true;
  if (t1 == null || t2 == null) return false;
  return (t1.val == t2.val) &&
      isMirror(t1.left, t2.right) &&
      isMirror(t1.right, t2.left);
}
// Function to print the tree structure
void printTree(TreeNode? root, [String prefix = "", bool isLeft = true]) {
  if (root == null) return;
  print(prefix + (isLeft ? "├── " : "└── ") + root.val.toString());
  printTree(root.left, prefix + (isLeft ? "│   " : "    "), true);
  printTree(root.right, prefix + (isLeft ? "│   " : "    "), false);
}
