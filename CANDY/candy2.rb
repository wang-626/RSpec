class Candy2
  def initialize(list)
    verify(list)
    @list = list
  end

  def calc
    ((@list.first..@list.last).to_a - @list).join("")
  end

  private

  def verify(list)
    if list.class != Array
      raise ArgumentError, "錯誤的型別"
    elsif list.length < 3
      raise ArgumentError, "陣列長度，不符合規定值"
    elsif !list.all? { |v| v.is_a?(String) }
      raise ArgumentError, "陣列中含有錯誤型別變數"
    end
  end
end

app = Candy2.new(["a", "b", "c", "d", "f", "g"])
p app.calc()
