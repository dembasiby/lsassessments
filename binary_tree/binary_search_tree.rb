class Bst
  attr_accessor :left, :right
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def insert(d)
    case data <=> d
    when 1 then self.left = Bst.new(d)
    when -1 then self.right = Bst.new(d)
    when 0 then raise "this value is already present"
    end
  end
end
