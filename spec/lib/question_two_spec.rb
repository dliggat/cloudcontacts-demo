require 'rails_helper'

describe QuestionTwo do
  it 'should correctly sort the provided example' do
    example  = { abc: 'hello', 'another_key' => 123, 4567 => 'third' }
    expected = %w[ abc 4567 another_key ]
    expect(described_class.sorted_keys(example)).to eq(expected)
  end

  it 'should stable sort identically sized keys' do
    # Relies on 1.9.3+ Ruby hashes preserving insertion order.
    example        = { }
    example[:abc]  = 'hello'
    example['def'] = 123
    example[456]   = 'third'
    expected       =  %w[ abc def 456 ]
    expect(described_class.sorted_keys(example)).to eq(expected)
  end

  it 'should handle an empty hash' do
    example  = {}
    expected = []
    expect(described_class.sorted_keys(example)).to eq(expected)
  end

  it 'should raise ArgumentError on inappropriate input' do
    example = nil
    expect { described_class.sorted_keys(example) }.to raise_error(ArgumentError)

    example = 'not a hash'
    expect { described_class.sorted_keys(example) }.to raise_error(ArgumentError)
  end
end
