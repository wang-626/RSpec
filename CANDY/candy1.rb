class Candy1
  def initialize(list)
    verify(list)
    @list = list
  end

  def calc
    if @list.select { |i| i == @list.min }.length > 1
      @list.min * 2
    else
      @list.min(2).sum
    end
  end

  private

  def verify(list)
    if list.class != Array
      raise ArgumentError, "錯誤的型別"
    elsif list.length < 2
      raise ArgumentError, "陣列長度，不符合規定值"
    elsif !list.all? { |v| v.is_a?(Integer) }
      raise ArgumentError, "陣列中含有錯誤型別變數"
    end
  end
end
