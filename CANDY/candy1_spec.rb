require "./candy1"
RSpec.describe Candy1 do
  describe "找出陣列最小的兩個值總和" do
    it "一般測試:[15,28,4,2,43]" do
      app = Candy1.new([15, 28, 4, 2, 43])
      expect(app.test()).to be 6
    end
  end
end
