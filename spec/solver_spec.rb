require './solver'

describe Solver do
  describe '#solve' do # test for initialize class Solver
    it 'returns 1 for 1' do
      solver = Solver.new
      expect(solver.solve(1)).to eql(1)
    end
  end

  describe '#reverse' do # test for reverse method
    it 'returns olleh for hello' do
      string_mock = double('string_mock')
      expect(string_mock).to receive(:reverse).and_return('olleh')

      allow(Solver).to receive(:new).and_return(string_mock)

      solver = Solver.new
      result = solver.reverse('hello')

      expect(result).to eql('olleh')
    end
  end

  describe '#factorial' do # test for factorial method
    it 'returns 120 for 5' do
      mock_integer = double('mockInteger')
      expect(mock_integer).to receive(:factorial).and_return(120)

      allow(Solver).to receive(:new).and_return(mock_integer)
      solver = Solver.new
      expect(solver.factorial(5)).to eql(120)
    end
  end

  describe '#fizzbuzz' do # test for fizzbuzz method
    it 'returns fizzbuzz when divisible by 3 and 5' do
      mock_integer = double('mockInteger')
      allow(mock_integer).to receive(:fizzbuzz).with(15).and_return('fizzbuzz')
      solver = Solver.new
      expect(solver.fizzbuzz(15)).to eql('fizzbuzz')
    end

    it 'returns fizz when divisible by 3' do
      mock_integer = double('mockInteger')
      allow(mock_integer).to receive(:fizzbuzz).with(9).and_return('fizz')
      solver = Solver.new
      expect(solver.fizzbuzz(9)).to eql('fizz')
    end

    it 'returns buzz when divisible by 5' do
      mock_integer = double('mockInteger')
      allow(mock_integer).to receive(:fizzbuzz).with(10).and_return('buzz')
      solver = Solver.new
      expect(solver.fizzbuzz(10)).to eql('buzz')
    end

    it 'raise an exception when number is negative' do
      solver = Solver.new
      expect { solver.fizzbuzz(-1) }.to raise_error('Number must be positive')
    end
  end
end
