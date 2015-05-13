class AddMissingPostalCodeFieldToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :postal_code, :string
  end
end
