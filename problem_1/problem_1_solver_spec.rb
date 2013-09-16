require_relative "problem_1_solver"

describe "To find the sum of all the multiples of 3 or 5 below a number" do
  context "when I input 6" do
    it "should return 8" do
      expect(problem_1_solver(6)).to eq(8)
    end
  end

  context "when I input 10" do
    it "should return 23" do
      expect(problem_1_solver(10)).to eq(23)
    end
  end
end
