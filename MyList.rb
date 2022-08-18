class MyList
  # include MyEnumerable
  def initialize(*list)
    @list = list
  end
  def size
    @list.length
  end
  def first
    @list.first
  end
  def last
    @list.last
  end
end

list = MyList.new(1, 2, 3,4)
p list.size
p list.first
p list.last
