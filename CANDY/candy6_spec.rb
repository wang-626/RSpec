require "./candy6"
RSpec.describe do
  describe "輸入值驗證" do
    it "非陣列輸入" do
      expect { Candy6.new("1") }.to raise_error(ArgumentError, "錯誤的型別")
    end
    describe "功能測試:找出在數字陣列裡跟其它元素不一樣的值" do
      it "測試[1, 1, 1, 1, 3, 1, 1, 1]" do
        app = Candy6.new([1, 1, 1, 1, 3, 1, 1, 1])
        expect(app.calc()).to eq(3)
      end
      it "測試[2, 2, 2, 4, 2, 2]" do
        app = Candy6.new([2, 2, 2, 4, 2, 2])
        expect(app.calc()).to eq(4)
      end
    end
  end
end
