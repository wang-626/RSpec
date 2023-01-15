class Candy1
  def initialize(list)
    p list.class
    if list.class != Array
      raise ArgumentError, "錯誤的型別"
    end
    @list = list
  end

  def test
   @list.min(2).sum
  end

end