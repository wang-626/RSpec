require "./candy1"
RSpec.describe Candy1 do
  describe "輸入值驗證" do
    it "非陣列輸入" do
      expect{ Candy1.new(123) }.to raise_error(ArgumentError,"錯誤的型別")
    end
  end

  describe "功能測試：找出陣列最小的兩個值總和" do
    it "一般測試:[15,28,4,2,43]" do
      app = Candy1.new([15, 28, 4, 2, 43])
      expect(app.test()).to be 6
    end
  end
end
