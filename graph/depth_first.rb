class Vertex

  attr_accessor :name, :neighbors, :weights

  def initialize(name)
    @name = name
    @neighbors = []
    @weights = []
  end

end

class Graph

  attr_accessor :vertices

  def initialize
    @vertices = []
  end

  def add_vertex(name)
    vertices << Vertex.new(name)
  end

  def find_vertex_by_name(name)
    vertices.each do |vertex|
      return vertex if vertex.name == name
    end
  end

  def add_edge(start_point, end_point, weight=nil, undirected = true)
    from = vertices.index{|v| v.name == start_point}
    to = vertices.index{|v| v.name == end_point}

    vertices[from].neighbors[to] = true
    vertices[from].weights[to] = weight unless weight.nil?

    if undirected
      vertices[to].neighbors[from] = true
      vertices[to].weights[from] = weight unless weight.nil?
    end
  end

  def display
    vertices.each do |vertex|
      row = []
      vertex.neighbors.each do |n|
        if n
          row << vertex.name
        else
          row << '0'
        end
      end
      puts row.join('-')
    end
  end

end


# Example
g = Graph.new
g.add_vertex('X')
g.add_vertex('Y')
g.add_vertex('Z')

g.add_edge('X', 'Y', 105)
g.add_edge('X', 'Z', 112)
g.add_edge('Y', 'Z', 100)


