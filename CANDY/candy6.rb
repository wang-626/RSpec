class Candy6
  def initialize(list)
    verify(list)
    @list = list
  end

  def calc
    @list.filter { |v| @list.one?(v) }.first
  end

  private

  def verify(list)
    if list.class != Array
      raise ArgumentError, "錯誤的型別"
    end
  end
end

p [1,1,1,2,2].uniq