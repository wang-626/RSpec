require "./candy4"
RSpec.describe Candy4 do
  describe "輸入值驗證" do
    it "非數字輸入" do
      expect { Candy4.new([]) }.to raise_error(ArgumentError, "錯誤的型別")
    end
    it "小於0" do
      expect { Candy4.new(-1) }.to raise_error(ArgumentError, "錯誤的數字大小")
    end
    it "大於359999" do
      expect { Candy4.new(360000) }.to raise_error(ArgumentError, "錯誤的數字大小")
    end
  end

  describe "功能測試：把傳進去的秒數轉換成hh:mm:ss" do
    it '一般測試秒:0' do
      app = Candy4.new(0)
      expect(app.calc()).to eq("00:00:00")
    end
    it '一般測試:60' do
      app = Candy4.new(60)
      expect(app.calc()).to eq("00:01:00")
    end
    it '一般測試:359999' do
      app = Candy4.new(359999)
      expect(app.calc()).to eq("99:59:59")
    end
  end
end
