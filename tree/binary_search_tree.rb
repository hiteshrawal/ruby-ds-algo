class Node

  attr_accessor :value, :left_node, :right_node

  def initialize(value, left_node=nil, right_node=nil)
    @value = value
    @left_node = left_node
    @right_node = right_node
  end

end

class BinarySearchTree

  attr_accessor :root_node

  def initialize(value)
    @root_node = Node.new(value)
  end

  def insert(value)
    current_node = root_node

    while(!current_node.nil?)
      if value < current_node.value
        if current_node.left_node.nil?
          current_node.left_node = Node.new(value)
        else
          current_node = current_node.left_node  
        end
      elsif value > current_node.value
        if current_node.right_node.nil?
          current_node.right_node = Node.new(value)
        else
          current_node = current_node.right_node
        end
      else
        return current_node
      end
    end
  end

  def preorder(current_node = root_node)
    puts "#{current_node.value}"
    preorder(current_node.left_node) unless current_node.left_node.nil?
    preorder(current_node.right_node) unless current_node.right_node.nil?
  end

  def postorder(current_node = root_node)
    postorder(current_node.left_node) unless current_node.left_node.nil?
    postorder(current_node.right_node) unless current_node.right_node.nil?
    puts "#{current_node.value}"
  end

  def inorder(current_node = root_node)
    inorder(current_node.left_node) unless current_node.left_node.nil?
    puts "#{current_node.value}"
    inorder(current_node.right_node) unless current_node.right_node.nil?
  end  

end


# Example

bst = BinarySearchTree.new(10)
bst.insert(5)
bst.insert(4)
bst.insert(9)
bst.insert(13)
bst.insert(22)
bst.insert(8)
bst.insert(15)

puts "--PreOrder--"
bst.preorder

puts "--InOrder--"
bst.inorder

puts "--PostOrder--"
bst.postorder

