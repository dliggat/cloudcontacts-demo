require 'rails_helper'

describe Phone, type: :model do
  let (:model) { described_class.new }
  let (:contact) { FactoryGirl.create :contact }

  it 'should validate number and contact presence' do
    expect(model.valid?).to eq(false)
    model.contact = contact
    expect(model.valid?).to eq(false)
    model.number = '555-555-5555'
    expect(model.valid?).to eq(true)
  end

  it 'should cascade delete' do
    model.update contact_id: contact.id, number: '555-555-5555'
    expect(model.valid?).to eq(true)
    expect(Phone.count).to eq(1)
    contact.destroy
    expect(Phone.count).to eq(0)
  end

end
