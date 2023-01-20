require "./candy5"
RSpec.describe Candy5 do
  describe "輸入值驗證" do
    it "非數字輸入" do
      expect { Candy5.new("1") }.to raise_error(ArgumentError, "錯誤的型別")
    end
  end
  describe "功能測試把數字的每個位數平方之後組合在一起" do
    it "測試3212" do
      app = Candy5.new(3212)
      expect(app.calc()).to eq(9414)
    end
    it "測試387" do
      app = Candy5.new(387)
      expect(app.calc()).to eq(96449)
    end
  end
end
