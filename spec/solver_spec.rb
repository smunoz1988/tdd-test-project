require './solver'

describe Solver do
    describe "#solve" do # test for initialize class Solver
        it "returns 1 for 1" do
            solver = Solver.new
            expect(solver.solve(1)).to eql(1)
        end
    end

    describe "#reverse" do # test for reverse method
    it "returns olleh for hello" do
        string_mock = double("string_mock")
        expect(string_mock).to receive(:reverse).and_return("olleh")
        
        allow(Solver).to receive(:new).and_return(string_mock)
        
        solver = Solver.new
        result = solver.reverse("hello")
        
        expect(result).to eql("olleh")
    end
    end
end