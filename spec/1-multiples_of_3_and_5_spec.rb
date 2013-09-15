require "1-multiples_of_3_and_5"

describe AddMultiplesOf3And5 do
  context "#multiples" do
    let(:adder) { AddMultiplesOf3And5.new }

    it "returns [3, 5] for input 1 through 5" do
      multiples = adder.multiples(1.upto(5).to_a)
      expect(multiples).to eq([3, 5])
    end

    it "returns [3, 5, 6, 9, 10] for input 1 through 5" do
      multiples = adder.multiples(1.upto(10))
      expect(multiples).to eq([3,5,6,9,10])
    end
  end

  context "#range" do
    let(:adder) { AddMultiplesOf3And5.new }

    it "returns [1,2,3] for input 3" do
      range = adder.range(3)
      expect(range).to eq([1, 2, 3])
    end

    it "returns [1,2,3,4,5,6] for input 6" do
      range = adder.range(6)
      expect(range).to eq([1, 2, 3, 4, 5, 6])
    end
  end

  context "#results" do
    it "equals sum of all multiples up to 3 and 5 up to 999 (aka below 1000)" do
      adder     = AddMultiplesOf3And5.new
      range     = adder.range(999)
      multiples = adder.multiples(range)
      sum       = adder.sum(multiples)
      expect(AddMultiplesOf3And5.new(999).results).to eq (sum)
    end
  end

  context "#sum" do
    let(:adder) { adder = AddMultiplesOf3And5.new }

    it "returns 0 for empty_array" do
      results = adder.sum([])
      expect(results).to eq(0)
    end

    it "returns 8 for [3, 5]" do
      results = adder.sum([3, 5])
      expect(results).to eq(8)
    end

    it "returns 33 for [3, 5, 6, 9, 10]" do
      results = adder.sum([3, 5, 6, 9, 10])
      expect(results).to eq(33)
    end
  end
end

