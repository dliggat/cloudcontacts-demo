require 'rails_helper'

describe QuestionOne do
  it 'should correctly generate FizzBuzz values' do
    # Store the output in an array for examination.
    output = []
    described_class.fizz_buzz(lower: 1, upper: 100) { |i| output << i }

    expect(output[0]).to     eq('1')
    expect(output[1]).to     eq('2')
    expect(output[2]).to     eq('Fizz')
    expect(output[3]).to     eq('4')
    expect(output[4]).to     eq('Buzz')
    expect(output[14]).to    eq('FizzBuzz')
    expect(output.length).to eq(100)
  end
end
