require_relative('MyEnumerable')

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end
  def each(&block)
    @list.each { |a| block.call(a) }
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

list = MyList.new(1, 2, 3, 4)
p list.size
p list.first
p list.last
p list.all? {|e| e < 5}
p list.all? {|e| e > 5}
p list.any? {|e| e == 2}
p list.any? {|e| e == 5}
p list.filter {|e| e.even?}
