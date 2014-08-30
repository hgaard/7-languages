#Change of original tree to accept a hash for initialization
class Tree
  attr_accessor :children, :node_name

  def initialize(name, children=[])
    @children = children
    @node_name = name
  end

  def visit_all(&block)
    visit &block
    children.each { |c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

hash_tree = {'grandpa' =>
  {'dad' => {'child 1' => {}, 'child 2' => {} },
  'uncle' => {'child 3' => {}, {'child 4' => {} }}}}

ruby_tree = Tree.new(hash_tree)

puts "visiting a node"
ruby_tree.visit { |node| puts node.node_name}

puts "visiting entire tree"

ruby_tree.visit_all { |node| puts node.node_name}
