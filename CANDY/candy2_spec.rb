require "./candy2"
RSpec.describe Candy2 do
  describe "輸入值驗證" do
    it "非陣列輸入" do
      expect { Candy2.new(123) }.to raise_error(ArgumentError, "錯誤的型別")
    end

    it "陣列中長度小於3" do
      expect { Candy2.new(["a", "b"]) }.to raise_error(ArgumentError, "陣列長度，不符合規定值")
    end

    it "陣列中有非字串變數" do
      expect { Candy2.new([1, 2, 3, "aa"]) }.to raise_error(ArgumentError, "陣列中含有錯誤型別變數")
    end
  end

  describe "功能測試：印出連續陣列裡缺少的字元" do
    it '一般測試:["a", "b", "c", "d", "f", "g"]' do
      app = Candy2.new(["a", "b", "c", "d", "f", "g"])
      expect(app.calc()).to eq("e")
    end
  end
end
