class Candy5
  def initialize(number)
    verify(number)
    @number = number
  end

  def calc
    @number.digits.map { |v| v.to_i ** 2 }.reverse.join.to_i
  end

  private

  def verify(number)
    if number.class != Integer
      raise ArgumentError, "錯誤的型別"
    end
  end
end
