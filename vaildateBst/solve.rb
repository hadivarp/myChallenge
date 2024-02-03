class TreeNode
  attr_accessor :value, :left, :right

  # Constructor method for creating a new TreeNode instance with optional initial values.
  def initialize(value = 0, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end

  # Method to check if a binary tree rooted at the given node is a valid BST.
  # It enforces the BST property: left child values <= node value < right child values.
  def is_valid(node, min = -Float::INFINITY, max = Float::INFINITY)

    # Base case: an empty tree is a valid BST.
    return true if node.nil?

    # Check if the current node's value violates the BST property.
    return false if node.value <= min || node.value >= max

    # Recursively check the left and right subtrees.
    left_valid = is_valid(node.left, min, node.value)
    right_valid = is_valid(node.right, node.value, max)

    # Return true if both left and right subtrees are valid.
    return left_valid && right_valid
  end
end

# Example usage:
root = TreeNode.new(2)
root.left = TreeNode.new(1)
root.right = TreeNode.new(3)

# Check if the binary tree rooted at 'root' is a valid BST.
result = root.is_valid(root)
puts result