#Change of original tree to accept a hash for initialization
class Tree
  attr_accessor :children, :node_name

  def initialize(tree)
    tree.each_pair{|name,children| @node_name = name, @children = children}

  end

  def visit_all(&block)
    visit &block
    children.each { |c| c.visit_all &block}
  end

  def visit(&block)
    block.call self
  end
end

hash_tree = {'Ole' =>
  {'Jakob' => {'Frode' => {}, 'Arne' => {} },
  'Louise' => {'Carla' => {}, 'Oskar' => {} }}}

ruby_tree = Tree.new(hash_tree)

puts "visiting a node"
ruby_tree.visit { |node| puts node.node_name}

puts "visiting entire tree"

ruby_tree.visit_all { |node| puts node.node_name}
