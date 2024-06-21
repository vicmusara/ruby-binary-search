# frozen_string_literal: true

def main
  # Create a binary search tree from an array of random numbers
  tree = BinaryTree.new(Array.new(15) { rand(1..100) })

  # Confirm that the tree is balanced by calling #balanced?
  puts "Tree balanced? #{tree.balanced?}"

  # Print out all elements in level, pre, post, and in order
  puts "Level order: #{tree.level_order.inspect}"
  puts "Preorder: #{tree.preorder.inspect}"
  puts "Postorder: #{tree.postorder.inspect}"
  puts "Inorder: #{tree.inorder.inspect}"

  # Unbalance the tree by adding several numbers > 100
  [101, 102, 103, 104, 105].each { |n| tree.insert(n) }

  # Confirm that the tree is unbalanced by calling #balanced?
  puts "Tree balanced after inserting >100? #{tree.balanced?}"

  # Balance the tree by calling #rebalance
  tree.rebalance

  # Confirm that the tree is balanced by calling #balanced?
  puts "Tree balanced after rebalancing? #{tree.balanced?}"

  # Print out all elements in level, pre, post, and in order
  puts "Level order after rebalancing: #{tree.level_order.inspect}"
  puts "Preorder after rebalancing: #{tree.preorder.inspect}"
  puts "Postorder after rebalancing: #{tree.postorder.inspect}"
  puts "Inorder after rebalancing: #{tree.inorder.inspect}"
end

main
