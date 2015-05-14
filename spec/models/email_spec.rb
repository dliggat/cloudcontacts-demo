require 'rails_helper'

describe Email, type: :model do
  let (:model) { described_class.new }
  let (:contact) { FactoryGirl.create :contact }

  it 'should validate address and contact presence' do
    expect(model.valid?).to eq(false)
    model.contact = contact
    expect(model.valid?).to eq(false)
    model.address = 'foo@foo.com'
    expect(model.valid?).to eq(true)
  end

  it 'should cascade delete' do
    model.update contact_id: contact.id, address: 'foo@foo.com'
    expect(model.valid?).to eq(true)
    expect(Email.count).to eq(1)
    contact.destroy
    expect(Email.count).to eq(0)
  end

end
