require 'arrays'

describe Array do
  let (:array) {[-1, 0, 2, -2, -2, 1]}
  describe "#uniq" do
    it "eliminates duplicates" do
        expect(array.my_uniq).to eq([-1, 0, 2, -2, 1])
    end
  end
  describe "#two_sum" do

    it "returns indices of pairs in ascending order" do #returns
      expect(array.two_sum).to eq([[0, 5], [2, 3], [2, 4]])
    end

    it "finds a single pair" do
      expect([-1,1].two_sum).to eq([[0,1]])
    end

    it "returns a empty array when no pairs found" do
      expect([1,2,3,4,5].two_sum).to eq([])
    end
  end

  describe "#my_transpose" do

    it "transposes a single array" do
      expect([[1,2,3]].my_transpose).to eq([[1], [2], [3]])
    end

    it "transposes multiple arrays" do
      expect([[1,2,3], [4,5,6]].my_transpose).to eq([[1,4], [2,5], [3,6]])
    end

    it "raises error for arrays of different lengths" do
      expect{[[1,2], [3,4,5]].my_transpose}.to raise_error
    end
  end

  describe '#stock_picker' do
    it "outputs the least fruitless pair of days" do
      expect([5,4,2,0].stock_picker).to eq([0,1])
    end

    it "returns the most profitable pair of days" do
      expect([1,2,3,4,5].stock_picker).to eq([0,4])
    end

    it "accounts for time loss of value" do
      expect([1,2,3,5,5].stock_picker).to eq([0,3])
    end

    it "returns [] when stock price array is empty" do
      expect([].stock_picker).to eq([])
    end
  end
end
