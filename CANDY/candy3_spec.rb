require "./candy3"
RSpec.describe Candy3 do
  describe "輸入值驗證" do
    it "非陣列輸入" do
      expect { Candy3.new(123) }.to raise_error(ArgumentError, "錯誤的型別")
    end
    it "陣列中沒有0" do
      expect { Candy3.new([]) }.to raise_error(ArgumentError, "陣列中缺少0")
    end
  end

  describe "功能測試：印出連續陣列裡缺少的字元" do
    it '一般測試:[false, 1, 0, -1, 2, 0, 1, 3, "a"]' do
      app = Candy3.new([false, 1, 0, -1, 2, 0, 1, 3, "a"])
      expect(app.calc()).to eq([false, 1, -1, 2, 1, 3, "a", 0, 0])
    end
    it '一般測試:["aaaa", 1, 0, -1, 2, 0, 1, 3, "a","0"]' do
      app = Candy3.new(["aaaa", 1, 0, -1, 2, 0, 1, 3, "a","0"])
      expect(app.calc()).to eq(["aaaa", 1, -1, 2, 1, 3, "a", "0", 0, 0])
    end
  end
end
