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

  it 'should cascade deletions' do
    contact = FactoryGirl.create :contact_with_associations
    expect(contact.phones.count).to eq(3)
    expect(Phone.count).to eq(3)
    expect(contact.emails.count).to eq(2)
    expect(Email.count).to eq(2)
    contact.destroy
    expect(Phone.count).to eq(0)
    expect(Email.count).to eq(0)
  end

end
