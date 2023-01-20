class Candy4
  def initialize(seconds)
    verify(seconds)
    @seconds = seconds
  end

  def calc
    h = "%02d" % (@seconds / 3600)
    @seconds = @seconds % 3600
    m = "%02d" % (@seconds / 60)
    s = "%02d" % (@seconds % 60)
    "#{h}:#{m}:#{s}"
  end

  private

  def verify(seconds)
    if seconds.class != Integer
      raise ArgumentError, "錯誤的型別"
    elsif !(0..359999).include?(seconds)
      raise ArgumentError, "錯誤的數字大小"
    end
  end
end

# app = Candy4.new(60)
# p app.calc()
