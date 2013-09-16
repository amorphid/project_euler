require_relative "problem_1_solver"


describe "problem_1_solver" do
  context "with an input of 10" do
    it "should return 23" do
      expect(problem_1_solver(10)).to eq(23)
    end
  end
end
