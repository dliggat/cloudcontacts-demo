require 'rails_helper'

describe Contact, type: :model do
  let (:model) { described_class.new }

  it 'should validate first and last name presence' do
    expect(model.valid?).to eq(false)
    model.first_name = 'Joe'
    expect(model.valid?).to eq(false)
    model.last_name = 'Bloggs'
    expect(model.valid?).to eq(true)
  end

end
