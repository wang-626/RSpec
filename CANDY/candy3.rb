class Candy3
  def initialize(list)
    verify(list)
    @list = list
  end

  def calc
    count = 0
    @list.each do |v|
      if v == 0
        count += 1
      end
    end
    @list.delete(0)
    @list.fill(0,@list.length ,count) 
  end

  private

  def verify(list)
    if list.class != Array
      raise ArgumentError, "錯誤的型別"
    elsif !list.include?(0)
      raise ArgumentError, "陣列中缺少0"
    end
  end
end

# app = Candy3.new([false, 1, 0, -1, 2, 0, 1, 3, "a"])
# p app.calc()
