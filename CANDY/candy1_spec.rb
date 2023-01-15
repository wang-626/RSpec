require "./candy1"
RSpec.describe Candy1 do
  describe "輸入值驗證" do
    it "非陣列輸入" do
      expect { Candy1.new(123) }.to raise_error(ArgumentError, "錯誤的型別")
    end

    it "陣列中長度小於2" do
      expect { Candy1.new([]) }.to raise_error(ArgumentError, "陣列長度，不符合規定值")
    end

    it "陣列中有非數字變數" do
      expect { Candy1.new([1, 2, 3, "aa"]) }.to raise_error(ArgumentError, "陣列中含有錯誤型別變數")
    end
  end

  describe "功能測試：找出陣列最小的兩個值總和" do
    it "一般測試:[15,28,4,2,43]" do
      app = Candy1.new([15, 28, 4, 2, 43])
      expect(app.calc()).to be 6
    end

    it "相同數字測試:[2,2,3,4]" do
      app = Candy1.new([2,2,3,4])
      expect(app.calc()).to be 4
    end
  end
end
