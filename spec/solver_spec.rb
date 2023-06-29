require './solver'

describe Solver do
    describe "#solve" do # test for initialize class Solver
        it "returns 1 for 1" do
            solver = Solver.new
            expect(solver.solve(1)).to eql(1)
        end
    end
end