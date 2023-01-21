class Candy7
  def initialize(list)
    verify(list)
    @list = list
  end

  def calc
    @list.group_by { |v| v % 2 }.select { |key, value| value.length == 1 }.values[0][0]
  end

  private

  def verify(list)
    if list.class != Array
      raise ArgumentError, "錯誤的型別"
    elsif list.length < 3
      raise ArgumentError, "錯誤的陣列長度"
    end
  end
end
