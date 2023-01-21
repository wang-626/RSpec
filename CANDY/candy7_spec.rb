require "./candy7"
RSpec.describe do
  describe "輸入值驗證" do
    it "非陣列輸入" do
      expect { Candy7.new("1") }.to raise_error(ArgumentError, "錯誤的型別")
    end
    it "非陣列長度小於3" do
      expect { Candy7.new([]) }.to raise_error(ArgumentError, "錯誤的陣列長度")
    end
  end
  describe "功能測試:在某個數字陣列裡，找出藏單獨的奇數或偶數" do
    it "測試[2, 4, 0, 100, 4, 11, 2602, 36]" do
      app = Candy7.new([2, 4, 0, 100, 4, 11, 2602, 36])
      expect(app.calc()).to eq(11)
    end
    it "測試[160, 3, 1719, 19, 11, 13, -21]" do
      app = Candy7.new([160, 3, 1719, 19, 11, 13, -21])
      expect(app.calc()).to eq(160)
    end
  end
end
