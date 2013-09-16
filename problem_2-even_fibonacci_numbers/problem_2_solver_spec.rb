require_relative "problem_2_solver"

describe "fibonacci_sequence" do
  context "with an input of 10" do
    it "should return [1, 2, 3, 5, 8]" do
      expect(fibonacci_sequence(10)).to eq([1, 2, 3, 5,8])
    end
  end
end

describe "problem_2_solver" do
  context "with an input if 10" do
    it "should return 10" do
      expect(problem_2_solver(10)).to eq(10)
    end
  end
end
